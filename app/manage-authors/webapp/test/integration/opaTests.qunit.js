sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/manageauthors/test/integration/FirstJourney',
		'ns/manageauthors/test/integration/pages/AuthorsList',
		'ns/manageauthors/test/integration/pages/AuthorsObjectPage'
    ],
    function(JourneyRunner, opaJourney, AuthorsList, AuthorsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/manageauthors') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheAuthorsList: AuthorsList,
					onTheAuthorsObjectPage: AuthorsObjectPage
                }
            },
            opaJourney.run
        );
    }
);