.class public Lcom/taobao/artc/api/ArtcMediaClerk;
.super Ljava/lang/Object;
.source "ArtcMediaClerk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;
    }
.end annotation


# static fields
.field public static final ARTC_XXX_SERVICE:Ljava/lang/String; = "artcconfig"

.field public static accs_data_id:Ljava/lang/String;

.field private static aint:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static mChannelId:Ljava/lang/String;

.field private static mDeviceId:Ljava/lang/String;

.field private static mUserId:Ljava/lang/String;

.field private static m_cap_handler:Lcom/taobao/artc/api/IArtcStaticCapabilityHandler;

.field private static m_cfg:Lcom/taobao/artc/api/ArtcConfig;

.field private static model_stored:Ljava/lang/String;

.field private static vg_timer:Ljava/util/Timer;

.field private static final vg_timer_lock:Ljava/lang/Object;

.field private static video_result:Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;

.field private static video_result_stored:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/taobao/artc/api/ArtcMediaClerk;->vg_timer_lock:Ljava/lang/Object;

    .line 43
    sput-object v1, Lcom/taobao/artc/api/ArtcMediaClerk;->m_cap_handler:Lcom/taobao/artc/api/IArtcStaticCapabilityHandler;

    .line 44
    sput-object v1, Lcom/taobao/artc/api/ArtcMediaClerk;->m_cfg:Lcom/taobao/artc/api/ArtcConfig;

    .line 45
    sput-object v1, Lcom/taobao/artc/api/ArtcMediaClerk;->vg_timer:Ljava/util/Timer;

    .line 47
    const-string/jumbo v0, ""

    sput-object v0, Lcom/taobao/artc/api/ArtcMediaClerk;->accs_data_id:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/taobao/artc/api/ArtcMediaClerk;->aint:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 49
    const-string/jumbo v0, ""

    sput-object v0, Lcom/taobao/artc/api/ArtcMediaClerk;->mUserId:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, ""

    sput-object v0, Lcom/taobao/artc/api/ArtcMediaClerk;->mChannelId:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, ""

    sput-object v0, Lcom/taobao/artc/api/ArtcMediaClerk;->mDeviceId:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, ""

    sput-object v0, Lcom/taobao/artc/api/ArtcMediaClerk;->model_stored:Ljava/lang/String;

    .line 55
    sput-boolean v2, Lcom/taobao/artc/api/ArtcMediaClerk;->video_result_stored:Z

    .line 56
    sput-object v1, Lcom/taobao/artc/api/ArtcMediaClerk;->video_result:Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method static synthetic access$000()Ljava/util/Timer;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/taobao/artc/api/ArtcMediaClerk;->vg_timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Ljava/util/Timer;

    .prologue
    .line 35
    sput-object p0, Lcom/taobao/artc/api/ArtcMediaClerk;->vg_timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$100()Lcom/taobao/artc/api/ArtcConfig;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/taobao/artc/api/ArtcMediaClerk;->m_cfg:Lcom/taobao/artc/api/ArtcConfig;

    return-object v0
.end method

.method static synthetic access$1000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p0}, Lcom/taobao/artc/api/ArtcMediaClerk;->apiUTCommit(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/taobao/artc/api/ArtcConfig;)Lcom/taobao/artc/api/ArtcConfig;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/api/ArtcConfig;

    .prologue
    .line 35
    sput-object p0, Lcom/taobao/artc/api/ArtcMediaClerk;->m_cfg:Lcom/taobao/artc/api/ArtcConfig;

    return-object p0
.end method

.method static synthetic access$1100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/taobao/artc/api/ArtcMediaClerk;->vg_timer_lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Lcom/taobao/artc/api/IArtcStaticCapabilityHandler;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/taobao/artc/api/ArtcMediaClerk;->m_cap_handler:Lcom/taobao/artc/api/IArtcStaticCapabilityHandler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/taobao/artc/api/IArtcStaticCapabilityHandler;)Lcom/taobao/artc/api/IArtcStaticCapabilityHandler;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/api/IArtcStaticCapabilityHandler;

    .prologue
    .line 35
    sput-object p0, Lcom/taobao/artc/api/ArtcMediaClerk;->m_cap_handler:Lcom/taobao/artc/api/IArtcStaticCapabilityHandler;

    return-object p0
.end method

.method static synthetic access$300()Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/taobao/artc/api/ArtcMediaClerk;->video_result:Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;

    return-object v0
.end method

.method static synthetic access$302(Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;)Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;

    .prologue
    .line 35
    sput-object p0, Lcom/taobao/artc/api/ArtcMediaClerk;->video_result:Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;

    return-object p0
.end method

.method static synthetic access$400(Landroid/content/Context;Lcom/taobao/artc/api/ArtcConfig;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/taobao/artc/api/ArtcConfig;

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/taobao/artc/api/ArtcMediaClerk;->regAccs(Landroid/content/Context;Lcom/taobao/artc/api/ArtcConfig;)V

    return-void
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 35
    sput-object p0, Lcom/taobao/artc/api/ArtcMediaClerk;->model_stored:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/taobao/artc/api/ArtcMediaClerk;->aint:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 35
    sput-object p0, Lcom/taobao/artc/api/ArtcMediaClerk;->mUserId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 35
    sput-object p0, Lcom/taobao/artc/api/ArtcMediaClerk;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 35
    sput-object p0, Lcom/taobao/artc/api/ArtcMediaClerk;->mChannelId:Ljava/lang/String;

    return-object p0
.end method

.method private static apiUTCommit(Ljava/lang/String;)V
    .locals 5
    .param p0, "param"    # Ljava/lang/String;

    .prologue
    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    .local v0, "statMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 63
    .local v2, "timeUTC":J
    sget-object v1, Lcom/taobao/artc/api/ArtcMediaClerk;->mUserId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 64
    const-string/jumbo v1, "uid"

    sget-object v4, Lcom/taobao/artc/api/ArtcMediaClerk;->mUserId:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_0
    sget-object v1, Lcom/taobao/artc/api/ArtcMediaClerk;->mDeviceId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 68
    const-string/jumbo v1, "did"

    sget-object v4, Lcom/taobao/artc/api/ArtcMediaClerk;->mDeviceId:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_1
    sget-object v1, Lcom/taobao/artc/api/ArtcMediaClerk;->mChannelId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 72
    const-string/jumbo v1, "cid"

    sget-object v4, Lcom/taobao/artc/api/ArtcMediaClerk;->mChannelId:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_2
    const-string/jumbo v1, "mtp"

    const-string/jumbo v4, "api"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string/jumbo v1, "prm"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string/jumbo v1, "time"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string/jumbo v1, "ArtcInfo"

    invoke-static {v0}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ljkf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static isMediaGuaranteed(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/artc/api/ArtcConfig;Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;Lcom/taobao/artc/api/IArtcStaticCapabilityHandler;)V
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "model"    # Ljava/lang/String;
    .param p2, "cfg"    # Lcom/taobao/artc/api/ArtcConfig;
    .param p3, "vi"    # Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;
    .param p4, "handler"    # Lcom/taobao/artc/api/IArtcStaticCapabilityHandler;

    .prologue
    const/4 v3, 0x0

    .line 123
    sget-object v0, Lcom/taobao/artc/api/ArtcMediaClerk;->model_stored:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/taobao/artc/api/ArtcMediaClerk;->video_result_stored:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/taobao/artc/api/ArtcMediaClerk;->video_result:Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;

    if-nez v0, :cond_1

    .line 126
    :cond_0
    sput-boolean v3, Lcom/taobao/artc/api/ArtcMediaClerk;->video_result_stored:Z

    .line 127
    new-instance v0, Lcom/taobao/artc/api/ArtcMediaClerk$1;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/taobao/artc/api/ArtcMediaClerk$1;-><init>(Ljava/lang/String;Lcom/taobao/artc/api/ArtcConfig;Lcom/taobao/artc/api/IArtcStaticCapabilityHandler;Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;Landroid/content/Context;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljkg;->a(Ljava/lang/Runnable;J)V

    .line 206
    :goto_0
    return-void

    .line 202
    :cond_1
    sget-object v0, Lcom/taobao/artc/api/ArtcMediaClerk;->video_result:Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;

    invoke-interface {p4, v0}, Lcom/taobao/artc/api/IArtcStaticCapabilityHandler;->onVideoGuaranteed(Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;)V

    .line 203
    const-string/jumbo v0, "jartcjartcArtcMediaClerk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isMediaGuaranteed, the model: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'s result is exist, video_result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/taobao/artc/api/ArtcMediaClerk;->video_result:Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;

    iget-object v2, v2, Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;->o_support:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isMediaGuaranteed, the model: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'s result is exist, video_result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/taobao/artc/api/ArtcMediaClerk;->video_result:Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;

    iget-object v1, v1, Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;->o_support:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/artc/api/ArtcMediaClerk;->apiUTCommit(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onData(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 7
    .param p0, "root"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 82
    const-string/jumbo v4, "api"

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "getSdkConfig"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 84
    sget-object v4, Lcom/taobao/artc/api/ArtcMediaClerk;->vg_timer:Ljava/util/Timer;

    if-eqz v4, :cond_0

    .line 85
    sget-object v4, Lcom/taobao/artc/api/ArtcMediaClerk;->vg_timer:Ljava/util/Timer;

    invoke-virtual {v4}, Ljava/util/Timer;->cancel()V

    .line 87
    :cond_0
    const-string/jumbo v4, "jartcArtcMediaClerk"

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    const-string/jumbo v4, "data"

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 89
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    sget-object v5, Lcom/taobao/artc/api/ArtcMediaClerk;->vg_timer_lock:Ljava/lang/Object;

    monitor-enter v5

    .line 90
    const/4 v4, 0x1

    :try_start_0
    sput-boolean v4, Lcom/taobao/artc/api/ArtcMediaClerk;->video_result_stored:Z

    .line 91
    const-string/jumbo v4, "shenc"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "value_s":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onVideoGuaranteed, shenc: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/artc/api/ArtcMediaClerk;->apiUTCommit(Ljava/lang/String;)V

    .line 93
    const-class v4, Ljava/lang/Integer;

    invoke-static {v3, v4}, Lgxk;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 94
    .local v2, "value_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v4, Lcom/taobao/artc/api/ArtcMediaClerk;->video_result:Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [I

    iput-object v6, v4, Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;->o_support:[I

    .line 95
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 96
    sget-object v4, Lcom/taobao/artc/api/ArtcMediaClerk;->video_result:Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;

    iget-object v6, v4, Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;->o_support:[I

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v6, v1

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_1
    sget-object v4, Lcom/taobao/artc/api/ArtcMediaClerk;->m_cap_handler:Lcom/taobao/artc/api/IArtcStaticCapabilityHandler;

    if-eqz v4, :cond_2

    .line 100
    sget-object v4, Lcom/taobao/artc/api/ArtcMediaClerk;->m_cap_handler:Lcom/taobao/artc/api/IArtcStaticCapabilityHandler;

    sget-object v6, Lcom/taobao/artc/api/ArtcMediaClerk;->video_result:Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;

    invoke-interface {v4, v6}, Lcom/taobao/artc/api/IArtcStaticCapabilityHandler;->onVideoGuaranteed(Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;)V

    .line 101
    const/4 v4, 0x0

    sput-object v4, Lcom/taobao/artc/api/ArtcMediaClerk;->m_cap_handler:Lcom/taobao/artc/api/IArtcStaticCapabilityHandler;

    .line 104
    :cond_2
    sget-object v4, Lcom/taobao/artc/api/ArtcMediaClerk;->m_cfg:Lcom/taobao/artc/api/ArtcConfig;

    if-eqz v4, :cond_3

    .line 110
    const/4 v4, 0x0

    sput-object v4, Lcom/taobao/artc/api/ArtcMediaClerk;->m_cfg:Lcom/taobao/artc/api/ArtcConfig;

    .line 112
    :cond_3
    monitor-exit v5

    .line 114
    .end local v0    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "i":I
    .end local v2    # "value_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "value_s":Ljava/lang/String;
    :cond_4
    return-void

    .line 112
    .restart local v0    # "data":Lcom/alibaba/fastjson/JSONObject;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private static regAccs(Landroid/content/Context;Lcom/taobao/artc/api/ArtcConfig;)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "cfg"    # Lcom/taobao/artc/api/ArtcConfig;

    .prologue
    .line 220
    const/4 v1, 0x0

    .line 221
    .local v1, "deviceId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/taobao/artc/api/ArtcConfig;->protocal()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "accs"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 224
    invoke-virtual {p1}, Lcom/taobao/artc/api/ArtcConfig;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    .line 226
    :cond_0
    iput-object v1, p1, Lcom/taobao/artc/api/ArtcConfig;->deviceId:Ljava/lang/String;

    .line 227
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v3, p1, Lcom/taobao/artc/api/ArtcConfig;->model:Ljava/lang/String;

    .line 228
    const-string/jumbo v3, "ro.board.platform"

    invoke-static {p0, v3}, Lcom/taobao/artc/utils/ArtcDeviceInfo;->getBuildProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/taobao/artc/api/ArtcConfig;->board:Ljava/lang/String;

    .line 229
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v3, p1, Lcom/taobao/artc/api/ArtcConfig;->osVersion:Ljava/lang/String;

    .line 230
    invoke-static {p0}, Lcom/taobao/artc/utils/ArtcDeviceInfo;->getNetworkState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/taobao/artc/api/ArtcConfig;->networkType:Ljava/lang/String;

    .line 231
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 232
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_1

    .line 233
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "carriers":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 235
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/taobao/artc/api/ArtcConfig;->carriers:Ljava/lang/String;

    .line 238
    .end local v0    # "carriers":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Ljkb;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/taobao/artc/api/ArtcConfig;->ip:Ljava/lang/String;

    .line 244
    return-void
.end method
