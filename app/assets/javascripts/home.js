//  Place all the behaviors and hooks related to the matching controller here.
//  All this logic will automatically be available in application.js.
$(document).on('ready', function() {
    $('#profile-btn').on('click', function() {
        $('#sticky-footer').toggleClass('opened collapsed');
        $('#settings-banner').toggleClass('hidden');
        $('#settings-content').toggleClass('hidden');
    });
});
