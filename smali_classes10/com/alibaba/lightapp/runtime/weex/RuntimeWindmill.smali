.class public Lcom/alibaba/lightapp/runtime/weex/RuntimeWindmill;
.super Ljava/lang/Object;
.source "RuntimeWindmill.java"


# static fields
.field private static final MAX_TASK_FOR_WEEX_APP:I = 0x3

.field private static volatile sIsInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/lightapp/runtime/weex/RuntimeWindmill;->sIsInited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized init()V
    .locals 7

    .prologue
    .line 36
    const-class v3, Lcom/alibaba/lightapp/runtime/weex/RuntimeWindmill;

    monitor-enter v3

    :try_start_0
    sget-boolean v2, Lcom/alibaba/lightapp/runtime/weex/RuntimeWindmill;->sIsInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 64
    .local v0, "config":Ljpo$a;
    .local v1, "wmlAppAdapter":Ljpq;
    :goto_0
    monitor-exit v3

    return-void

    .line 39
    .end local v0    # "config":Ljpo$a;
    .end local v1    # "wmlAppAdapter":Ljpq;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/weex/RuntimeWindmill;->initTaskManagerConfig()V

    .line 41
    const-string/jumbo v2, "hybrid_config_enable_new_app_manager_weex_mini_app"

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lhdo;->b(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;

    invoke-direct {v1}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;-><init>()V

    .line 45
    .restart local v1    # "wmlAppAdapter":Ljpq;
    :goto_1
    new-instance v2, Ljpo$a$a;

    invoke-direct {v2}, Ljpo$a$a;-><init>()V

    .line 1210
    iput-object v1, v2, Ljpo$a$a;->j:Ljpq;

    .line 46
    new-instance v4, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLRouterAdapter;

    invoke-direct {v4}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLRouterAdapter;-><init>()V

    .line 1225
    iput-object v4, v2, Ljpo$a$a;->e:Ljpw;

    .line 47
    new-instance v4, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLogAdapter;

    invoke-direct {v4}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLogAdapter;-><init>()V

    .line 2215
    iput-object v4, v2, Ljpo$a$a;->c:Ljpt;

    .line 48
    new-instance v4, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLHttpAdapter;

    invoke-direct {v4}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLHttpAdapter;-><init>()V

    .line 2245
    iput-object v4, v2, Ljpo$a$a;->i:Ljpr;

    .line 49
    new-instance v4, Lcom/alibaba/lightapp/runtime/weex/adapter/ImageAdapter;

    invoke-direct {v4}, Lcom/alibaba/lightapp/runtime/weex/adapter/ImageAdapter;-><init>()V

    .line 2250
    iput-object v4, v2, Ljpo$a$a;->h:Ljps;

    .line 50
    new-instance v4, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLSecurityAdapter;

    invoke-direct {v4}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLSecurityAdapter;-><init>()V

    .line 2255
    iput-object v4, v2, Ljpo$a$a;->b:Ljpx;

    .line 51
    new-instance v4, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLUserTrackAdapter;

    invoke-direct {v4}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLUserTrackAdapter;-><init>()V

    .line 3220
    iput-object v4, v2, Ljpo$a$a;->d:Ljqa;

    .line 52
    new-instance v4, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLUIAdapter;

    invoke-direct {v4}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLUIAdapter;-><init>()V

    .line 3240
    iput-object v4, v2, Ljpo$a$a;->g:Ljpz;

    .line 53
    new-instance v4, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAPIValidateAdapter;

    invoke-direct {v4}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAPIValidateAdapter;-><init>()V

    .line 3260
    iput-object v4, v2, Ljpo$a$a;->k:Ljpp;

    .line 54
    new-instance v4, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLRemoteConfigAdapter;

    invoke-direct {v4}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLRemoteConfigAdapter;-><init>()V

    .line 3265
    iput-object v4, v2, Ljpo$a$a;->l:Ljpu;

    .line 55
    new-instance v4, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter;

    invoke-direct {v4}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter;-><init>()V

    .line 4230
    iput-object v4, v2, Ljpo$a$a;->f:Ljpy;

    .line 4275
    new-instance v0, Ljpo$a;

    invoke-direct {v0}, Ljpo$a;-><init>()V

    .line 4276
    iget-object v4, v2, Ljpo$a$a;->j:Ljpq;

    iput-object v4, v0, Ljpo$a;->k:Ljpq;

    .line 4277
    iget-object v4, v2, Ljpo$a$a;->c:Ljpt;

    iput-object v4, v0, Ljpo$a;->c:Ljpt;

    .line 4278
    iget-object v4, v2, Ljpo$a$a;->d:Ljqa;

    iput-object v4, v0, Ljpo$a;->d:Ljqa;

    .line 4279
    iget-object v4, v2, Ljpo$a$a;->e:Ljpw;

    iput-object v4, v0, Ljpo$a;->e:Ljpw;

    .line 4280
    iget-object v4, v2, Ljpo$a$a;->f:Ljpy;

    iput-object v4, v0, Ljpo$a;->f:Ljpy;

    .line 4281
    const/4 v4, 0x0

    iput-object v4, v0, Ljpo$a;->g:Ljpv;

    .line 4282
    iget-object v4, v2, Ljpo$a$a;->g:Ljpz;

    iput-object v4, v0, Ljpo$a;->h:Ljpz;

    .line 4283
    iget-object v4, v2, Ljpo$a$a;->h:Ljps;

    iput-object v4, v0, Ljpo$a;->i:Ljps;

    .line 4284
    iget-object v4, v2, Ljpo$a$a;->i:Ljpr;

    iput-object v4, v0, Ljpo$a;->j:Ljpr;

    .line 4285
    iget-object v4, v2, Ljpo$a$a;->b:Ljpx;

    iput-object v4, v0, Ljpo$a;->b:Ljpx;

    .line 4286
    iget-object v4, v2, Ljpo$a$a;->k:Ljpp;

    iput-object v4, v0, Ljpo$a;->l:Ljpp;

    .line 4287
    iget-object v4, v2, Ljpo$a$a;->l:Ljpu;

    iput-object v4, v0, Ljpo$a;->m:Ljpu;

    .line 4288
    iget-object v4, v0, Ljpo$a;->a:Ljava/util/Map;

    iget-object v2, v2, Ljpo$a$a;->a:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 58
    .restart local v0    # "config":Ljpo$a;
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    .line 5052
    iput-object v0, v2, Ljpo;->c:Ljpo$a;

    .line 5053
    iput-object v4, v2, Ljpo;->b:Landroid/app/Application;

    .line 5055
    const-string/jumbo v4, "navigator"

    const-class v5, Lcom/taobao/windmill/bundle/container/jsbridge/Navigator;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Ljrq;->a(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 5056
    const-string/jumbo v4, "navigatorBar"

    const-class v5, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Ljrq;->a(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 5057
    const-string/jumbo v4, "memoryStorage"

    const-class v5, Lcom/taobao/windmill/bundle/container/jsbridge/MemoryStorage;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Ljrq;->a(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 5058
    const-string/jumbo v4, "windmillEnv"

    const-class v5, Lcom/taobao/windmill/bundle/container/jsbridge/WindmillEnv;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Ljrq;->a(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 5059
    const-string/jumbo v4, "miniApp"

    const-class v5, Lcom/taobao/windmill/bundle/container/jsbridge/MiniAppBridge;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Ljrq;->a(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 5060
    const-string/jumbo v4, "share"

    const-class v5, Lcom/taobao/windmill/bundle/container/jsbridge/ShareBridge;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Ljrq;->a(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 5062
    new-instance v4, Ljpo$1;

    invoke-direct {v4, v2}, Ljpo$1;-><init>(Ljpo;)V

    .line 6016
    sput-object v4, Ljsd;->a:Ljsd$a;

    .line 5070
    const/4 v4, 0x1

    iput-boolean v4, v2, Ljpo;->a:Z

    .line 59
    const-string/jumbo v2, "nuvajs-exec"

    const-class v4, Lcom/alibaba/lightapp/runtime/windmill/apis/jspi/WindmillJspiBridge;

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Ljrq;->a(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 60
    const-string/jumbo v2, "broadcast"

    const-class v4, Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Ljrq;->a(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 61
    const-string/jumbo v2, "network"

    const-class v4, Lcom/alibaba/lightapp/runtime/windmill/apis/network/NetworkBridge;

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Ljrq;->a(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 63
    const/4 v2, 0x1

    sput-boolean v2, Lcom/alibaba/lightapp/runtime/weex/RuntimeWindmill;->sIsInited:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 36
    .end local v0    # "config":Ljpo$a;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 41
    .end local v1    # "wmlAppAdapter":Ljpq;
    :cond_1
    :try_start_2
    new-instance v1, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;

    invoke-direct {v1}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLegacyAppAdapter;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method private static initTaskManagerConfig()V
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 68
    invoke-static {}, Ljqb;->a()Ljqb;

    move-result-object v0

    .line 6063
    iput v1, v0, Ljqb;->e:I

    .line 70
    invoke-static {}, Ljqb;->a()Ljqb;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/alibaba/lightapp/runtime/weex/activity/DDWMLTaskActivity1;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/alibaba/lightapp/runtime/weex/activity/DDWMLTaskActivity2;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/alibaba/lightapp/runtime/weex/activity/DDWMLTaskActivity3;

    aput-object v3, v1, v2

    .line 7055
    iget-object v2, v0, Ljqb;->c:Ljava/util/List;

    invoke-static {v2, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 7056
    iget-object v1, v0, Ljqb;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Ljqb;->e:I

    .line 72
    return-void
.end method
