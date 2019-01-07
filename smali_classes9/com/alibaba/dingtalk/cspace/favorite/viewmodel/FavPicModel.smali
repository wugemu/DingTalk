.class public Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;
.super Ljava/lang/Object;
.source "FavPicModel.java"


# instance fields
.field private authCode:Ljava/lang/String;

.field private authMediaId:Ljava/lang/String;

.field private mediaId:Ljava/lang/String;

.field private orientation:I

.field private origin:I

.field private size:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/LinkedTreeMap;)V
    .locals 4
    .param p1, "map"    # Lcom/google/gson/internal/LinkedTreeMap;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    :try_start_0
    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->url:Ljava/lang/String;

    .line 33
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->url:Ljava/lang/String;

    invoke-static {v1}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->url:Ljava/lang/String;

    .line 35
    :cond_2
    const-string/jumbo v1, "orientation"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 36
    const-string/jumbo v1, "orientation"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->orientation:I

    .line 38
    :cond_3
    const-string/jumbo v1, "origin"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 39
    const-string/jumbo v1, "origin"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->origin:I

    .line 41
    :cond_4
    const-string/jumbo v1, "size"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 42
    const-string/jumbo v1, "size"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->size:J

    .line 45
    :cond_5
    const-string/jumbo v1, "mediaId"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 46
    const-string/jumbo v1, "mediaId"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->mediaId:Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->mediaId:Ljava/lang/String;

    invoke-static {v1}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->url:Ljava/lang/String;

    .line 50
    :cond_6
    const-string/jumbo v1, "authMediaId"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 51
    const-string/jumbo v1, "authMediaId"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->authMediaId:Ljava/lang/String;

    .line 52
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->authMediaId:Ljava/lang/String;

    invoke-static {v1}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->authMediaId:Ljava/lang/String;

    .line 55
    :cond_7
    const-string/jumbo v1, "authCode"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    const-string/jumbo v1, "authCode"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->authCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcky;IJI)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;
    .param p3, "srcInfo"    # Lcky;
    .param p4, "orientation"    # I
    .param p5, "size"    # J
    .param p7, "origin"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {p1}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->url:Ljava/lang/String;

    .line 16
    iput p4, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->orientation:I

    .line 17
    iput-wide p5, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->size:J

    .line 18
    iput p7, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->origin:I

    .line 19
    invoke-static {p2}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->mediaId:Ljava/lang/String;

    .line 20
    if-eqz p3, :cond_0

    .line 1144
    iget-object v0, p3, Lcky;->j:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->authMediaId:Ljava/lang/String;

    .line 2136
    iget-object v0, p3, Lcky;->i:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->authCode:Ljava/lang/String;

    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public getAuthCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->authCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->authMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->mediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->orientation:I

    return v0
.end method

.method public getOrigin()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->origin:I

    return v0
.end method

.method public getSize()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->size:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "authCode"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->authCode:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setAuthMediaId(Ljava/lang/String;)V
    .locals 0
    .param p1, "authMediaId"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->authMediaId:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setMediaId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->mediaId:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->orientation:I

    .line 107
    return-void
.end method

.method public setOrigin(I)V
    .locals 0
    .param p1, "origin"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->origin:I

    .line 123
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 114
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->size:J

    .line 115
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->url:Ljava/lang/String;

    .line 99
    return-void
.end method
