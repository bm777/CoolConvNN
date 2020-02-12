//
// Created by vmachado on 2/11/20.
//

#include "Layer.h"

Layer::Layer(int inputDimension, int outputDimension) {

    this->inputDimension = inputDimension;
    this->outputDimension = outputDimension;
    weights = new Matrix(inputDimension, outputDimension);
    gamma = new Matrix(1, outputDimension);
    beta = new Matrix(1, outputDimension);
    runningMean = new Matrix(1, outputDimension);
    runningVariance = new Matrix(1, outputDimension);
    weights->randomize();

    for (int j = 0; j < outputDimension; j++) {
        gamma->data[j] = 1.;
    }
}

Layer::Layer(int inputDimension, int outputDimension, double *weights, double *gamma, double *beta,
            double *runningMean, double *runningVariance) {

    this->inputDimension = inputDimension;
    this->outputDimension = outputDimension;
    this->weights = new Matrix(inputDimension, outputDimension);
    this->gamma = new Matrix(1, outputDimension);
    this->beta = new Matrix(1, outputDimension);
    this->runningMean = new Matrix(1, outputDimension);
    this->runningVariance = new Matrix(1, outputDimension);

    memcpy(this->weights->data, weights, sizeof(double) * inputDimension * outputDimension);
    memcpy(this->gamma->data, gamma, sizeof(double) * outputDimension);
    memcpy(this->beta->data, beta, sizeof(double) * outputDimension);
    memcpy(this->runningMean->data, runningMean, sizeof(double) * outputDimension);
    memcpy(this->runningVariance->data, runningVariance, sizeof(double) * outputDimension);

}

Layer::~Layer() {
    delete[] weights;
    delete[] output;
    delete[] outputNormalized;
    delete[] gamma;
    delete[] beta;
    delete[] runningMean;
    delete[] runningVariance;
    delete[] deviationInv;
}

double Layer::ReLU(double x){
    return x > 0 ? x : 0;
}

void Layer::validationOutput() {

    auto *outputCentered = output->centralized(runningMean);
    deviationInv = Matrix::invDeviation(runningVariance, outputDimension);
    outputNormalized = outputCentered->hadamard(deviationInv);
    output = outputNormalized->hadamard(gamma, beta);

}

void Layer::updateRunningStatus(Matrix *mean, Matrix *variance) {

    int length = outputDimension;
    double momentum = 0.9;

    for (int i = 0; i < length; i++) {
        runningMean->data[i] = (momentum * runningMean->data[i]) + (1 - momentum) * mean->data[i];
        runningVariance->data[i] = (momentum * runningVariance->data[i]) + (1 - momentum) * variance->data[i];
    }

}

void Layer::trainingOutput() {

    output->calcMean();
    output->calcVariance(); // do i should use centered output or untouched for variance calc
    Matrix *outputCentered = output->centralized();

    updateRunningStatus(output->mean, output->variance);

    delete deviationInv;
    deviationInv = Matrix::invDeviation(output->variance, outputDimension);
    delete outputNormalized;
    outputNormalized = outputCentered->hadamard(deviationInv);
    delete output;
    output = outputNormalized->hadamard(gamma, beta);
    delete outputCentered;
}

void Layer::feedForward(Matrix *input, bool hidden, bool validation){

    delete output;
    output = input->multiply(weights);

    if (hidden) {

        int len = output->rows * output->columns;

        for (int i = 0; i < len; i++) {
            output->data[i] = ReLU(output->data[i]);
        }

        if (validation) {
            validationOutput();
        }
        else {
            trainingOutput();
        }
    }
}

void Layer::updateWeights(Matrix *dWeights, double learningRate){

    if(frozen)
        return;

    Matrix *newWeights = weights->sum(dWeights, (-1) * learningRate);
    memcpy(weights->data, newWeights->data, sizeof(double) * inputDimension * outputDimension);
    delete newWeights;

}

void Layer::updateGammaBeta(Matrix *dGamma, Matrix *dBeta, double learningRate) {

    if(frozen)
        return;

    assert(dGamma->rows == 1 && dBeta->rows == 1);
    assert ((gamma->columns == dGamma->columns ) && (beta->columns  == dBeta->columns));

    for (int i = 0; i < dGamma->columns; i++) {
        gamma->data[i] -= learningRate * dGamma->data[i];
        beta->data[i] -= learningRate * dBeta->data[i];
    }
}

Matrix* Layer::getOutput() {
    auto *R = new Matrix(output->rows, output->columns);
    memcpy(R->data, this->output->data, sizeof(double) * output->rows * outputDimension);
    return R;
}

Matrix* Layer::getWeights() {
    auto *R = new Matrix(inputDimension, outputDimension);
    memcpy(R->data, this->weights->data, sizeof(double) * inputDimension * outputDimension);
    return R;
}

Matrix* Layer::getDeviationInv() {
    auto *R = new Matrix(1, outputDimension);
    memcpy(R->data, this->deviationInv->data, sizeof(double) * outputDimension);
    return R;
}

Matrix* Layer::getOutputNormalized() {
    auto *R = new Matrix(output->rows, output->columns);
    memcpy(R->data, this->outputNormalized->data, sizeof(double) * output->rows * outputDimension);
    return R;
}

Matrix* Layer::getGamma() {
    auto *R = new Matrix(1, outputDimension);
    memcpy(R->data, this->gamma->data, sizeof(double) * outputDimension);
    return R;
}

Matrix* Layer::getBeta() {
    auto *R = new Matrix(1, outputDimension);
    memcpy(R->data, this->beta->data, sizeof(double) * outputDimension);
    return R;
}

Matrix* Layer::getRunningMean() {
    auto *R = new Matrix(1, outputDimension);
    memcpy(R->data, this->runningMean->data, sizeof(double) * outputDimension);
    return R;
}

Matrix* Layer::getRunningVariance() {
    auto *R = new Matrix(1, outputDimension);
    memcpy(R->data, this->runningVariance->data, sizeof(double) * outputDimension);
    return R;
}

void Layer::setFrozen(bool value){
    this->frozen = value;
}
