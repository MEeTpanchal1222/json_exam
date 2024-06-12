class datamodal{
   Posts?  posts;
   Total?  total;
   Skip?  skip;
   Limit?  limit;

   datamodal({this.posts, this.total, this.skip, this.limit});
   factory datamodal.fromJson(Map json){
     return datamodal(
       limit: json['limit']!= null?Limit.fromJson(json['limit']):null,
       posts: json['posts'] != null?Posts.fromJson( json['posts'],):null,
       skip: json['skip']!= null?Skip.fromJson(json['skip']):null,
       total: json['total']!=null?Total.fromJson(json['total']):null,
     );
   }
}


class Posts {
  String? title,body;
  int? id,view,userid;
  List<String>? tags;
  Reactions  reactions;

  Posts({this.title, this.body, this.id, this.view, this.userid, this.tags,required this.reactions});
  factory Posts.fromJson(Map json){
    return Posts(
      reactions: Reactions.fromJson(json['reactions']),
      body: json['body'],
      id: json['id'],
      tags: json['tags'],
      title: json['title'],
      userid: json['userid'],
      view: json['view'],
    );
  }
}



class Reactions {
  int? dislikes,likes;

  Reactions({this.dislikes, this.likes});
  factory Reactions.fromJson(Map json){
    return Reactions(
      dislikes: json['dislikes'],
      likes: json['likes'],

    );
  }
}

class Limit {
  int?limit;

  Limit({this.limit});
  factory Limit.fromJson(Map json){
    return Limit(
      limit: json['limit']
    );
  }
}

class Skip {
  int?skip;

  Skip({this.skip});

  factory Skip.fromJson(Map json){
    return Skip(
        skip: json['skip']
    );
  }
}

class Total {
  int? total;

  Total({this.total});

  factory Total.fromJson(Map json){
    return Total(
        total: json['total']
    );
  }
}
