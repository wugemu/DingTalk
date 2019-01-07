.class public Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;
.super Ljava/lang/Object;
.source "SNPostResultObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x55903f27675b60e7L


# instance fields
.field private mAlbumCoverMediaId:Ljava/lang/String;

.field mHasMore:Z

.field private mPosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lbpq;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;
    .locals 2
    .param p0, "model"    # Lbpq;

    .prologue
    .line 47
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    .line 48
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;-><init>()V

    .line 49
    .local v0, "result":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;
    iget-object v1, p0, Lbpq;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;->fromSNPostModelList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;->mPosts:Ljava/util/List;

    .line 50
    iget-object v1, p0, Lbpq;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;->mHasMore:Z

    .line 51
    iget-object v1, p0, Lbpq;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;->mAlbumCoverMediaId:Ljava/lang/String;

    goto :goto_0
.end method

.method private static fromSNPostModelList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbpp;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "modelList":Ljava/util/List;, "Ljava/util/List<Lbpp;>;"
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 63
    :cond_0
    return-object v1

    .line 57
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpp;

    .line 59
    .local v0, "model":Lbpp;
    if-eqz v0, :cond_2

    .line 60
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->fromIdl(Lbpp;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getAlbumCoverMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;->mAlbumCoverMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getPosts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;->mPosts:Ljava/util/List;

    return-object v0
.end method

.method public hasMore()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;->mHasMore:Z

    return v0
.end method

.method public setAlbumCoverMediaId(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumCoverMediaId"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;->mAlbumCoverMediaId:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setHasMore(Z)V
    .locals 0
    .param p1, "hasMore"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;->mHasMore:Z

    .line 36
    return-void
.end method

.method public setPosts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "posts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;>;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;->mPosts:Ljava/util/List;

    .line 28
    return-void
.end method
