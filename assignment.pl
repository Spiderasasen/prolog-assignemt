%Four couples in all
%Attended a costume ball.
%The lady dressed as a cat
%Arrived with her husband Matt.
%Just two couples were already there,
%One man dressed like a bear.
%First to arrive wasn't Vince,
%But he got there before the Prince.
%The witch (not Sue) is married to Chuck,
%Who was dressed as Donald Duck.
%Mary came in after Lou, 
%Both were there before Sue.
%The Piratess arrived before Ann,
%Neither is wed to Batman.
%If Snow White arrived after Tess,
%Then how was each couple dressed?

puzzel_3(X) :- X = [[couple1, Wife1, Husband1, Wcus1, Hcus1],
                     [couple2, Wife2, Husband2, Wcus2, Hcus2],
                     [couple3, Wife3, Husband3, Wcus3, Hcus3],
                     [couple4, Wife4, Husband4, Wcus4, Hcus4]],
    
%asigning the names and customes to each memeber
    
    %wives
    permutation([mary, sue, ann, tess], [Wife1, Wife2, Wife3, Wife4]),
    
    %husbands
    permutation([matt, vince, chuck, lou], [Husband1, Husband2, Husband3, Husband4]),
    
    %womens customes
    permutation([cat, witch, piratess, snowwhite], [Wcus1, Wcus2, Wcus3, Wcus4]),
    
    %mens customes
    permutation([bear, prince, batman, donaldduck], [Hcus1, Hcus2, Hcus3, Hcus4]),
    
    %1 couple. wife is dressed like a cat and husband is matt
    member([_, _, matt, cat, _], X),
    
    %a man was dressed as a bear
    member([_, _, _, _, bear], X),
    
    %a man was dressed as a prince, the prince is not vince
    vince \= prince,
    member([_, _, _, _, prince], X),
    
    %a witch is not sue is married to chuck
    sue \= witch,
    member([_, _, chuck, witch, donaldduck], X),
    
    %mary came in after lou, so they arnt married
    member([_, mary, _, _, _], X),
    member([_, _, lou, _, _], X),
    
    %both mary and lou came before sue
    member([_, sue, _, _, _], X),
    sue \= lou,
    
    %ann is not a piratess
    ann \= piratess,
    
    %no one is married with batman. from right now
    member([_, tess, _, _, batman], X),
    
    %tess is not snowwhite
    tess \= snowwhite.
