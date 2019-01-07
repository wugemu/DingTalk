.class public Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;
.super Ljava/lang/Object;
.source "FavCommonVideoModel.java"


# instance fields
.field private authCode:Ljava/lang/String;

.field private authMediaId:Ljava/lang/String;

.field private duration:J

.field private height:I

.field private picAuthCode:Ljava/lang/String;

.field private picAuthMediaId:Ljava/lang/String;

.field private picHeight:I

.field private picUrl:Ljava/lang/String;

.field private picWidth:I

.field private size:J

.field private url:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;)V
    .locals 2
    .param p1, "content"    # Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-eqz p1, :cond_0

    .line 33
    iget-wide v0, p1, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->duration:J

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->duration:J

    .line 34
    iget v0, p1, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->width:I

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->width:I

    .line 35
    iget v0, p1, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->height:I

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->height:I

    .line 37
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->thumbUrl:Ljava/lang/String;

    invoke-static {v0}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->picUrl:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->videoUrl:Ljava/lang/String;

    invoke-static {v0}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->url:Ljava/lang/String;

    .line 39
    iget-wide v0, p1, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->size:J

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->size:J

    .line 41
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;)V
    .locals 2
    .param p1, "content"    # Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    if-eqz p1, :cond_0

    .line 16
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->duration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->duration:J

    .line 17
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->width:I

    .line 18
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->height:I

    .line 19
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->picUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->picUrl:Ljava/lang/String;

    .line 20
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getPicAuthUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->picAuthMediaId:Ljava/lang/String;

    .line 21
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getPicAuthCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->picAuthCode:Ljava/lang/String;

    .line 22
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getPicWidth()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->picWidth:I

    .line 23
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getPicHeight()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->picHeight:I

    .line 24
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->url:Ljava/lang/String;

    .line 25
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getAuthUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->authMediaId:Ljava/lang/String;

    .line 26
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getAuthCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->authCode:Ljava/lang/String;

    .line 27
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->size()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->size:J

    .line 29
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/gson/internal/LinkedTreeMap;)V
    .locals 4
    .param p1, "map"    # Lcom/google/gson/internal/LinkedTreeMap;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-nez p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    :try_start_0
    const-string/jumbo v1, "duration"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    const-string/jumbo v1, "duration"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->duration:J

    .line 51
    :cond_2
    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 52
    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->url:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->url:Ljava/lang/String;

    invoke-static {v1}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->url:Ljava/lang/String;

    .line 55
    :cond_3
    const-string/jumbo v1, "authMediaId"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 56
    const-string/jumbo v1, "authMediaId"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->authMediaId:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->authMediaId:Ljava/lang/String;

    invoke-static {v1}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->authMediaId:Ljava/lang/String;

    .line 59
    :cond_4
    const-string/jumbo v1, "authCode"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 60
    const-string/jumbo v1, "authCode"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->authCode:Ljava/lang/String;

    .line 62
    :cond_5
    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 63
    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->width:I

    .line 65
    :cond_6
    const-string/jumbo v1, "height"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 66
    const-string/jumbo v1, "height"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->height:I

    .line 69
    :cond_7
    const-string/jumbo v1, "picWidth"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 70
    const-string/jumbo v1, "picWidth"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->picWidth:I

    .line 73
    :cond_8
    const-string/jumbo v1, "picHeight"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 74
    const-string/jumbo v1, "picHeight"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->picHeight:I

    .line 77
    :cond_9
    const-string/jumbo v1, "picUrl"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 78
    const-string/jumbo v1, "picUrl"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->picUrl:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->picUrl:Ljava/lang/String;

    invoke-static {v1}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->picUrl:Ljava/lang/String;

    .line 82
    :cond_a
    const-string/jumbo v1, "picAuthMediaId"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 83
    const-string/jumbo v1, "picAuthMediaId"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->picAuthMediaId:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->picAuthMediaId:Ljava/lang/String;

    invoke-static {v1}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->picAuthMediaId:Ljava/lang/String;

    .line 87
    :cond_b
    const-string/jumbo v1, "picAuthCode"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 88
    const-string/jumbo v1, "picAuthCode"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->picAuthCode:Ljava/lang/String;

    .line 91
    :cond_c
    const-string/jumbo v1, "size"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    const-string/jumbo v1, "size"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->size:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method public getAuthCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->authCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->authMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->duration:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->height:I

    return v0
.end method

.method public getPicAuthCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->picAuthCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPicAuthMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->picAuthMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getPicHeight()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->picHeight:I

    return v0
.end method

.method public getPicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->picUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPicWidth()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->picWidth:I

    return v0
.end method

.method public getSize()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 206
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->size:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->width:I

    return v0
.end method

.method public setAuthCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "authCode"    # Ljava/lang/String;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->authCode:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setAuthMediaId(Ljava/lang/String;)V
    .locals 0
    .param p1, "authMediaId"    # Ljava/lang/String;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->authMediaId:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 154
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->duration:J

    .line 155
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->height:I

    .line 171
    return-void
.end method

.method public setPicAuthCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "picAuthCode"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->picAuthCode:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setPicAuthMediaId(Ljava/lang/String;)V
    .locals 0
    .param p1, "picAuthMediaId"    # Ljava/lang/String;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->picAuthMediaId:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setPicHeight(I)V
    .locals 0
    .param p1, "picHeight"    # I

    .prologue
    .line 194
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->picHeight:I

    .line 195
    return-void
.end method

.method public setPicUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "picUrl"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->picUrl:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setPicWidth(I)V
    .locals 0
    .param p1, "picWidth"    # I

    .prologue
    .line 186
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->picWidth:I

    .line 187
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 210
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->size:J

    .line 211
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->url:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->width:I

    .line 163
    return-void
.end method
