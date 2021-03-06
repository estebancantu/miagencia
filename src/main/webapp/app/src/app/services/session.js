var session = angular.module('Session', ['ngResource', 'ngBoilerplate']);


session.service('Session', function () {

    this.create = function (data) {
        this.id = data.id;
        this.username = data.username;
        this.dealershipName = data.dealershipName;
        this.email = data.email;
    };

    this.invalidate = function () {
        this.id = null;
        this.username = null;
        this.dealershipName = null;
        this.email = null;
    };

    return this;
});