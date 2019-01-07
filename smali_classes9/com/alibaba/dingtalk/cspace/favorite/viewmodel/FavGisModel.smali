.class public Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;
.super Ljava/lang/Object;
.source "FavGisModel.java"


# instance fields
.field private latitude:D

.field private locationName:Ljava/lang/String;

.field private longitude:D

.field private picHeight:I

.field private picWidth:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/wukong/im/MessageContent$GeoContent;)V
    .locals 2
    .param p1, "content"    # Lcom/alibaba/wukong/im/MessageContent$GeoContent;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    if-eqz p1, :cond_0

    .line 17
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$GeoContent;->latitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;->latitude:D

    .line 18
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$GeoContent;->longitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;->longitude:D

    .line 19
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$GeoContent;->locationName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;->locationName:Ljava/lang/String;

    .line 20
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$GeoContent;->getPicHeight()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;->picHeight:I

    .line 21
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$GeoContent;->getPicWidth()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;->picWidth:I

    .line 22
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$GeoContent;->url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;->url:Ljava/lang/String;

    .line 24
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/gson/internal/LinkedTreeMap;)V
    .locals 4
    .param p1, "map"    # Lcom/google/gson/internal/LinkedTreeMap;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    :try_start_0
    const-string/jumbo v1, "latitude"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    const-string/jumbo v1, "latitude"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;->latitude:D

    .line 34
    :cond_2
    const-string/jumbo v1, "longitude"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 35
    const-string/jumbo v1, "longitude"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;->longitude:D

    .line 38
    :cond_3
    const-string/jumbo v1, "picWidth"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 39
    const-string/jumbo v1, "picWidth"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;->picWidth:I

    .line 42
    :cond_4
    const-string/jumbo v1, "picHeight"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 43
    const-string/jumbo v1, "picHeight"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;->picHeight:I

    .line 46
    :cond_5
    const-string/jumbo v1, "locationName"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 47
    const-string/jumbo v1, "locationName"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;->locationName:Ljava/lang/String;

    .line 49
    :cond_6
    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;->url:Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;->url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method public getLatitude()D
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;->latitude:D

    return-wide v0
.end method

.method public getLocationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;->locationName:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;->longitude:D

    return-wide v0
.end method

.method public getPicHeight()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;->picHeight:I

    return v0
.end method

.method public getPicWidth()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;->picWidth:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;->latitude:D

    .line 97
    return-void
.end method

.method public setLocationName(Ljava/lang/String;)V
    .locals 0
    .param p1, "locationName"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;->locationName:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    .prologue
    .line 104
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;->longitude:D

    .line 105
    return-void
.end method

.method public setPicHeight(I)V
    .locals 0
    .param p1, "picHeight"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;->picHeight:I

    .line 129
    return-void
.end method

.method public setPicWidth(I)V
    .locals 0
    .param p1, "picWidth"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;->picWidth:I

    .line 121
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;->url:Ljava/lang/String;

    .line 137
    return-void
.end method
