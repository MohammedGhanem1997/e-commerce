<!DOCTYPE html>
<html lang="ar" dir="ltr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <meta name="author" content="   ">
    <link href="https:\\fonts.googleapis.com\css2?family=Cairo:wght@600&display=swap" rel="stylesheet">
    <title></title>
        <!-- Start CSS -->
    <link href="{{ asset('css\bootstrap.min.css') }}" rel="stylesheet" >

    <link href="{{asset('css/photobox.css')}}" rel='stylesheet' type='text/css'>


    <link href="{{ asset('css\admin\admin.css') }}"  rel="stylesheet" >
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">

    <link href="https://cdn.rawgit.com/harvesthq/chosen/gh-pages/chosen.min.css" rel="stylesheet"/>

        <!-- End Css -->

</head>
<body>
<div id="app">

@if(session()->has('message'))
    <div class="alert alert-success">
        {{ session()->get('message') }}
    </div>
@endif
