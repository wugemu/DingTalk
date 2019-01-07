.class public Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;
.super Ljava/lang/Object;
.source "FavOAModel.java"


# instance fields
.field private mediaId:Ljava/lang/String;

.field private picUrl:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/LinkedTreeMap;)V
    .locals 2
    .param p1, "map"    # Lcom/google/gson/internal/LinkedTreeMap;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    if-nez p1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    :try_start_0
    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 27
    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;->url:Ljava/lang/String;

    .line 28
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 29
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;->url:Ljava/lang/String;

    .line 32
    :cond_2
    const-string/jumbo v1, "picUrl"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 33
    const-string/jumbo v1, "picUrl"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;->picUrl:Ljava/lang/String;

    .line 34
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;->picUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 35
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;->picUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;->picUrl:Ljava/lang/String;

    .line 38
    :cond_3
    const-string/jumbo v1, "mediaId"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    const-string/jumbo v1, "mediaId"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;->mediaId:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;->mediaId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;->mediaId:Ljava/lang/String;

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;->mediaId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "picUrl"    # Ljava/lang/String;
    .param p3, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;->url:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;->picUrl:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;->mediaId:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;->mediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getPicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;->picUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setMediaId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;->mediaId:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setPicUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "picUrl"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;->picUrl:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;->url:Ljava/lang/String;

    .line 80
    return-void
.end method
