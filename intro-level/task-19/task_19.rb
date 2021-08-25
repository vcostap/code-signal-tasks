def areEquallyStrong(yourLeft, yourRight, friendsLeft, friendsRight)
    me = [yourLeft, yourRight]
    friend = [friendsLeft, friendsRight]
    
    me_minmax = me.minmax
    friend_minmax = friend.minmax
    
    me_minmax[0] == friend_minmax [0] and me_minmax[1] == friend_minmax [1] ? true : false
end