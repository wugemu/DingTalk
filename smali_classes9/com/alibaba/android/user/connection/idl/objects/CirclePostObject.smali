.class public Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
.super Ljava/lang/Object;
.source "CirclePostObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INVALID_ID:J = -0x1L

.field private static final serialVersionUID:J = 0x37488d5b4f468459L


# instance fields
.field public author:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public comments:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;",
            ">;"
        }
    .end annotation
.end field

.field public content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public createAt:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public geoInfo:Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;

.field public transient hideTime:Z

.field public mentionedUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;",
            ">;"
        }
    .end annotation
.end field

.field public transient photoCache:[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

.field public transient photoSize:I

.field public postId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public scope:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public shieldAt:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public shieldOperator:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

.field public status:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public transient timeToDisplay:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fromCommentModels(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfee;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "models":Ljava/util/List;, "Ljava/util/List<Lfee;>;"
    if-nez p0, :cond_1

    .line 197
    const/4 v1, 0x0

    .line 205
    :cond_0
    return-object v1

    .line 199
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfee;

    .line 201
    .local v0, "model":Lfee;
    if-eqz v0, :cond_2

    .line 202
    invoke-static {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->fromIdl(Lfee;)Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static fromIdl(Lfen;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    .locals 6
    .param p0, "model"    # Lfen;

    .prologue
    const-wide/16 v4, 0x0

    .line 139
    if-nez p0, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    .line 142
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;-><init>()V

    .line 143
    .local v0, "result":Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    iget-object v1, p0, Lfen;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 143
    iput-wide v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    .line 144
    iget-object v1, p0, Lfen;->b:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 144
    iput-wide v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->createAt:J

    .line 145
    iget-object v1, p0, Lfen;->c:Lfeq;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->fromIdl(Lfeq;)Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->author:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 146
    iget-object v1, p0, Lfen;->d:Lfef;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->fromIdl(Lfef;)Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    .line 147
    iget-object v1, p0, Lfen;->e:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->fromCommentModels(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->comments:Ljava/util/List;

    .line 148
    iget-object v1, p0, Lfen;->f:Lfeq;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->fromIdl(Lfeq;)Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->shieldOperator:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 149
    iget-object v1, p0, Lfen;->g:Lfeg;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->fromIdl(Lfeg;)Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->geoInfo:Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;

    .line 150
    iget-object v1, p0, Lfen;->h:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->fromIdl(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->mentionedUsers:Ljava/util/List;

    goto :goto_0
.end method

.method public static getComments(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    invoke-static {p0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 210
    const/4 v2, 0x0

    .line 223
    :cond_0
    return-object v2

    .line 3020
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 214
    .local v1, "object":Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    if-eqz v1, :cond_2

    .line 217
    iget-object v0, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->comments:Ljava/util/List;

    .line 218
    .local v0, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;>;"
    invoke-static {v0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 221
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public static savePostsAsync(Landroid/app/Activity;Ljava/util/List;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "posts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    invoke-static {}, Lfdw;->a()Lfdw;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject$2;

    invoke-direct {v1, p1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject$2;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, p0, p1, v1}, Lfdw;->a(Landroid/app/Activity;Ljava/util/List;Lcou;)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 74
    if-nez p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v1

    .line 77
    :cond_1
    instance-of v2, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 80
    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 81
    .local v0, "postObject":Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    iget-wide v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    iget-wide v4, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    if-nez v0, :cond_0

    .line 112
    const/4 v0, -0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget v0, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->contentType:I

    goto :goto_0
.end method

.method public getOrgId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 286
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->scope:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    if-nez v0, :cond_0

    .line 287
    const-wide/16 v0, -0x1

    .line 290
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->scope:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    invoke-virtual {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;->getOrgId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getPostId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 317
    iget-wide v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    return-wide v0
.end method

.method public getScopeFirstId()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v2, -0x1

    .line 155
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->scope:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    if-nez v1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-wide v2

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->scope:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    iget-object v0, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;->orgRanges:Ljava/util/List;

    .line 160
    .local v0, "orgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isDeleted()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 135
    iget v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->status:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFilePost()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget v0, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->contentType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget v0, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->contentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLike()Z
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 172
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->comments:Ljava/util/List;

    .line 173
    .local v1, "commentObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;>;"
    invoke-static {v1}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v5

    .line 177
    :cond_1
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v2

    .line 179
    .local v2, "myself":J
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    .line 180
    .local v0, "comment":Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->isComment()Z

    move-result v7

    if-nez v7, :cond_2

    .line 183
    iget-object v4, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->originUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 184
    .local v4, "userObject":Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;
    if-eqz v4, :cond_2

    .line 188
    iget-wide v8, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    cmp-long v7, v8, v2

    if-nez v7, :cond_2

    .line 189
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public isMockPost()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPostByMySelf()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->author:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->author:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    iget-wide v0, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShielded()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->shieldAt:J

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->shieldOperator:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTakePhotoPost()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-wide v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v1

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    .line 127
    .local v0, "contentObject":Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->isFromTakePhoto()Z

    move-result v1

    goto :goto_0
.end method

.method public onRemoveComment(Landroid/app/Activity;J)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "commentId"    # J

    .prologue
    .line 246
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->comments:Ljava/util/List;

    .line 247
    .local v1, "commentObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;>;"
    invoke-static {v1}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 248
    const-string/jumbo v4, "commentObjects is empty"

    .line 3060
    const/4 v5, 0x0

    invoke-static {v5, v4}, Lffe;->a(ZLjava/lang/String;)V

    .line 268
    :goto_0
    return-void

    .line 252
    :cond_0
    const/4 v3, 0x0

    .line 254
    .local v3, "removedComment":Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 255
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 256
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    .line 257
    .local v0, "commentObject":Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;
    if-eqz v0, :cond_1

    .line 260
    iget-wide v4, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->commentId:J

    cmp-long v4, p2, v4

    if-nez v4, :cond_1

    .line 261
    move-object v3, v0

    .line 262
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 267
    .end local v0    # "commentObject":Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->removeCommentAsync(Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;)V

    goto :goto_0
.end method

.method public removeCommentAsync(Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;)V
    .locals 6
    .param p1, "removedComment"    # Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 271
    if-eqz p1, :cond_0

    .line 272
    invoke-static {}, Lfdo;->a()Lfdo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lfdo;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 273
    .local v0, "params":[Ljava/lang/String;
    const/4 v2, 0x0

    iget-wide v4, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->commentId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 274
    move-object v1, v0

    .line 275
    .local v1, "poolParams":[Ljava/lang/String;
    new-instance v2, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject$1;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject$1;-><init>(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;[Ljava/lang/String;)V

    invoke-static {v2}, Lfds;->a(Ljava/lang/Runnable;)V

    .line 283
    .end local v0    # "params":[Ljava/lang/String;
    .end local v1    # "poolParams":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public save2DbAsync(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 296
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->savePostsAsync(Landroid/app/Activity;Ljava/util/List;)V

    .line 297
    return-void
.end method

.method public saveLike2DbAsync()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 230
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->comments:Ljava/util/List;

    invoke-static {v1}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->comments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    .line 234
    .local v0, "comment":Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;
    if-eqz v0, :cond_1

    .line 237
    iget-wide v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    iput-wide v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->postId:J

    goto :goto_1

    .line 239
    .end local v0    # "comment":Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;
    :cond_2
    invoke-static {}, Lfdt;->a()Lfdt;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->comments:Ljava/util/List;

    invoke-virtual {v1, v2}, Lfdt;->a(Ljava/util/Collection;)V

    goto :goto_0
.end method
