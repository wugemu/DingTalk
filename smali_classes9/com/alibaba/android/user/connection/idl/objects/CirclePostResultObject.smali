.class public Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;
.super Ljava/lang/Object;
.source "CirclePostResultObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x55903f27675b60e7L


# instance fields
.field private mAlbumCoverMediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field mHasMore:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private mPosts:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lfeo;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;
    .locals 3
    .param p0, "model"    # Lfeo;

    .prologue
    .line 57
    if-nez p0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    .line 60
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;-><init>()V

    .line 61
    .local v0, "result":Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;
    iget-object v1, p0, Lfeo;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;->fromSNPostModelList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;->mPosts:Ljava/util/List;

    .line 62
    iget-object v1, p0, Lfeo;->b:Ljava/lang/Boolean;

    .line 1022
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 62
    iput-boolean v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;->mHasMore:Z

    .line 63
    iget-object v1, p0, Lfeo;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;->mAlbumCoverMediaId:Ljava/lang/String;

    goto :goto_0
.end method

.method private static fromSNPostModelList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfen;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "modelList":Ljava/util/List;, "Ljava/util/List<Lfen;>;"
    if-nez p0, :cond_1

    .line 69
    const/4 v1, 0x0

    .line 77
    :cond_0
    return-object v1

    .line 71
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfen;

    .line 73
    .local v0, "model":Lfen;
    if-eqz v0, :cond_2

    .line 74
    invoke-static {v0}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->fromIdl(Lfen;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getAlbumCoverMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;->mAlbumCoverMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getPosts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;->mPosts:Ljava/util/List;

    return-object v0
.end method

.method public hasMore()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;->mHasMore:Z

    return v0
.end method

.method public setAlbumCoverMediaId(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumCoverMediaId"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;->mAlbumCoverMediaId:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setHasMore(Z)V
    .locals 0
    .param p1, "hasMore"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;->mHasMore:Z

    .line 46
    return-void
.end method

.method public setPosts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "posts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    iput-object p1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;->mPosts:Ljava/util/List;

    .line 38
    return-void
.end method
