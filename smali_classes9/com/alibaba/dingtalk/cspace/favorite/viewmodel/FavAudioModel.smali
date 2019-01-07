.class public Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;
.super Ljava/lang/Object;
.source "FavAudioModel.java"


# instance fields
.field private authCode:Ljava/lang/String;

.field private authMediaId:Ljava/lang/String;

.field private duration:J

.field private url:Ljava/lang/String;

.field private volumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/LinkedTreeMap;)V
    .locals 6
    .param p1, "map"    # Lcom/google/gson/internal/LinkedTreeMap;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-nez p1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    :try_start_0
    const-string/jumbo v3, "duration"

    invoke-virtual {p1, v3}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 33
    const-string/jumbo v3, "duration"

    invoke-virtual {p1, v3}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;->duration:J

    .line 35
    :cond_2
    const-string/jumbo v3, "url"

    invoke-virtual {p1, v3}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 36
    const-string/jumbo v3, "url"

    invoke-virtual {p1, v3}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;->url:Ljava/lang/String;

    .line 37
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;->url:Ljava/lang/String;

    invoke-static {v3}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;->url:Ljava/lang/String;

    .line 40
    :cond_3
    const-string/jumbo v3, "authMediaId"

    invoke-virtual {p1, v3}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 41
    const-string/jumbo v3, "authMediaId"

    invoke-virtual {p1, v3}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;->authMediaId:Ljava/lang/String;

    .line 42
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;->authMediaId:Ljava/lang/String;

    invoke-static {v3}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;->authMediaId:Ljava/lang/String;

    .line 45
    :cond_4
    const-string/jumbo v3, "authCode"

    invoke-virtual {p1, v3}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 46
    const-string/jumbo v3, "authCode"

    invoke-virtual {p1, v3}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;->authCode:Ljava/lang/String;

    .line 49
    :cond_5
    const-string/jumbo v3, "volumns"

    invoke-virtual {p1, v3}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "volumns"

    .line 50
    invoke-virtual {p1, v3}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 51
    const-string/jumbo v3, "volumns"

    invoke-virtual {p1, v3}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 52
    .local v2, "volumnList":Ljava/util/List;
    if-eqz v2, :cond_0

    .line 53
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;->volumns:Ljava/util/List;

    .line 54
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 55
    .local v1, "volumn":Ljava/lang/Object;
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;->volumns:Ljava/util/List;

    check-cast v1, Ljava/lang/Double;

    .end local v1    # "volumn":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 59
    .end local v2    # "volumnList":Ljava/util/List;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcky;JLjava/util/List;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "srcInfo"    # Lcky;
    .param p3, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcky;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p5, "volumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;->url:Ljava/lang/String;

    .line 19
    if-eqz p2, :cond_0

    .line 1136
    iget-object v0, p2, Lcky;->i:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;->authCode:Ljava/lang/String;

    .line 1144
    iget-object v0, p2, Lcky;->j:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;->authMediaId:Ljava/lang/String;

    .line 23
    :cond_0
    iput-wide p3, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;->duration:J

    .line 24
    iput-object p5, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;->volumns:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public getAuthCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;->authCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;->authMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;->duration:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;->volumns:Ljava/util/List;

    return-object v0
.end method

.method public setAuthCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "authCode"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;->authCode:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setAuthMediaId(Ljava/lang/String;)V
    .locals 0
    .param p1, "authMediaId"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;->authMediaId:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;->duration:J

    .line 97
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;->url:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setVolumns(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "volumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;->volumns:Ljava/util/List;

    .line 105
    return-void
.end method
