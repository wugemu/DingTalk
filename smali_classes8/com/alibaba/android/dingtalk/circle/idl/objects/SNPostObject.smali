.class public Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
.super Ljava/lang/Object;
.source "SNPostObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INVALID_ID:J = -0x1L

.field private static final serialVersionUID:J = 0x37488d5b4f468459L


# instance fields
.field public author:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

.field public comments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;",
            ">;"
        }
    .end annotation
.end field

.field public content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

.field public createAt:J

.field public geoInfo:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;

.field public transient hideTime:Z

.field public mentionedUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;",
            ">;"
        }
    .end annotation
.end field

.field public transient photoCache:[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

.field public transient photoSize:I

.field public postId:J

.field public scope:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;

.field public shieldAt:J

.field public shieldOperator:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

.field public status:I

.field public transient timeToDisplay:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lbpp;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    .locals 6
    .param p0, "model"    # Lbpp;

    .prologue
    const-wide/16 v4, 0x0

    .line 116
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    .line 117
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;-><init>()V

    .line 118
    .local v0, "result":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    iget-object v1, p0, Lbpp;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 118
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    .line 119
    iget-object v1, p0, Lbpp;->b:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 119
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->createAt:J

    .line 120
    iget-object v1, p0, Lbpp;->c:Lbps;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->fromIdl(Lbps;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->author:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 121
    iget-object v1, p0, Lbpp;->d:Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->fromIdl(Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    .line 122
    iget-object v1, p0, Lbpp;->f:Ljava/lang/Integer;

    .line 3033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 122
    iput v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->status:I

    .line 123
    iget-object v1, p0, Lbpp;->e:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->fromSNCommentModels(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->comments:Ljava/util/List;

    .line 124
    iget-object v1, p0, Lbpp;->g:Lbpr;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;->fromIdl(Lbpr;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->scope:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;

    .line 125
    iget-object v1, p0, Lbpp;->h:Ljava/lang/Long;

    .line 3044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 125
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->shieldAt:J

    .line 126
    iget-object v1, p0, Lbpp;->i:Lbps;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->fromIdl(Lbps;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->shieldOperator:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 127
    iget-object v1, p0, Lbpp;->j:Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->fromIdl(Lcom/alibaba/android/dingtalk/circle/idl/models/SNGeoContentModel;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->geoInfo:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;

    .line 128
    iget-object v1, p0, Lbpp;->k:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->fromIdl(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->mentionedUsers:Ljava/util/List;

    goto :goto_0
.end method

.method private static fromSNCommentModels(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbpk;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "models":Ljava/util/List;, "Ljava/util/List<Lbpk;>;"
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 173
    :cond_0
    return-object v1

    .line 167
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpk;

    .line 169
    .local v0, "model":Lbpk;
    if-eqz v0, :cond_2

    .line 170
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->fromIdl(Lbpk;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getComments(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;>;"
    invoke-static {p0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    .line 185
    :cond_0
    return-object v2

    .line 4019
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 180
    .local v1, "object":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    if-eqz v1, :cond_2

    .line 181
    iget-object v0, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->comments:Ljava/util/List;

    .line 182
    .local v0, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;>;"
    invoke-static {v0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 183
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
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "posts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;>;"
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-static {}, Lbpe;->e()Lbpe;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject$2;

    invoke-direct {v1, p1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject$2;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, p0, p1, v1}, Lbpe;->a(Landroid/app/Activity;Ljava/util/List;Lcou;)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 56
    if-nez p1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v1

    .line 57
    :cond_1
    instance-of v2, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 58
    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 59
    .local v0, "postObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 91
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->contentType:I

    goto :goto_0
.end method

.method public getOrgId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 242
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->scope:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;

    if-nez v0, :cond_0

    .line 243
    const-wide/16 v0, -0x1

    .line 246
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->scope:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;->getOrgId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getPostId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 271
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    return-wide v0
.end method

.method public getScopeFirstId()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v2, -0x1

    .line 133
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->scope:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;

    if-nez v1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-wide v2

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->scope:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;

    iget-object v0, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;->orgRanges:Ljava/util/List;

    .line 138
    .local v0, "orgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
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

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isDeleted()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 112
    iget v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->status:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFilePost()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->contentType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->contentType:I

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

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 150
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->comments:Ljava/util/List;

    .line 151
    .local v1, "commentObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;>;"
    invoke-static {v1}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 162
    :cond_0
    :goto_0
    return v5

    .line 153
    :cond_1
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v2

    .line 155
    .local v2, "myself":J
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    .line 156
    .local v0, "comment":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->isComment()Z

    move-result v7

    if-nez v7, :cond_2

    .line 157
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->originUser:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 158
    .local v4, "userObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;
    if-eqz v4, :cond_2

    .line 160
    iget-wide v8, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    cmp-long v7, v8, v2

    if-nez v7, :cond_2

    const/4 v5, 0x1

    goto :goto_0
.end method

.method public isMockPost()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

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

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->author:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->author:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

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

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->shieldAt:J

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->shieldOperator:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

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

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v1

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    .line 104
    .local v0, "contentObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->isFromTakePhoto()Z

    move-result v1

    goto :goto_0
.end method

.method public onRemoveComment(Landroid/app/Activity;J)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "commentId"    # J

    .prologue
    .line 204
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->comments:Ljava/util/List;

    .line 205
    .local v1, "commentObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;>;"
    invoke-static {v1}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 206
    const-string/jumbo v4, "commentObjects is empty"

    .line 4076
    const/4 v5, 0x0

    invoke-static {v5, v4}, Lbqh;->a(ZLjava/lang/String;)V

    .line 224
    :goto_0
    return-void

    .line 210
    :cond_0
    const/4 v3, 0x0

    .line 212
    .local v3, "removedComment":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 213
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 214
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    .line 215
    .local v0, "commentObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
    if-eqz v0, :cond_1

    .line 216
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->commentId:J

    cmp-long v4, p2, v4

    if-nez v4, :cond_1

    .line 217
    move-object v3, v0

    .line 218
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 223
    .end local v0    # "commentObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->removeCommentAsync(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;)V

    goto :goto_0
.end method

.method public removeCommentAsync(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;)V
    .locals 6
    .param p1, "removedComment"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 227
    if-eqz p1, :cond_0

    .line 228
    invoke-static {}, Lbox;->a()Lbox;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lbox;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 229
    .local v0, "params":[Ljava/lang/String;
    const/4 v2, 0x0

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->commentId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 230
    move-object v1, v0

    .line 231
    .local v1, "poolParams":[Ljava/lang/String;
    new-instance v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject$1;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject$1;-><init>(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;[Ljava/lang/String;)V

    invoke-static {v2}, Lbpa;->a(Ljava/lang/Runnable;)V

    .line 239
    .end local v0    # "params":[Ljava/lang/String;
    .end local v1    # "poolParams":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public save2DbAsync(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 252
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->savePostsAsync(Landroid/app/Activity;Ljava/util/List;)V

    .line 253
    return-void
.end method

.method public saveLike2DbAsync()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 192
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->comments:Ljava/util/List;

    invoke-static {v1}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->comments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    .line 194
    .local v0, "comment":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
    if-eqz v0, :cond_1

    .line 195
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->postId:J

    goto :goto_1

    .line 197
    .end local v0    # "comment":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
    :cond_2
    invoke-static {}, Lbpb;->e()Lbpb;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->comments:Ljava/util/List;

    invoke-virtual {v1, v2}, Lbpb;->a(Ljava/util/Collection;)V

    goto :goto_0
.end method
