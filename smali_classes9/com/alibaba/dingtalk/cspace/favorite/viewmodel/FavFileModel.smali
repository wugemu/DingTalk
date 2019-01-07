.class public Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavFileModel;
.super Ljava/lang/Object;
.source "FavFileModel.java"


# instance fields
.field private extension:Ljava/lang/String;

.field private size:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/LinkedTreeMap;)V
    .locals 4
    .param p1, "map"    # Lcom/google/gson/internal/LinkedTreeMap;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    if-nez p1, :cond_1

    .line 41
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

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavFileModel;->url:Ljava/lang/String;

    .line 28
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavFileModel;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavFileModel;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 29
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavFileModel;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavFileModel;->url:Ljava/lang/String;

    .line 32
    :cond_2
    const-string/jumbo v1, "extension"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 33
    const-string/jumbo v1, "extension"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavFileModel;->extension:Ljava/lang/String;

    .line 35
    :cond_3
    const-string/jumbo v1, "size"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    const-string/jumbo v1, "size"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavFileModel;->size:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;
    .param p3, "size"    # J

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavFileModel;->url:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavFileModel;->extension:Ljava/lang/String;

    .line 18
    iput-wide p3, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavFileModel;->size:J

    .line 19
    return-void
.end method


# virtual methods
.method public getExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavFileModel;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavFileModel;->size:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavFileModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 0
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavFileModel;->extension:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavFileModel;->size:J

    .line 80
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavFileModel;->url:Ljava/lang/String;

    .line 64
    return-void
.end method
