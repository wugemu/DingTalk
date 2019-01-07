.class public Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;
.super Ljava/lang/Object;
.source "FavVideoModel.java"


# instance fields
.field private authCode:Ljava/lang/String;

.field private authMediaId:Ljava/lang/String;

.field private bitrate:J

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
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-eqz p1, :cond_0

    .line 34
    iget-wide v0, p1, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->duration:J

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->duration:J

    .line 35
    iget v0, p1, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->width:I

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->width:I

    .line 36
    iget v0, p1, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->height:I

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->height:I

    .line 37
    iget v0, p1, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->bitrate:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->bitrate:J

    .line 38
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->thumbUrl:Ljava/lang/String;

    invoke-static {v0}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->picUrl:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->thumbAuthUrl:Ljava/lang/String;

    invoke-static {v0}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->picAuthMediaId:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->picAuthCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->picAuthCode:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->videoUrl:Ljava/lang/String;

    invoke-static {v0}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->url:Ljava/lang/String;

    .line 42
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->videoAuthUrl:Ljava/lang/String;

    invoke-static {v0}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->authMediaId:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->authCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->authCode:Ljava/lang/String;

    .line 44
    iget-wide v0, p1, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->size:J

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->size:J

    .line 46
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/wukong/im/MessageContent$VideoContent;)V
    .locals 2
    .param p1, "content"    # Lcom/alibaba/wukong/im/MessageContent$VideoContent;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    if-eqz p1, :cond_0

    .line 16
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->duration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->duration:J

    .line 17
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->width:I

    .line 18
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->height:I

    .line 19
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->bitrate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->bitrate:J

    .line 20
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->picUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->picUrl:Ljava/lang/String;

    .line 21
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->getPicAuthUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->picAuthMediaId:Ljava/lang/String;

    .line 22
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->getPicAuthCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->picAuthCode:Ljava/lang/String;

    .line 23
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->getPicWidth()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->picWidth:I

    .line 24
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->getPicHeight()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->picHeight:I

    .line 25
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->url:Ljava/lang/String;

    .line 26
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->getAuthUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->authMediaId:Ljava/lang/String;

    .line 27
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->getAuthCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->authCode:Ljava/lang/String;

    .line 28
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->size()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->size:J

    .line 30
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/gson/internal/LinkedTreeMap;)V
    .locals 4
    .param p1, "map"    # Lcom/google/gson/internal/LinkedTreeMap;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-nez p1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    :try_start_0
    const-string/jumbo v1, "duration"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    const-string/jumbo v1, "duration"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->duration:J

    .line 56
    :cond_2
    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->url:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->url:Ljava/lang/String;

    invoke-static {v1}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->url:Ljava/lang/String;

    .line 61
    :cond_3
    const-string/jumbo v1, "authMediaId"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 62
    const-string/jumbo v1, "authMediaId"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->authMediaId:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->authMediaId:Ljava/lang/String;

    invoke-static {v1}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->authMediaId:Ljava/lang/String;

    .line 65
    :cond_4
    const-string/jumbo v1, "authCode"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 66
    const-string/jumbo v1, "authCode"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->authCode:Ljava/lang/String;

    .line 69
    :cond_5
    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 70
    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->width:I

    .line 72
    :cond_6
    const-string/jumbo v1, "height"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 73
    const-string/jumbo v1, "height"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->height:I

    .line 76
    :cond_7
    const-string/jumbo v1, "picWidth"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 77
    const-string/jumbo v1, "picWidth"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->picWidth:I

    .line 80
    :cond_8
    const-string/jumbo v1, "picHeight"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 81
    const-string/jumbo v1, "picHeight"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->picHeight:I

    .line 84
    :cond_9
    const-string/jumbo v1, "picUrl"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 85
    const-string/jumbo v1, "picUrl"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->picUrl:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->picUrl:Ljava/lang/String;

    invoke-static {v1}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->picUrl:Ljava/lang/String;

    .line 89
    :cond_a
    const-string/jumbo v1, "picAuthMediaId"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 90
    const-string/jumbo v1, "picAuthMediaId"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->picAuthMediaId:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->picAuthMediaId:Ljava/lang/String;

    invoke-static {v1}, Lgao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->picAuthMediaId:Ljava/lang/String;

    .line 94
    :cond_b
    const-string/jumbo v1, "picAuthCode"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 95
    const-string/jumbo v1, "picAuthCode"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->picAuthCode:Ljava/lang/String;

    .line 98
    :cond_c
    const-string/jumbo v1, "bitrate"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 99
    const-string/jumbo v1, "bitrate"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->bitrate:J

    .line 102
    :cond_d
    const-string/jumbo v1, "size"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const-string/jumbo v1, "size"

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->size:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method public getAuthCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->authCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->authMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getBitrate()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->bitrate:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->duration:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->height:I

    return v0
.end method

.method public getPicAuthCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->picAuthCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPicAuthMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->picAuthMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getPicHeight()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->picHeight:I

    return v0
.end method

.method public getPicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->picUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPicWidth()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->picWidth:I

    return v0
.end method

.method public getSize()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->size:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->width:I

    return v0
.end method

.method public setAuthCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "authCode"    # Ljava/lang/String;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->authCode:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setAuthMediaId(Ljava/lang/String;)V
    .locals 0
    .param p1, "authMediaId"    # Ljava/lang/String;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->authMediaId:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setBitrate(J)V
    .locals 1
    .param p1, "bitrate"    # J

    .prologue
    .line 193
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->bitrate:J

    .line 194
    return-void
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 169
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->duration:J

    .line 170
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 185
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->height:I

    .line 186
    return-void
.end method

.method public setPicAuthCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "picAuthCode"    # Ljava/lang/String;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->picAuthCode:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setPicAuthMediaId(Ljava/lang/String;)V
    .locals 0
    .param p1, "picAuthMediaId"    # Ljava/lang/String;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->picAuthMediaId:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setPicHeight(I)V
    .locals 0
    .param p1, "picHeight"    # I

    .prologue
    .line 217
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->picHeight:I

    .line 218
    return-void
.end method

.method public setPicUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "picUrl"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->picUrl:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setPicWidth(I)V
    .locals 0
    .param p1, "picWidth"    # I

    .prologue
    .line 209
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->picWidth:I

    .line 210
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 233
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->size:J

    .line 234
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->url:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 177
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->width:I

    .line 178
    return-void
.end method
