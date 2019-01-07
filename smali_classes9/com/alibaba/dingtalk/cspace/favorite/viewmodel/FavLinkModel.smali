.class public Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;
.super Ljava/lang/Object;
.source "FavLinkModel.java"


# instance fields
.field private picUrl:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/LinkedTreeMap;)V
    .locals 2
    .param p1, "map"    # Lcom/google/gson/internal/LinkedTreeMap;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-nez p1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    :try_start_0
    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 26
    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;->url:Ljava/lang/String;

    .line 27
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;->url:Ljava/lang/String;

    .line 31
    :cond_2
    const-string/jumbo v1, "picUrl"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    const-string/jumbo v1, "picUrl"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;->picUrl:Ljava/lang/String;

    .line 33
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;->picUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;->picUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;->picUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;->picUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "picUrl"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;->url:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;->picUrl:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getPicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;->picUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setPicUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "picUrl"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;->picUrl:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;->url:Ljava/lang/String;

    .line 58
    return-void
.end method
