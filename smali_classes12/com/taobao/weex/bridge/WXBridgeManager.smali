.class public Lcom/taobao/weex/bridge/WXBridgeManager;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/taobao/weex/utils/batch/BactchExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;,
        Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
    }
.end annotation


# static fields
.field public static final ARGS:Ljava/lang/String; = "args"

.field private static final BRIDGE_LOG_SWITCH:Z = false

.field private static final BUNDLE_TYPE:Ljava/lang/String; = "bundleType"

.field public static final COMPONENT:Ljava/lang/String; = "component"

.field private static final CRASHREINIT:I = 0x32

.field private static GLOBAL_CONFIG_KEY:Ljava/lang/String; = null

.field public static final INITLOGFILE:Ljava/lang/String; = "/jsserver_start.log"

.field private static final INIT_FRAMEWORK_OK:I = 0x1

.field public static final KEY_ARGS:Ljava/lang/String; = "args"

.field public static final KEY_METHOD:Ljava/lang/String; = "method"

.field public static final KEY_PARAMS:Ljava/lang/String; = "params"

.field private static LOW_MEM_VALUE:J = 0x0L

.field public static final METHD_COMPONENT_HOOK_SYNC:Ljava/lang/String; = "componentHook"

.field public static final METHD_FIRE_EVENT_SYNC:Ljava/lang/String; = "fireEventSync"

.field public static final METHOD:Ljava/lang/String; = "method"

.field public static final METHOD_CALLBACK:Ljava/lang/String; = "callback"

.field public static final METHOD_CALL_JS:Ljava/lang/String; = "callJS"

.field public static final METHOD_CREATE_INSTANCE:Ljava/lang/String; = "createInstance"

.field public static final METHOD_DESTROY_INSTANCE:Ljava/lang/String; = "destroyInstance"

.field public static final METHOD_FIRE_EVENT:Ljava/lang/String; = "fireEvent"

.field public static final METHOD_NOTIFY_SERIALIZE_CODE_CACHE:Ljava/lang/String; = "notifySerializeCodeCache"

.field public static final METHOD_NOTIFY_TRIM_MEMORY:Ljava/lang/String; = "notifyTrimMemory"

.field public static final METHOD_REFRESH_INSTANCE:Ljava/lang/String; = "refreshInstance"

.field public static final METHOD_REGISTER_COMPONENTS:Ljava/lang/String; = "registerComponents"

.field public static final METHOD_REGISTER_MODULES:Ljava/lang/String; = "registerModules"

.field public static final METHOD_SET_TIMEOUT:Ljava/lang/String; = "setTimeoutCallback"

.field public static final MODULE:Ljava/lang/String; = "module"

.field private static final NON_CALLBACK:Ljava/lang/String; = "-1"

.field public static final OPTIONS:Ljava/lang/String; = "options"

.field public static final REF:Ljava/lang/String; = "ref"

.field private static final UNDEFINED:Ljava/lang/String; = "undefined"

.field private static crashUrl:Ljava/lang/String;

.field private static globalConfig:Ljava/lang/String;

.field private static volatile isSandBoxContext:Z

.field private static isUseSingleProcess:Z

.field private static lastCrashTime:J

.field static volatile mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

.field private static volatile mInit:Z

.field private static mRaxApi:Ljava/lang/String;

.field private static mWeexCoreEnvOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile reInitCount:I


# instance fields
.field private mDestroyedInstanceId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitParams:Lcom/taobao/weex/bridge/WXParams;

.field private mInterceptor:Lcom/taobao/weex/utils/batch/Interceptor;

.field mJSHandler:Landroid/os/Handler;

.field private mJSThread:Lcom/taobao/weex/common/WXThread;

.field private mLodBuilder:Ljava/lang/StringBuilder;

.field private mMock:Z

.field private mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/bridge/WXHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/weex/bridge/WXHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mRegisterComponentFailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRegisterModuleFailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRegisterServiceFailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWXBridge:Lcom/taobao/weex/common/IWXBridge;

.field private mWxDebugProxy:Lcom/taobao/weex/common/IWXDebugProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    const-wide/16 v0, 0x78

    sput-wide v0, Lcom/taobao/weex/bridge/WXBridgeManager;->LOW_MEM_VALUE:J

    .line 124
    sput v3, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    .line 125
    sput-object v4, Lcom/taobao/weex/bridge/WXBridgeManager;->crashUrl:Ljava/lang/String;

    .line 126
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/taobao/weex/bridge/WXBridgeManager;->lastCrashTime:J

    .line 128
    sput-object v4, Lcom/taobao/weex/bridge/WXBridgeManager;->mRaxApi:Ljava/lang/String;

    .line 134
    sput-boolean v3, Lcom/taobao/weex/bridge/WXBridgeManager;->isSandBoxContext:Z

    .line 138
    sput-boolean v2, Lcom/taobao/weex/bridge/WXBridgeManager;->isUseSingleProcess:Z

    .line 151
    sput-boolean v2, Lcom/taobao/weex/bridge/WXBridgeManager;->mInit:Z

    .line 153
    const-string/jumbo v0, "none"

    sput-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->globalConfig:Ljava/lang/String;

    .line 154
    const-string/jumbo v0, "global_switch_config"

    sput-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->GLOBAL_CONFIG_KEY:Ljava/lang/String;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWeexCoreEnvOptions:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Lcom/taobao/weex/bridge/WXHashMap;

    invoke-direct {v0}, Lcom/taobao/weex/bridge/WXHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mMock:Z

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterComponentFailList:Ljava/util/List;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterModuleFailList:Ljava/util/List;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterServiceFailList:Ljava/util/List;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    .line 184
    sget-boolean v0, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugMode:Z

    invoke-direct {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->initWXBridge(Z)V

    .line 185
    new-instance v0, Lcom/taobao/weex/common/WXThread;

    const-string/jumbo v1, "WeexJSBridgeThread"

    invoke-direct {v0, v1, p0}, Lcom/taobao/weex/common/WXThread;-><init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    .line 186
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/bridge/WXBridgeManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/bridge/WXBridgeManager;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->setJSFrameworkInit(Z)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 88
    sget-boolean v0, Lcom/taobao/weex/bridge/WXBridgeManager;->isSandBoxContext:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/taobao/weex/bridge/WXBridgeManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/bridge/WXBridgeManager;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterModuleFailList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/bridge/WXBridgeManager;
    .param p1, "x1"    # Ljava/util/Map;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeRegisterModules(Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/taobao/weex/bridge/WXBridgeManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/bridge/WXBridgeManager;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterComponentFailList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/bridge/WXBridgeManager;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeRegisterComponents(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/taobao/weex/bridge/WXBridgeManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/bridge/WXBridgeManager;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterServiceFailList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/bridge/WXBridgeManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJSService(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/taobao/weex/bridge/WXBridgeManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/bridge/WXBridgeManager;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/bridge/WXBridgeManager;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    return-object v0
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->globalConfig:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/bridge/WXBridgeManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # [Lcom/taobao/weex/bridge/WXJSObject;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)V

    return-void
.end method

.method static synthetic access$200(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/bridge/WXBridgeManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->initFramework(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/bridge/WXHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/bridge/WXBridgeManager;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)[B
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/bridge/WXBridgeManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # [Lcom/taobao/weex/bridge/WXJSObject;
    .param p5, "x5"    # Z

    .prologue
    .line 88
    invoke-direct/range {p0 .. p5}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJSWithResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/bridge/WXBridgeManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/taobao/weex/common/WXRefreshData;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeRefreshInstance(Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V

    return-void
.end method

.method static synthetic access$600(Lcom/taobao/weex/bridge/WXBridgeManager;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/bridge/WXBridgeManager;
    .param p1, "x1"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/Map;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeCreateInstance(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/bridge/WXBridgeManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->removeTaskByInstance(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/bridge/WXBridgeManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeDestroyInstance(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/bridge/WXBridgeManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJSOnInstance(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private varargs addJSEventTask(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "instanceId"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 910
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$8;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager$8;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;[Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    .line 941
    return-void
.end method

.method private varargs addJSTask(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "instanceId"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 944
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->addJSEventTask(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V

    .line 945
    return-void
.end method

.method public static argsToJSON([Lcom/taobao/weex/bridge/WXJSObject;)Ljava/lang/String;
    .locals 5
    .param p0, "args"    # [Lcom/taobao/weex/bridge/WXJSObject;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1583
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1584
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p0, v2

    .line 1585
    .local v1, "object":Lcom/taobao/weex/bridge/WXJSObject;
    invoke-static {v1}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->fromObjectToJSONString(Lcom/taobao/weex/bridge/WXJSObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1586
    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1584
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1588
    .end local v1    # "object":Lcom/taobao/weex/bridge/WXJSObject;
    :cond_0
    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1589
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private assembleDefaultOptions()Lcom/taobao/weex/bridge/WXParams;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1752
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getConfig()Ljava/util/Map;

    move-result-object v1

    .line 1753
    .local v1, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/taobao/weex/bridge/WXParams;

    invoke-direct {v2}, Lcom/taobao/weex/bridge/WXParams;-><init>()V

    .line 1754
    .local v2, "wxParams":Lcom/taobao/weex/bridge/WXParams;
    const-string/jumbo v3, "os"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/taobao/weex/bridge/WXParams;->setPlatform(Ljava/lang/String;)V

    .line 1755
    const-string/jumbo v3, "cacheDir"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/taobao/weex/bridge/WXParams;->setCacheDir(Ljava/lang/String;)V

    .line 1756
    const-string/jumbo v3, "sysVersion"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/taobao/weex/bridge/WXParams;->setOsVersion(Ljava/lang/String;)V

    .line 1757
    const-string/jumbo v3, "appVersion"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/taobao/weex/bridge/WXParams;->setAppVersion(Ljava/lang/String;)V

    .line 1758
    const-string/jumbo v3, "weexVersion"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/taobao/weex/bridge/WXParams;->setWeexVersion(Ljava/lang/String;)V

    .line 1759
    const-string/jumbo v3, "sysModel"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/taobao/weex/bridge/WXParams;->setDeviceModel(Ljava/lang/String;)V

    .line 1760
    const-string/jumbo v3, "infoCollect"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/taobao/weex/bridge/WXParams;->setShouldInfoCollect(Ljava/lang/String;)V

    .line 1761
    const-string/jumbo v3, "logLevel"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/taobao/weex/bridge/WXParams;->setLogLevel(Ljava/lang/String;)V

    .line 1762
    sget-boolean v3, Lcom/taobao/weex/bridge/WXBridgeManager;->isUseSingleProcess:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "true"

    :goto_0
    invoke-virtual {v2, v3}, Lcom/taobao/weex/bridge/WXParams;->setUseSingleProcess(Ljava/lang/String;)V

    .line 1763
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getLibJssRealPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/taobao/weex/bridge/WXParams;->setLibJssPath(Ljava/lang/String;)V

    .line 1764
    const-string/jumbo v3, "appName"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1765
    .local v0, "appName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1766
    invoke-virtual {v2, v0}, Lcom/taobao/weex/bridge/WXParams;->setAppName(Ljava/lang/String;)V

    .line 1768
    :cond_0
    const-string/jumbo v3, "deviceWidth"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {v3}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Lcom/taobao/weex/bridge/WXParams;->setDeviceWidth(Ljava/lang/String;)V

    .line 1769
    const-string/jumbo v3, "deviceHeight"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {v3}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v2, v3}, Lcom/taobao/weex/bridge/WXParams;->setDeviceHeight(Ljava/lang/String;)V

    .line 1770
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getCustomOptions()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/taobao/weex/bridge/WXParams;->setOptions(Ljava/util/Map;)V

    .line 1771
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKManager;->needInitV8()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/taobao/weex/bridge/WXParams;->setNeedInitV8(Z)V

    .line 1772
    iput-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mInitParams:Lcom/taobao/weex/bridge/WXParams;

    .line 1773
    return-object v2

    .line 1762
    .end local v0    # "appName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "false"

    goto :goto_0

    .line 1768
    .restart local v0    # "appName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "deviceWidth"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    .line 1769
    :cond_3
    const-string/jumbo v3, "deviceHeight"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_2
.end method

.method private varargs asyncCallJSEventWithResult(Lcom/taobao/weex/bridge/EventResult;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "eventCallback"    # Lcom/taobao/weex/bridge/EventResult;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "instanceId"    # Ljava/lang/String;
    .param p5, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/bridge/EventResult;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 862
    .local p4, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$7;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/taobao/weex/bridge/WXBridgeManager$7;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;[Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/EventResult;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    .line 907
    return-void
.end method

.method private checkEmptyScreen(Lcom/taobao/weex/WXSDKInstance;)Z
    .locals 5
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2077
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 2093
    :cond_1
    :goto_0
    return v2

    .line 2080
    :cond_2
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getRootComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 2081
    .local v0, "rootComponent":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v0, :cond_1

    .line 2085
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v1

    .line 2086
    .local v1, "rootView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 2090
    instance-of v4, v1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    .line 2091
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "rootView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-gtz v4, :cond_1

    move v2, v3

    goto :goto_0

    .restart local v1    # "rootView":Landroid/view/View;
    :cond_3
    move v2, v3

    .line 2093
    goto :goto_0
.end method

.method private checkMainThread()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1025
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doReportJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "function"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/String;

    .prologue
    .line 2011
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v9

    .line 2012
    .local v9, "instance":Lcom/taobao/weex/WXSDKInstance;
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/taobao/weex/WXSDKManager;->getIWXJSExceptionAdapter()Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

    move-result-object v2

    .line 2013
    .local v2, "adapter":Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;
    if-eqz v2, :cond_6

    .line 2014
    move-object/from16 v6, p1

    .line 2016
    .local v6, "exceptionId":Ljava/lang/String;
    const-string/jumbo v14, ""

    move-object/from16 v0, p1

    if-eq v0, v14, :cond_0

    if-nez p1, :cond_1

    .line 2017
    :cond_0
    const-string/jumbo v6, "instanceIdisNull"

    .line 2020
    :cond_1
    if-nez v9, :cond_4

    .line 2021
    const-string/jumbo v14, "initFramework"

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 2022
    const/4 v5, 0x0

    .line 2024
    .local v5, "exceptionExt":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 2025
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/jsserver_start.log"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v8

    .line 2027
    .local v8, "fileName":Ljava/lang/String;
    :try_start_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2028
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 2029
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_2

    .line 2030
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2032
    .local v11, "result":Ljava/lang/StringBuilder;
    :try_start_2
    new-instance v10, Ljava/io/InputStreamReader;

    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string/jumbo v15, "UTF-8"

    invoke-direct {v10, v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2033
    .local v10, "read":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2035
    .local v3, "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .local v12, "s":Ljava/lang/String;
    if-eqz v12, :cond_7

    .line 2036
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2040
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v10    # "read":Ljava/io/InputStreamReader;
    .end local v12    # "s":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 2041
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 2044
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v11    # "result":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 2053
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "fileName":Ljava/lang/String;
    :cond_3
    :goto_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2054
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "reportJSException:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 2059
    .end local v5    # "exceptionExt":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/taobao/weex/bridge/WXBridgeManager;->checkEmptyScreen(Lcom/taobao/weex/WXSDKInstance;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 2060
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 2061
    const-string/jumbo v14, "render error 4 js error !"

    invoke-static {v14}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 2063
    :cond_5
    sget-object v14, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_JS_RUNTIME:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_JS_RUNTIME:Lcom/taobao/weex/common/WXErrorCode;

    .line 2065
    invoke-virtual/range {v16 .. v16}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    .line 2063
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v6, v14, v0, v15, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2074
    .end local v6    # "exceptionId":Ljava/lang/String;
    :cond_6
    :goto_3
    return-void

    .line 2038
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "exceptionExt":Ljava/lang/String;
    .restart local v6    # "exceptionId":Ljava/lang/String;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "fileName":Ljava/lang/String;
    .restart local v10    # "read":Ljava/io/InputStreamReader;
    .restart local v11    # "result":Ljava/lang/StringBuilder;
    .restart local v12    # "s":Ljava/lang/String;
    :cond_7
    :try_start_4
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2039
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 2046
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v7    # "file":Ljava/io/File;
    .end local v10    # "read":Ljava/io/InputStreamReader;
    .end local v11    # "result":Ljava/lang/StringBuilder;
    .end local v12    # "s":Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 2047
    .local v13, "throwable":Ljava/lang/Throwable;
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 2050
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v13    # "throwable":Ljava/lang/Throwable;
    :catch_2
    move-exception v4

    .line 2051
    .local v4, "e":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 2068
    .end local v4    # "e":Ljava/lang/Throwable;
    .end local v5    # "exceptionExt":Ljava/lang/String;
    :cond_8
    sget-object v14, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_WXBRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_WXBRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 2070
    invoke-virtual/range {v16 .. v16}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    .line 2068
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v6, v14, v0, v15, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3
.end method

.method private execJSOnInstance(Lcom/taobao/weex/bridge/EventResult;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "eventCallback"    # Lcom/taobao/weex/bridge/EventResult;
    .param p2, "instanceId"    # Ljava/lang/String;
    .param p3, "js"    # Ljava/lang/String;
    .param p4, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1549
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$13;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager$13;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;ILcom/taobao/weex/bridge/EventResult;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    .line 1556
    return-void
.end method

.method private execRegisterFailTask()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1782
    iget-object v6, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterModuleFailList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1783
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1784
    .local v2, "moduleReceiver":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v6, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterModuleFailList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "moduleCount":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1785
    iget-object v6, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterModuleFailList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-direct {p0, v6, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeRegisterModules(Ljava/util/Map;Ljava/util/List;)V

    .line 1784
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1787
    :cond_0
    iget-object v6, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterModuleFailList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1788
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1789
    iget-object v6, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterModuleFailList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1793
    .end local v0    # "i":I
    .end local v1    # "moduleCount":I
    .end local v2    # "moduleReceiver":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_1
    iget-object v6, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterComponentFailList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 1794
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1795
    .local v4, "receiver":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v6, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterComponentFailList:Ljava/util/List;

    invoke-direct {p0, v6, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeRegisterComponents(Ljava/util/List;Ljava/util/List;)V

    .line 1796
    iget-object v6, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterComponentFailList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1797
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 1798
    iget-object v6, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterComponentFailList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1802
    .end local v4    # "receiver":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_2
    iget-object v6, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterServiceFailList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 1803
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1804
    .local v3, "receiver":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterServiceFailList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1805
    .local v5, "service":Ljava/lang/String;
    invoke-direct {p0, v5, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJSService(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 1807
    .end local v5    # "service":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterServiceFailList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1808
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 1809
    iget-object v6, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterServiceFailList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1812
    .end local v3    # "receiver":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    return-void
.end method

.method public static getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;
    .locals 2

    .prologue
    .line 190
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    if-nez v0, :cond_1

    .line 191
    const-class v1, Lcom/taobao/weex/bridge/WXBridgeManager;

    monitor-enter v1

    .line 192
    :try_start_0
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-direct {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;-><init>()V

    sput-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    .line 195
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :cond_1
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    return-object v0

    .line 195
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getNextTick(Ljava/lang/String;)V
    .locals 4
    .param p1, "instanceId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 774
    const-string/jumbo v0, "callback"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "{}"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, p1, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->addJSTask(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 775
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->sendMessage(Ljava/lang/String;I)V

    .line 776
    return-void
.end method

.method private getNextTick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 769
    const-string/jumbo v0, "callback"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "{}"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, p1, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->addJSTask(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 770
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->sendMessage(Ljava/lang/String;I)V

    .line 771
    return-void
.end method

.method private initFramework(Ljava/lang/String;)V
    .locals 11
    .param p1, "framework"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 1604
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1605
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1607
    const-string/jumbo v3, "weex JS framework from assets"

    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 1609
    sget-boolean v3, Lcom/taobao/weex/bridge/WXBridgeManager;->isSandBoxContext:Z

    if-nez v3, :cond_2

    .line 1610
    const-string/jumbo v3, "main.js"

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 1615
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1616
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setJSFrameworkInit(Z)V

    .line 1617
    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JS_FRAMEWORK:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v6, "initFramework"

    const-string/jumbo v7, "framework is empty!! "

    invoke-static {v8, v3, v6, v7, v8}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1695
    :cond_1
    :goto_1
    return-void

    .line 1612
    :cond_2
    const-string/jumbo v3, "weex-main-jsfm.js"

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1622
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKManager;->getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1623
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKManager;->getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/taobao/weex/IWXStatisticsListener;->onJsFrameworkStart()V

    .line 1626
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1627
    .local v4, "start":J
    const-string/jumbo v0, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1629
    .local v0, "crashFile":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1633
    :goto_2
    const/4 v2, 0x1

    .line 1635
    .local v2, "pieSupport":Z
    :try_start_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v6, 0x10

    if-ge v3, v6, :cond_5

    .line 1636
    const/4 v2, 0x0

    .line 1641
    :cond_5
    :goto_3
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[WXBridgeManager] initFrameworkEnv crashFile:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " pieSupport:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 1643
    iget-object v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->assembleDefaultOptions()Lcom/taobao/weex/bridge/WXParams;

    move-result-object v6

    invoke-interface {v3, p1, v6, v0, v2}, Lcom/taobao/weex/common/IWXBridge;->initFrameworkEnv(Ljava/lang/String;Lcom/taobao/weex/bridge/WXParams;Ljava/lang/String;Z)I

    move-result v3

    if-ne v3, v10, :cond_7

    .line 1644
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    sput-wide v6, Lcom/taobao/weex/WXEnvironment;->sJSLibInitTime:J

    .line 1645
    const-string/jumbo v3, "initFramework"

    sget-wide v6, Lcom/taobao/weex/WXEnvironment;->sJSLibInitTime:J

    invoke-static {v3, v6, v7}, Lcom/taobao/weex/utils/WXLogUtils;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1646
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/taobao/weex/WXEnvironment;->sSDKInitStart:J

    sub-long/2addr v6, v8

    sput-wide v6, Lcom/taobao/weex/WXEnvironment;->sSDKInitTime:J

    .line 1647
    const-string/jumbo v3, "SDKInitTime"

    sget-wide v6, Lcom/taobao/weex/WXEnvironment;->sSDKInitTime:J

    invoke-static {v3, v6, v7}, Lcom/taobao/weex/utils/WXLogUtils;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1648
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setJSFrameworkInit(Z)V

    .line 1650
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKManager;->getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1651
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKManager;->getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/taobao/weex/IWXStatisticsListener;->onJsFrameworkReady()V

    .line 1654
    :cond_6
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->execRegisterFailTask()V

    .line 1655
    const/4 v3, 0x1

    sput-boolean v3, Lcom/taobao/weex/WXEnvironment;->JsFrameworkInit:Z

    .line 1656
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->registerDomModule()V

    .line 1657
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->trackComponentAndModulesTime()V

    .line 1659
    sget v3, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    goto/16 :goto_1

    .line 1630
    .end local v2    # "pieSupport":Z
    :catch_0
    move-exception v1

    .line 1631
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 1680
    .end local v0    # "crashFile":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "start":J
    :catch_1
    move-exception v1

    .line 1681
    .local v1, "e":Ljava/lang/Throwable;
    sget v3, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    if-le v3, v10, :cond_9

    .line 1682
    const-string/jumbo v3, "[WXBridgeManager] invokeInitFramework "

    invoke-static {v3, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1683
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[WXBridgeManager] invokeInitFramework reinit FrameWork exception!#"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1638
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "crashFile":Ljava/lang/String;
    .restart local v2    # "pieSupport":Z
    .restart local v4    # "start":J
    :catch_2
    move-exception v1

    .line 1639
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 1668
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    sget v3, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    if-le v3, v10, :cond_8

    .line 1669
    const-string/jumbo v3, "[WXBridgeManager] invokeReInitFramework  ExecuteJavaScript fail"

    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1674
    :cond_8
    const-string/jumbo v3, "[WXBridgeManager] invokeInitFramework  ExecuteJavaScript fail"

    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 1687
    .end local v0    # "crashFile":Ljava/lang/String;
    .end local v2    # "pieSupport":Z
    .end local v4    # "start":J
    .local v1, "e":Ljava/lang/Throwable;
    :cond_9
    const-string/jumbo v3, "[WXBridgeManager] invokeInitFramework "

    invoke-static {v3, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1688
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[WXBridgeManager] invokeInitFramework exception!#"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method private initWXBridge(Z)V
    .locals 5
    .param p1, "remoteDebug"    # Z

    .prologue
    const/4 v3, 0x1

    .line 273
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    sput-boolean v3, Lcom/taobao/weex/WXEnvironment;->sDebugServerConnectable:Z

    .line 277
    :cond_0
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Lcom/taobao/weex/common/IWXDebugProxy;

    if-eqz v2, :cond_1

    .line 278
    const-string/jumbo v2, "DebugDebug"

    const-string/jumbo v3, "mWxDebugProxy will stop server"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_1
    sget-boolean v2, Lcom/taobao/weex/WXEnvironment;->sDebugServerConnectable:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 282
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 284
    :try_start_0
    const-string/jumbo v2, "com.taobao.weex.devtools.debug.DebugServerProxy"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 285
    .local v0, "clazz":Ljava/lang/Class;
    if-eqz v0, :cond_2

    .line 286
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/taobao/weex/bridge/WXBridgeManager;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 287
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    if-eqz v1, :cond_2

    .line 288
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 289
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    .line 288
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/common/IWXDebugProxy;

    iput-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Lcom/taobao/weex/common/IWXDebugProxy;

    .line 290
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Lcom/taobao/weex/common/IWXDebugProxy;

    if-eqz v2, :cond_2

    .line 291
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Lcom/taobao/weex/common/IWXDebugProxy;

    new-instance v3, Lcom/taobao/weex/bridge/WXJsFunctions;

    invoke-direct {v3}, Lcom/taobao/weex/bridge/WXJsFunctions;-><init>()V

    invoke-interface {v2, v3}, Lcom/taobao/weex/common/IWXDebugProxy;->start(Lcom/taobao/weex/common/IWXJsFunctions;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    :cond_2
    :goto_0
    invoke-static {}, Lcom/taobao/weex/bridge/WXServiceManager;->execAllCacheJsService()V

    .line 304
    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Lcom/taobao/weex/common/IWXDebugProxy;

    if-eqz v2, :cond_5

    .line 305
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Lcom/taobao/weex/common/IWXDebugProxy;

    invoke-interface {v2}, Lcom/taobao/weex/common/IWXDebugProxy;->getWXBridge()Lcom/taobao/weex/common/IWXBridge;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    .line 309
    :goto_2
    return-void

    .line 300
    :cond_4
    const-string/jumbo v2, "WXBridgeManager"

    const-string/jumbo v3, "WXEnvironment.sApplication is null, skip init Inspector"

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string/jumbo v2, "WXBridgeManager"

    new-instance v3, Ljava/lang/Throwable;

    const-string/jumbo v4, "WXEnvironment.sApplication is null when init Inspector"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 307
    :cond_5
    new-instance v2, Lcom/taobao/weex/bridge/WXBridge;

    invoke-direct {v2}, Lcom/taobao/weex/bridge/WXBridge;-><init>()V

    iput-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private invokeCallJSBatch(Landroid/os/Message;)V
    .locals 13
    .param p1, "message"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x0

    .line 1710
    iget-object v9, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    invoke-virtual {v9}, Lcom/taobao/weex/bridge/WXHashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1711
    :cond_0
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1712
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "[WXBridgeManager] invokeCallJSBatch: framework.js uninitialized!!  message:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 1749
    :cond_1
    :goto_0
    return-void

    .line 1718
    :cond_2
    :try_start_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1720
    .local v5, "instanceId":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 1721
    .local v8, "task":Ljava/lang/Object;
    iget-object v9, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    invoke-virtual {v9}, Lcom/taobao/weex/bridge/WXHashMap;->getInstanceStack()Ljava/util/Stack;

    move-result-object v6

    .line 1722
    .local v6, "instanceStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v7

    .line 1723
    .local v7, "size":I
    add-int/lit8 v4, v7, -0x1

    .end local v8    # "task":Ljava/lang/Object;
    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_4

    .line 1724
    invoke-virtual {v6, v4}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1725
    iget-object v9, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    invoke-virtual {v9, v5}, Lcom/taobao/weex/bridge/WXHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1726
    .restart local v8    # "task":Ljava/lang/Object;
    if-eqz v8, :cond_3

    move-object v0, v8

    check-cast v0, Ljava/util/ArrayList;

    move-object v9, v0

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1723
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .end local v8    # "task":Ljava/lang/Object;
    :cond_4
    move-object v9, v8

    .line 1730
    :goto_2
    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    .line 1732
    .local v8, "task":[Ljava/lang/Object;
    const/4 v9, 0x2

    new-array v1, v9, [Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v9, 0x0

    new-instance v10, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v11, 0x2

    invoke-direct {v10, v11, v5}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    aput-object v10, v1, v9

    const/4 v9, 0x1

    .line 1734
    invoke-static {v8}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->toWsonOrJsonWXJSObject(Ljava/lang/Object;)Lcom/taobao/weex/bridge/WXJSObject;

    move-result-object v10

    aput-object v10, v1, v9

    .line 1736
    .local v1, "args":[Lcom/taobao/weex/bridge/WXJSObject;
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-string/jumbo v11, "callJS"

    invoke-direct {p0, v9, v10, v11, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1746
    .end local v1    # "args":[Lcom/taobao/weex/bridge/WXJSObject;
    .end local v4    # "i":I
    .end local v5    # "instanceId":Ljava/lang/Object;
    .end local v6    # "instanceStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .end local v7    # "size":I
    .end local v8    # "task":[Ljava/lang/Object;
    :goto_3
    iget-object v9, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    invoke-virtual {v9}, Lcom/taobao/weex/bridge/WXHashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1747
    iget-object v9, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1738
    :catch_0
    move-exception v2

    .line 1739
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "WXBridgeManager"

    invoke-static {v9, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1740
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "invokeCallJSBatch#"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1741
    .local v3, "err":Ljava/lang/String;
    sget-object v9, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JS_FRAMEWORK:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v10, "invokeCallJSBatch"

    invoke-static {v12, v9, v10, v3, v12}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v3    # "err":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "instanceId":Ljava/lang/Object;
    .restart local v6    # "instanceStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .restart local v7    # "size":I
    .local v8, "task":Ljava/lang/Object;
    :cond_5
    move-object v9, v8

    goto :goto_2
.end method

.method private invokeCreateInstance(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 23
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "template"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/WXSDKInstance;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1207
    .local p3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->initFramework(Ljava/lang/String;)V

    .line 1209
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mMock:Z

    if-eqz v4, :cond_0

    .line 1210
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->mock(Ljava/lang/String;)V

    .line 1317
    .end local p4    # "data":Ljava/lang/String;
    :goto_0
    return-void

    .line 1212
    .restart local p4    # "data":Ljava/lang/String;
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1213
    const-string/jumbo v13, "[WXBridgeManager] invokeCreateInstance: framework.js uninitialized."

    .line 1214
    .local v13, "err":Ljava/lang/String;
    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1215
    invoke-virtual {v4}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1216
    invoke-virtual {v5}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v5

    .line 1214
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    invoke-static {v13}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1222
    .end local v13    # "err":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->registerWhenCreateInstance()V

    .line 1225
    :try_start_0
    sget-object v22, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Others:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1227
    .local v22, "type":Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 1228
    .local v20, "start":J
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->getBundleType(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    move-result-object v22

    .line 1230
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1232
    .local v14, "end":J
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "end getBundleType type:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v6, v14, v20

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1239
    .end local v14    # "end":J
    .end local v20    # "start":J
    :cond_2
    :goto_1
    if-nez p3, :cond_3

    .line 1240
    :try_start_2
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .end local p3    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v18, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 p3, v18

    .line 1243
    .end local v18    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p3    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    const-string/jumbo v4, "bundleType"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    .line 1245
    sget-object v4, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Vue:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    move-object/from16 v0, v22

    if-ne v0, v4, :cond_8

    .line 1246
    const-string/jumbo v4, "bundleType"

    const-string/jumbo v5, "Vue"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    :cond_4
    :goto_2
    const-string/jumbo v4, "env"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    .line 1254
    const-string/jumbo v4, "env"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mInitParams:Lcom/taobao/weex/bridge/WXParams;

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1259
    :cond_5
    :goto_3
    :try_start_3
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/taobao/weex/WXSDKInstance;->bundleType:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    .line 1260
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 1266
    new-instance v16, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v4, 0x2

    .line 1267
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 1268
    .local v16, "instanceIdObj":Lcom/taobao/weex/bridge/WXJSObject;
    new-instance v17, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v4, 0x2

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 1270
    .local v17, "instanceObj":Lcom/taobao/weex/bridge/WXJSObject;
    new-instance v19, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v5, 0x3

    if-nez p3, :cond_a

    const-string/jumbo v4, "{}"

    .line 1272
    :goto_4
    move-object/from16 v0, v19

    invoke-direct {v0, v5, v4}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 1273
    .local v19, "optionsObj":Lcom/taobao/weex/bridge/WXJSObject;
    sget-boolean v4, Lcom/taobao/weex/bridge/WXBridgeManager;->isSandBoxContext:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v4, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->optionObjConvert(ZLcom/taobao/weex/bridge/WXBridgeManager$BundType;Lcom/taobao/weex/bridge/WXJSObject;)Lcom/taobao/weex/bridge/WXJSObject;

    move-result-object v19

    .line 1274
    new-instance v11, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v4, 0x3

    if-nez p4, :cond_6

    const-string/jumbo p4, "{}"

    .end local p4    # "data":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p4

    invoke-direct {v11, v4, v0}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 1278
    .local v11, "dataObj":Lcom/taobao/weex/bridge/WXJSObject;
    sget-object v4, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Rax:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    move-object/from16 v0, v22

    if-ne v0, v4, :cond_b

    .line 1279
    sget-object v4, Lcom/taobao/weex/bridge/WXBridgeManager;->mRaxApi:Ljava/lang/String;

    if-nez v4, :cond_7

    .line 1280
    const-string/jumbo v4, "weex-rax-api.js"

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/taobao/weex/bridge/WXBridgeManager;->mRaxApi:Ljava/lang/String;

    .line 1282
    :cond_7
    new-instance v10, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v4, 0x2

    sget-object v5, Lcom/taobao/weex/bridge/WXBridgeManager;->mRaxApi:Ljava/lang/String;

    invoke-direct {v10, v4, v5}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 1289
    .local v10, "apiObj":Lcom/taobao/weex/bridge/WXJSObject;
    :goto_5
    const/4 v4, 0x5

    new-array v8, v4, [Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v4, 0x0

    aput-object v16, v8, v4

    const/4 v4, 0x1

    aput-object v17, v8, v4

    const/4 v4, 0x2

    aput-object v19, v8, v4

    const/4 v4, 0x3

    aput-object v11, v8, v4

    const/4 v4, 0x4

    aput-object v10, v8, v4

    .line 1292
    .local v8, "args":[Lcom/taobao/weex/bridge/WXJSObject;
    invoke-virtual/range {p1 .. p2}, Lcom/taobao/weex/WXSDKInstance;->setTemplate(Ljava/lang/String;)V

    .line 1296
    sget-boolean v4, Lcom/taobao/weex/bridge/WXBridgeManager;->isSandBoxContext:Z

    if-nez v4, :cond_c

    .line 1297
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string/jumbo v7, "createInstance"

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1307
    .end local v8    # "args":[Lcom/taobao/weex/bridge/WXJSObject;
    .end local v10    # "apiObj":Lcom/taobao/weex/bridge/WXJSObject;
    .end local v11    # "dataObj":Lcom/taobao/weex/bridge/WXJSObject;
    .end local v16    # "instanceIdObj":Lcom/taobao/weex/bridge/WXJSObject;
    .end local v17    # "instanceObj":Lcom/taobao/weex/bridge/WXJSObject;
    .end local v19    # "optionsObj":Lcom/taobao/weex/bridge/WXJSObject;
    .end local v22    # "type":Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
    :catch_0
    move-exception v12

    .line 1308
    .local v12, "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[WXBridgeManager] invokeCreateInstance "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1309
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getTemplateInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1311
    .restart local v13    # "err":Ljava/lang/String;
    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1312
    invoke-virtual {v4}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1313
    invoke-virtual {v6}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1311
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    invoke-static {v13}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1234
    .end local v12    # "e":Ljava/lang/Throwable;
    .end local v13    # "err":Ljava/lang/String;
    .restart local v22    # "type":Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
    .restart local p4    # "data":Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 1235
    .restart local v12    # "e":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 1247
    .end local v12    # "e":Ljava/lang/Throwable;
    :cond_8
    :try_start_5
    sget-object v4, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Rax:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    move-object/from16 v0, v22

    if-ne v0, v4, :cond_9

    .line 1248
    const-string/jumbo v4, "bundleType"

    const-string/jumbo v5, "Rax"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 1256
    :catch_2
    move-exception v12

    .line 1257
    .restart local v12    # "e":Ljava/lang/Throwable;
    :try_start_6
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_3

    .line 1250
    .end local v12    # "e":Ljava/lang/Throwable;
    :cond_9
    :try_start_7
    const-string/jumbo v4, "bundleType"

    const-string/jumbo v5, "Others"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_2

    .line 1272
    .restart local v16    # "instanceIdObj":Lcom/taobao/weex/bridge/WXJSObject;
    .restart local v17    # "instanceObj":Lcom/taobao/weex/bridge/WXJSObject;
    :cond_a
    :try_start_8
    invoke-static/range {p3 .. p3}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 1285
    .end local p4    # "data":Ljava/lang/String;
    .restart local v11    # "dataObj":Lcom/taobao/weex/bridge/WXJSObject;
    .restart local v19    # "optionsObj":Lcom/taobao/weex/bridge/WXJSObject;
    :cond_b
    new-instance v10, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v4, 0x2

    const-string/jumbo v5, ""

    invoke-direct {v10, v4, v5}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .restart local v10    # "apiObj":Lcom/taobao/weex/bridge/WXJSObject;
    goto/16 :goto_5

    .line 1300
    .restart local v8    # "args":[Lcom/taobao/weex/bridge/WXJSObject;
    :cond_c
    sget-object v4, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Vue:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    move-object/from16 v0, v22

    if-eq v0, v4, :cond_d

    sget-object v4, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Rax:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    move-object/from16 v0, v22

    if-ne v0, v4, :cond_e

    .line 1301
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string/jumbo v7, "createInstanceContext"

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeCreateInstanceContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V

    goto/16 :goto_0

    .line 1304
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string/jumbo v7, "createInstance"

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0
.end method

.method private invokeDestroyInstance(Ljava/lang/String;)V
    .locals 10
    .param p1, "instanceId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 1445
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 1448
    new-instance v8, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v0, 0x2

    invoke-direct {v8, v0, p1}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 1450
    .local v8, "instanceIdObj":Lcom/taobao/weex/bridge/WXJSObject;
    const/4 v0, 0x1

    new-array v4, v0, [Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v0, 0x0

    aput-object v8, v4, v0

    .line 1451
    .local v4, "args":[Lcom/taobao/weex/bridge/WXJSObject;
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1452
    const/4 v2, 0x0

    const-string/jumbo v3, "destroyInstance"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeDestoryInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1461
    .end local v4    # "args":[Lcom/taobao/weex/bridge/WXJSObject;
    .end local v8    # "instanceIdObj":Lcom/taobao/weex/bridge/WXJSObject;
    :cond_0
    :goto_0
    return-void

    .line 1455
    :catch_0
    move-exception v6

    .line 1456
    .local v6, "e":Ljava/lang/Throwable;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[WXBridgeManager] invokeDestroyInstance "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1457
    .local v7, "err":Ljava/lang/String;
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v1, "invokeDestroyInstance"

    invoke-static {p1, v0, v1, v7, v9}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1459
    invoke-static {v7}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)V
    .locals 6
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "function"    # Ljava/lang/String;
    .param p4, "args"    # [Lcom/taobao/weex/bridge/WXJSObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1499
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V

    .line 1500
    return-void
.end method

.method private invokeExecJSOnInstance(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "js"    # Ljava/lang/String;
    .param p3, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1560
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "execJSOnInstance >>>> instanceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1561
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 1562
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1564
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/common/IWXBridge;->execJSOnInstance(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private invokeExecJSService(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1, "service"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1869
    .local p2, "receiver":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1870
    const-string/jumbo v2, "[WXBridgeManager] invoke execJSService: framework.js uninitialized."

    invoke-static {v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 1871
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1889
    :goto_0
    return-void

    .line 1874
    :cond_0
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v2, p1}, Lcom/taobao/weex/common/IWXBridge;->execJSService(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1875
    :catch_0
    move-exception v1

    .line 1876
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "[WXBridgeManager] invokeRegisterService:"

    invoke-static {v2, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1878
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1879
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "inputParams"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "||"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1881
    const-string/jumbo v2, "invokeExecJSService"

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_JSSERVICE_EXECUTE:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v4, "invokeExecJSService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_JSSERVICE_EXECUTE:Lcom/taobao/weex/common/WXErrorCode;

    .line 1884
    invoke-virtual {v6}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "[WXBridgeManager] invokeRegisterService:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1886
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1881
    invoke-static {v2, v3, v4, v5, v0}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private invokeExecJSWithResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)[B
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "function"    # Ljava/lang/String;
    .param p4, "args"    # [Lcom/taobao/weex/bridge/WXJSObject;
    .param p5, "logTaskDetail"    # Z

    .prologue
    .line 1569
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    .line 1578
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/taobao/weex/common/IWXBridge;->execJSWithResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)[B

    move-result-object v0

    return-object v0
.end method

.method private invokeInitFramework(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1593
    const-string/jumbo v0, ""

    .line 1594
    .local v0, "framework":Ljava/lang/String;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1595
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "framework":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1598
    .restart local v0    # "framework":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->getAvailMemory(Landroid/content/Context;)J

    move-result-wide v2

    sget-wide v4, Lcom/taobao/weex/bridge/WXBridgeManager;->LOW_MEM_VALUE:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 1599
    invoke-direct {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->initFramework(Ljava/lang/String;)V

    .line 1601
    :cond_1
    return-void
.end method

.method private invokeRefreshInstance(Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V
    .locals 13
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "refreshData"    # Lcom/taobao/weex/common/WXRefreshData;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x0

    .line 1098
    :try_start_0
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1099
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    .line 1100
    .local v4, "instance":Lcom/taobao/weex/WXSDKInstance;
    if-eqz v4, :cond_0

    .line 1101
    sget-object v8, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1102
    invoke-virtual {v8}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1103
    invoke-virtual {v10}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "invokeRefreshInstance FAILED for JSFrameworkInit FAILED, intance will invoke instance.onRenderError"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1101
    invoke-virtual {v4, v8, v9}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    :cond_0
    const-string/jumbo v3, "[WXBridgeManager] invokeRefreshInstance: framework.js uninitialized."

    .line 1108
    .local v3, "err":Ljava/lang/String;
    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 1134
    .end local v3    # "err":Ljava/lang/String;
    .end local v4    # "instance":Lcom/taobao/weex/WXSDKInstance;
    :cond_1
    :goto_0
    return-void

    .line 1111
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1112
    .local v6, "start":J
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1113
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "refreshInstance >>>> instanceId:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", data:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/taobao/weex/common/WXRefreshData;->data:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", isDirty:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p2, Lcom/taobao/weex/common/WXRefreshData;->isDirty:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 1117
    :cond_3
    iget-boolean v8, p2, Lcom/taobao/weex/common/WXRefreshData;->isDirty:Z

    if-nez v8, :cond_1

    .line 1120
    new-instance v5, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v8, 0x2

    invoke-direct {v5, v8, p1}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 1122
    .local v5, "instanceIdObj":Lcom/taobao/weex/bridge/WXJSObject;
    new-instance v1, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v9, 0x3

    iget-object v8, p2, Lcom/taobao/weex/common/WXRefreshData;->data:Ljava/lang/String;

    if-nez v8, :cond_4

    const-string/jumbo v8, "{}"

    :goto_1
    invoke-direct {v1, v9, v8}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 1124
    .local v1, "dataObj":Lcom/taobao/weex/bridge/WXJSObject;
    const/4 v8, 0x2

    new-array v0, v8, [Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v8, 0x0

    aput-object v5, v0, v8

    const/4 v8, 0x1

    aput-object v1, v0, v8

    .line 1125
    .local v0, "args":[Lcom/taobao/weex/bridge/WXJSObject;
    const/4 v8, 0x0

    const-string/jumbo v9, "refreshInstance"

    invoke-direct {p0, p1, v8, v9, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)V

    .line 1126
    const-string/jumbo v8, "invokeRefreshInstance"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-static {v8, v10, v11}, Lcom/taobao/weex/utils/WXLogUtils;->renderPerformanceLog(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1127
    .end local v0    # "args":[Lcom/taobao/weex/bridge/WXJSObject;
    .end local v1    # "dataObj":Lcom/taobao/weex/bridge/WXJSObject;
    .end local v5    # "instanceIdObj":Lcom/taobao/weex/bridge/WXJSObject;
    .end local v6    # "start":J
    :catch_0
    move-exception v2

    .line 1128
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[WXBridgeManager] invokeRefreshInstance "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1129
    .restart local v3    # "err":Ljava/lang/String;
    sget-object v8, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v9, "invokeRefreshInstance"

    invoke-static {p1, v8, v9, v3, v12}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1132
    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1122
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v3    # "err":Ljava/lang/String;
    .restart local v5    # "instanceIdObj":Lcom/taobao/weex/bridge/WXJSObject;
    .restart local v6    # "start":J
    :cond_4
    :try_start_1
    iget-object v8, p2, Lcom/taobao/weex/common/WXRefreshData;->data:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private invokeRegisterComponents(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .local p2, "failReceiver":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v7, 0x0

    .line 1931
    if-ne p1, p2, :cond_0

    .line 1932
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Fail receiver should not use source."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1934
    :cond_0
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1935
    const-string/jumbo v3, "[WXBridgeManager] invokeRegisterComponents: framework.js uninitialized."

    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 1937
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1938
    .local v1, "comp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1942
    .end local v1    # "comp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    if-nez p1, :cond_3

    .line 1959
    :cond_2
    :goto_1
    return-void

    .line 1946
    :cond_3
    const/4 v3, 0x1

    new-array v0, v3, [Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->toWsonOrJsonWXJSObject(Ljava/lang/Object;)Lcom/taobao/weex/bridge/WXJSObject;

    move-result-object v4

    aput-object v4, v0, v3

    .line 1948
    .local v0, "args":[Lcom/taobao/weex/bridge/WXJSObject;
    :try_start_0
    iget-object v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    const-string/jumbo v4, ""

    const/4 v5, 0x0

    const-string/jumbo v6, "registerComponents"

    invoke-interface {v3, v4, v5, v6, v0}, Lcom/taobao/weex/common/IWXBridge;->execJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1949
    :catch_0
    move-exception v2

    .line 1950
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "[WXBridgeManager] invokeRegisterComponents "

    invoke-static {v3, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1951
    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_REGISTER_CONTENT_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v4, "registerComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_REGISTER_CONTENT_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1955
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1956
    invoke-static {v2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1951
    invoke-static {v7, v3, v4, v5, v7}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method

.method private invokeRegisterModules(Ljava/util/Map;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "failReceiver":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 1896
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1897
    :cond_0
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1898
    const-string/jumbo v4, "[WXinvokeRegisterModulesBridgeManager] invokeRegisterModules: framework.js uninitialized."

    invoke-static {v4}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 1900
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1928
    :cond_2
    :goto_0
    return-void

    .line 1904
    :cond_3
    new-array v0, v5, [Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->toWsonOrJsonWXJSObject(Ljava/lang/Object;)Lcom/taobao/weex/bridge/WXJSObject;

    move-result-object v5

    aput-object v5, v0, v4

    .line 1906
    .local v0, "args":[Lcom/taobao/weex/bridge/WXJSObject;
    :try_start_0
    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    const-string/jumbo v5, ""

    const/4 v6, 0x0

    const-string/jumbo v7, "registerModules"

    invoke-interface {v4, v5, v6, v7, v0}, Lcom/taobao/weex/common/IWXBridge;->execJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1908
    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1909
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1910
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1911
    .local v3, "module":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 1912
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/taobao/weex/bridge/WXModuleManager;->resetModuleState(Ljava/lang/String;Z)V

    .line 1913
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[WXBridgeManager]invokeRegisterModules METHOD_REGISTER_MODULES success module:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1916
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "module":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1917
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v4, "Weex [invokeRegisterModules]"

    invoke-static {v4, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1919
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 1920
    .restart local v1    # "e":Ljava/lang/Throwable;
    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_REGISTER_MODULES:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v5, "invokeRegisterModules"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_REGISTER_MODULES:Lcom/taobao/weex/common/WXErrorCode;

    .line 1922
    invoke-virtual {v7}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " \n "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1923
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1920
    invoke-static {v8, v4, v5, v6, v8}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1926
    const-string/jumbo v4, "[WXBridgeManager] invokeRegisterModules:"

    invoke-static {v4, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private isJSFrameworkInit()Z
    .locals 1

    .prologue
    .line 262
    sget-boolean v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mInit:Z

    return v0
.end method

.method private mock(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 1418
    return-void
.end method

.method private onJsFrameWorkInitSuccees()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2706
    sget-object v1, Lcom/taobao/weex/bridge/WXBridgeManager;->mWeexCoreEnvOptions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2707
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v4, v1, v2}, Lcom/taobao/weex/common/IWXBridge;->registerCoreEnv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2709
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    sget-object v1, Lcom/taobao/weex/bridge/WXBridgeManager;->mWeexCoreEnvOptions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 2710
    return-void
.end method

.method private registerDomModule()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2099
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2100
    .local v0, "domMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "dom"

    sget-object v2, Lcom/taobao/weex/ui/module/WXDomModule;->METHODS:[Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2101
    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->registerModules(Ljava/util/Map;)V

    .line 2102
    return-void
.end method

.method private removeTaskByInstance(Ljava/lang/String;)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/bridge/WXHashMap;->removeFromMapAndStack(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    return-void
.end method

.method private sendMessage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "what"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 948
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 949
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 950
    iput p2, v0, Landroid/os/Message;->what:I

    .line 951
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 952
    return-void
.end method

.method private setJSFrameworkInit(Z)V
    .locals 1
    .param p1, "init"    # Z

    .prologue
    .line 266
    sput-boolean p1, Lcom/taobao/weex/bridge/WXBridgeManager;->mInit:Z

    .line 267
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->onJsFrameWorkInitSuccees()V

    .line 270
    :cond_0
    return-void
.end method

.method private trackComponentAndModulesTime()V
    .locals 1

    .prologue
    .line 1698
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$14;

    invoke-direct {v0, p0}, Lcom/taobao/weex/bridge/WXBridgeManager$14;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    .line 1706
    return-void
.end method

.method public static updateGlobalConfig(Ljava/lang/String;)V
    .locals 4
    .param p0, "config"    # Ljava/lang/String;

    .prologue
    .line 2115
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2116
    const-string/jumbo p0, "none"

    .line 2118
    :cond_0
    sget-object v1, Lcom/taobao/weex/bridge/WXBridgeManager;->globalConfig:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2119
    sput-object p0, Lcom/taobao/weex/bridge/WXBridgeManager;->globalConfig:Ljava/lang/String;

    .line 2120
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getCustomOptions()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/taobao/weex/bridge/WXBridgeManager;->GLOBAL_CONFIG_KEY:Ljava/lang/String;

    sget-object v3, Lcom/taobao/weex/bridge/WXBridgeManager;->globalConfig:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2121
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$18;

    invoke-direct {v0}, Lcom/taobao/weex/bridge/WXBridgeManager$18;-><init>()V

    .line 2139
    .local v0, "runnable":Ljava/lang/Runnable;
    sget-object v1, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-direct {v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2140
    sget-object v1, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    .line 2145
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_1
    :goto_0
    return-void

    .line 2142
    .restart local v0    # "runnable":Ljava/lang/Runnable;
    :cond_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method public varargs asyncCallJSEventVoidResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "instanceId"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 823
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$6;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager$6;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;[Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    .line 856
    return-void
.end method

.method public bindMeasurementToRenderObject(J)V
    .locals 1
    .param p1, "ptr"    # J

    .prologue
    .line 2611
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/common/IWXBridge;->bindMeasurementToRenderObject(J)V

    .line 2612
    return-void
.end method

.method public callAddElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;[F[F[FZ)I
    .locals 14
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "componentType"    # Ljava/lang/String;
    .param p3, "ref"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "parentRef"    # Ljava/lang/String;
    .param p9, "margins"    # [F
    .param p10, "paddings"    # [F
    .param p11, "borders"    # [F
    .param p12, "willLayout"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;[F[F[FZ)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2232
    .local p6, "styles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p7, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p8, "events":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2233
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2234
    :cond_0
    const-string/jumbo v2, "[WXBridgeManager] callAddElement: call CreateBody tasks is null"

    invoke-static {v2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 2235
    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v3, "callAddElement"

    const-string/jumbo v4, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    const/4 v5, 0x0

    invoke-static {p1, v2, v3, v4, v5}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2239
    const/4 v2, 0x0

    .line 2274
    :goto_0
    return v2

    .line 2242
    :cond_1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 2253
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2254
    const/4 v2, -0x1

    goto :goto_0

    .line 2258
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2259
    new-instance v1, Lcom/taobao/weex/ui/action/GraphicActionAddElement;

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move/from16 v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lcom/taobao/weex/ui/action/GraphicActionAddElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/util/Map;Ljava/util/Set;[F[F[F)V

    .line 2261
    .local v1, "action":Lcom/taobao/weex/ui/action/GraphicActionAddElement;
    if-eqz p12, :cond_4

    .line 2262
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Lcom/taobao/weex/WXSDKInstance;->addInActiveAddElementAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/GraphicActionAddElement;)V

    .line 2274
    .end local v1    # "action":Lcom/taobao/weex/ui/action/GraphicActionAddElement;
    :cond_3
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 2264
    .restart local v1    # "action":Lcom/taobao/weex/ui/action/GraphicActionAddElement;
    :cond_4
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2267
    .end local v1    # "action":Lcom/taobao/weex/ui/action/GraphicActionAddElement;
    :catch_0
    move-exception v13

    .line 2268
    .local v13, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "[WXBridgeManager] callAddElement exception: "

    invoke-static {v2, v13}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2269
    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v3, "callAddElement"

    .line 2271
    invoke-static {v13}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 2269
    invoke-static {p1, v2, v3, v4, v5}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method

.method public callAddEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "event"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2344
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 2352
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2353
    const/4 v1, -0x1

    .line 2369
    :goto_0
    return v1

    .line 2357
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2358
    new-instance v1, Lcom/taobao/weex/ui/action/GraphicActionAddEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/taobao/weex/ui/action/GraphicActionAddEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/taobao/weex/ui/action/GraphicActionAddEvent;->executeActionOnRender()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2368
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->getNextTick(Ljava/lang/String;)V

    .line 2369
    const/4 v1, 0x1

    goto :goto_0

    .line 2360
    :catch_0
    move-exception v0

    .line 2361
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "[WXBridgeManager] callAddEvent exception: "

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2362
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v2, "callAddEvent"

    .line 2364
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 2362
    invoke-static {p1, v1, v2, v3, v4}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method

.method public callAppendTreeCreateFinish(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2521
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 2528
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2529
    const/4 v2, -0x1

    .line 2542
    :goto_0
    return v2

    .line 2533
    :cond_0
    :try_start_0
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicActionAppendTreeCreateFinish;

    invoke-direct {v0, p1, p2}, Lcom/taobao/weex/ui/action/GraphicActionAppendTreeCreateFinish;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2534
    .local v0, "action":Lcom/taobao/weex/ui/action/GraphicActionAppendTreeCreateFinish;
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2542
    .end local v0    # "action":Lcom/taobao/weex/ui/action/GraphicActionAppendTreeCreateFinish;
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 2535
    :catch_0
    move-exception v1

    .line 2536
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "[WXBridgeManager] callAppendTreeCreateFinish exception: "

    invoke-static {v2, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2537
    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v3, "callAppendTreeCreateFinish"

    .line 2539
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 2537
    invoke-static {p1, v2, v3, v4, v5}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method

.method public callCreateBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;[F[F[F)I
    .locals 11
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "componentType"    # Ljava/lang/String;
    .param p3, "ref"    # Ljava/lang/String;
    .param p7, "margins"    # [F
    .param p8, "paddings"    # [F
    .param p9, "borders"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;[F[F[F)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2187
    .local p4, "styles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "events":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2190
    :cond_0
    const-string/jumbo v1, "[WXBridgeManager] callCreateBody: call CreateBody tasks is null"

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 2192
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v2, "callCreateBody"

    const-string/jumbo v3, "tasks is empty, INSTANCE_RENDERING_ERROR will be set"

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v3, v4}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2196
    const/4 v1, 0x0

    .line 2226
    :goto_0
    return v1

    .line 2199
    :cond_1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 2209
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2210
    const/4 v1, -0x1

    goto :goto_0

    .line 2214
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2215
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;[F[F[F)V

    .line 2217
    .local v0, "action":Lcom/taobao/weex/ui/action/BasicGraphicAction;
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2226
    .end local v0    # "action":Lcom/taobao/weex/ui/action/BasicGraphicAction;
    :cond_3
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 2219
    :catch_0
    move-exception v10

    .line 2220
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "[WXBridgeManager] callCreateBody exception: "

    invoke-static {v1, v10}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2221
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v2, "callCreateBody"

    .line 2223
    invoke-static {v10}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 2221
    invoke-static {p1, v1, v2, v3, v4}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method

.method public callCreateFinish(Ljava/lang/String;)I
    .locals 9
    .param p1, "instanceId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2546
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 2552
    iget-object v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2553
    const/4 v3, -0x1

    .line 2571
    :goto_0
    return v3

    .line 2557
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2558
    .local v4, "start":J
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    .line 2559
    .local v2, "instance":Lcom/taobao/weex/WXSDKInstance;
    if-eqz v2, :cond_1

    .line 2560
    invoke-virtual {v2, v4, v5}, Lcom/taobao/weex/WXSDKInstance;->firstScreenCreateInstanceTime(J)V

    .line 2561
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicActionCreateFinish;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/action/GraphicActionCreateFinish;-><init>(Ljava/lang/String;)V

    .line 2562
    .local v0, "action":Lcom/taobao/weex/ui/action/GraphicActionCreateFinish;
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2571
    .end local v0    # "action":Lcom/taobao/weex/ui/action/GraphicActionCreateFinish;
    .end local v2    # "instance":Lcom/taobao/weex/WXSDKInstance;
    .end local v4    # "start":J
    :cond_1
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 2564
    :catch_0
    move-exception v1

    .line 2565
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "[WXBridgeManager] callCreateFinish exception: "

    invoke-static {v3, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2566
    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v6, "callCreateFinish"

    .line 2568
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 2566
    invoke-static {p1, v3, v6, v7, v8}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method

.method public callHasTransitionPros(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)I
    .locals 4
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2685
    .local p3, "styles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 2686
    .local v0, "component":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getTransition()Lcom/taobao/weex/dom/transition/WXTransition;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getTransition()Lcom/taobao/weex/dom/transition/WXTransition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/dom/transition/WXTransition;->getProperties()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2687
    :cond_0
    const/4 v2, -0x1

    .line 2695
    :goto_0
    return v2

    .line 2690
    :cond_1
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getTransition()Lcom/taobao/weex/dom/transition/WXTransition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/dom/transition/WXTransition;->getProperties()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2691
    .local v1, "property":Ljava/lang/String;
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2692
    const/4 v2, 0x1

    goto :goto_0

    .line 2695
    .end local v1    # "property":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public callLayout(Ljava/lang/String;Ljava/lang/String;IIIIIII)I
    .locals 11
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "top"    # I
    .param p4, "bottom"    # I
    .param p5, "left"    # I
    .param p6, "right"    # I
    .param p7, "height"    # I
    .param p8, "width"    # I
    .param p9, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2463
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2464
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2465
    :cond_0
    const-string/jumbo v7, "[WXBridgeManager] callLayout: call callLayout arguments is null"

    invoke-static {v7}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 2466
    sget-object v7, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v8, "callLayout"

    const-string/jumbo v9, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    const/4 v10, 0x0

    invoke-static {p1, v7, v8, v9, v10}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2470
    const/4 v7, 0x0

    .line 2517
    :goto_0
    return v7

    .line 2473
    :cond_1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 2484
    iget-object v7, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2485
    const/4 v7, -0x1

    goto :goto_0

    .line 2489
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 2490
    new-instance v6, Lcom/taobao/weex/ui/action/GraphicSize;

    move/from16 v0, p8

    int-to-float v7, v0

    move/from16 v0, p7

    int-to-float v8, v0

    invoke-direct {v6, v7, v8}, Lcom/taobao/weex/ui/action/GraphicSize;-><init>(FF)V

    .line 2491
    .local v6, "size":Lcom/taobao/weex/ui/action/GraphicSize;
    new-instance v5, Lcom/taobao/weex/ui/action/GraphicPosition;

    move/from16 v0, p5

    int-to-float v7, v0

    int-to-float v8, p3

    move/from16 v0, p6

    int-to-float v9, v0

    int-to-float v10, p4

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/taobao/weex/ui/action/GraphicPosition;-><init>(FFFF)V

    .line 2492
    .local v5, "position":Lcom/taobao/weex/ui/action/GraphicPosition;
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/taobao/weex/WXSDKInstance;->getInActiveAddElementAction(Ljava/lang/String;)Lcom/taobao/weex/ui/action/GraphicActionAddElement;

    move-result-object v2

    .line 2493
    .local v2, "addAction":Lcom/taobao/weex/ui/action/GraphicActionAddElement;
    if-eqz v2, :cond_5

    .line 2494
    invoke-virtual {v2, v6}, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->setSize(Lcom/taobao/weex/ui/action/GraphicSize;)V

    .line 2495
    invoke-virtual {v2, v5}, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->setPosition(Lcom/taobao/weex/ui/action/GraphicPosition;)V

    .line 2496
    const-string/jumbo v7, "_root"

    invoke-static {p2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2497
    move/from16 v0, p9

    invoke-virtual {v2, v0}, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->setIndex(I)V

    .line 2499
    :cond_3
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v7

    invoke-virtual {v7, p1, v2}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V

    .line 2500
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    .line 2501
    .local v4, "instance":Lcom/taobao/weex/WXSDKInstance;
    if-eqz v4, :cond_4

    .line 2502
    invoke-virtual {v4, p2}, Lcom/taobao/weex/WXSDKInstance;->removeInActiveAddElmentAction(Ljava/lang/String;)V

    .line 2517
    .end local v2    # "addAction":Lcom/taobao/weex/ui/action/GraphicActionAddElement;
    .end local v4    # "instance":Lcom/taobao/weex/WXSDKInstance;
    .end local v5    # "position":Lcom/taobao/weex/ui/action/GraphicPosition;
    .end local v6    # "size":Lcom/taobao/weex/ui/action/GraphicSize;
    :cond_4
    :goto_1
    const/4 v7, 0x1

    goto :goto_0

    .line 2506
    .restart local v2    # "addAction":Lcom/taobao/weex/ui/action/GraphicActionAddElement;
    .restart local v5    # "position":Lcom/taobao/weex/ui/action/GraphicPosition;
    .restart local v6    # "size":Lcom/taobao/weex/ui/action/GraphicSize;
    :cond_5
    new-instance v1, Lcom/taobao/weex/ui/action/GraphicActionLayout;

    invoke-direct {v1, p1, p2, v5, v6}, Lcom/taobao/weex/ui/action/GraphicActionLayout;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/ui/action/GraphicPosition;Lcom/taobao/weex/ui/action/GraphicSize;)V

    .line 2507
    .local v1, "action":Lcom/taobao/weex/ui/action/BasicGraphicAction;
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v7

    invoke-virtual {v1}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2510
    .end local v1    # "action":Lcom/taobao/weex/ui/action/BasicGraphicAction;
    .end local v2    # "addAction":Lcom/taobao/weex/ui/action/GraphicActionAddElement;
    .end local v5    # "position":Lcom/taobao/weex/ui/action/GraphicPosition;
    .end local v6    # "size":Lcom/taobao/weex/ui/action/GraphicSize;
    :catch_0
    move-exception v3

    .line 2511
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "[WXBridgeManager] callLayout exception: "

    invoke-static {v7, v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2512
    sget-object v7, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v8, "callLayout"

    .line 2514
    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 2512
    invoke-static {p1, v7, v8, v9, v10}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method

.method public callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
    .locals 6
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "moduleStr"    # Ljava/lang/String;
    .param p3, "methodStr"    # Ljava/lang/String;
    .param p4, "args"    # Lcom/alibaba/fastjson/JSONArray;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 318
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;
    .locals 8
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "moduleStr"    # Ljava/lang/String;
    .param p3, "methodStr"    # Ljava/lang/String;
    .param p4, "args"    # Lcom/alibaba/fastjson/JSONArray;
    .param p5, "options"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 322
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    .line 323
    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    .line 324
    .local v1, "wxsdkInstance":Lcom/taobao/weex/WXSDKInstance;
    if-nez v1, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-object v6

    .line 327
    :cond_1
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->isNeedValidate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 328
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getValidateProcessor()Lcom/taobao/weex/bridge/WXValidateProcessor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 330
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getValidateProcessor()Lcom/taobao/weex/bridge/WXValidateProcessor;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 331
    invoke-interface/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXValidateProcessor;->onModuleValidate(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/weex/bridge/WXValidateProcessor$WXModuleValidateResult;

    move-result-object v7

    .line 332
    .local v7, "validateResult":Lcom/taobao/weex/bridge/WXValidateProcessor$WXModuleValidateResult;
    if-eqz v7, :cond_0

    .line 335
    iget-boolean v0, v7, Lcom/taobao/weex/bridge/WXValidateProcessor$WXModuleValidateResult;->isSuccess:Z

    if-eqz v0, :cond_2

    .line 336
    invoke-static {p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXModuleManager;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 339
    :cond_2
    iget-object v6, v7, Lcom/taobao/weex/bridge/WXValidateProcessor$WXModuleValidateResult;->validateInfo:Lcom/alibaba/fastjson/JSONObject;

    .line 340
    .local v6, "validateInfo":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v6, :cond_0

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[WXBridgeManager] module validate fail. >>> "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 346
    .end local v6    # "validateInfo":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "validateResult":Lcom/taobao/weex/bridge/WXValidateProcessor$WXModuleValidateResult;
    :cond_3
    invoke-static {p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXModuleManager;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0
.end method

.method public callMoveElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "parentref"    # Ljava/lang/String;
    .param p4, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2314
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 2323
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2324
    const/4 v2, -0x1

    .line 2339
    :goto_0
    return v2

    .line 2328
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2329
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicActionMoveElement;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/action/GraphicActionMoveElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2330
    .local v0, "action":Lcom/taobao/weex/ui/action/BasicGraphicAction;
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2339
    .end local v0    # "action":Lcom/taobao/weex/ui/action/BasicGraphicAction;
    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 2332
    :catch_0
    move-exception v1

    .line 2333
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "[WXBridgeManager] callMoveElement exception: "

    invoke-static {v2, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2334
    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v3, "callMoveElement"

    .line 2336
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 2334
    invoke-static {p1, v2, v3, v4, v5}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method

.method public callNative(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;)I
    .locals 20
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "tasks"    # Lcom/alibaba/fastjson/JSONArray;
    .param p3, "callback"    # Ljava/lang/String;

    .prologue
    .line 522
    if-nez p2, :cond_0

    .line 523
    const-string/jumbo v13, "[WXBridgeManager] callNative: call Native tasks is null"

    .line 524
    .local v13, "err":Ljava/lang/String;
    invoke-static {v13}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 525
    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v5, "callNative"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "| INSTANCE_RENDERING_ERROR will be set"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5, v6, v7}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 529
    const/4 v4, 0x0

    .line 586
    .end local v13    # "err":Ljava/lang/String;
    :goto_0
    return v4

    .line 532
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 539
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 540
    const/4 v4, -0x1

    goto :goto_0

    .line 544
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    .line 545
    .local v16, "parseNanos":J
    move-object/from16 v10, p2

    .line 546
    .local v10, "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v16, v4, v16

    .line 548
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 549
    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v18

    .line 552
    .local v18, "size":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move/from16 v0, v18

    if-ge v14, v0, :cond_4

    .line 553
    :try_start_0
    invoke-virtual {v10, v14}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/alibaba/fastjson/JSONObject;

    .line 554
    .local v19, "task":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v19, :cond_2

    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 555
    const-string/jumbo v4, "module"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 556
    .local v15, "module":Ljava/lang/Object;
    if-eqz v15, :cond_6

    .line 557
    const-string/jumbo v4, "dom"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 558
    invoke-static/range {p1 .. p1}, Lcom/taobao/weex/bridge/WXModuleManager;->getDomModule(Ljava/lang/String;)Lcom/taobao/weex/ui/module/WXDomModule;

    move-result-object v11

    .line 559
    .local v11, "dom":Lcom/taobao/weex/ui/module/WXDomModule;
    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide v16, v4, v5

    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v4}, Lcom/taobao/weex/ui/module/WXDomModule;->callDomMethod(Lcom/alibaba/fastjson/JSONObject;[J)V

    .line 552
    .end local v11    # "dom":Lcom/taobao/weex/ui/module/WXDomModule;
    .end local v15    # "module":Ljava/lang/Object;
    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 561
    .restart local v15    # "module":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v4, "options"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    .line 562
    .local v9, "optionObj":Lcom/alibaba/fastjson/JSONObject;
    move-object v0, v15

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    const-string/jumbo v4, "method"

    .line 563
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v4, "args"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/fastjson/JSONArray;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 562
    invoke-virtual/range {v4 .. v9}, Lcom/taobao/weex/bridge/WXBridgeManager;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 573
    .end local v9    # "optionObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v15    # "module":Ljava/lang/Object;
    .end local v19    # "task":Lcom/alibaba/fastjson/JSONObject;
    :catch_0
    move-exception v12

    .line 574
    .local v12, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "[WXBridgeManager] callNative exception: "

    invoke-static {v4, v12}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 575
    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v5, "callNative"

    .line 577
    invoke-static {v12}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 575
    move-object/from16 v0, p1

    invoke-static {v0, v4, v5, v6, v7}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 581
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v14    # "i":I
    .end local v18    # "size":I
    :cond_4
    const-string/jumbo v4, "undefined"

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "-1"

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 582
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 565
    .restart local v14    # "i":I
    .restart local v15    # "module":Ljava/lang/Object;
    .restart local v18    # "size":I
    .restart local v19    # "task":Lcom/alibaba/fastjson/JSONObject;
    :cond_6
    :try_start_1
    const-string/jumbo v4, "component"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 566
    invoke-static/range {p1 .. p1}, Lcom/taobao/weex/bridge/WXModuleManager;->getDomModule(Ljava/lang/String;)Lcom/taobao/weex/ui/module/WXDomModule;

    move-result-object v11

    .line 567
    .restart local v11    # "dom":Lcom/taobao/weex/ui/module/WXDomModule;
    const-string/jumbo v4, "ref"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "method"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "args"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v11, v4, v5, v6}, Lcom/taobao/weex/ui/module/WXDomModule;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V

    goto/16 :goto_2

    .line 569
    .end local v11    # "dom":Lcom/taobao/weex/ui/module/WXDomModule;
    :cond_7
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "unknown callNative"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 585
    .end local v14    # "i":I
    .end local v15    # "module":Ljava/lang/Object;
    .end local v18    # "size":I
    .end local v19    # "task":Lcom/alibaba/fastjson/JSONObject;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->getNextTick(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public callNativeComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "componentRef"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "arguments"    # Lcom/alibaba/fastjson/JSONArray;
    .param p5, "options"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 496
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 503
    :try_start_0
    invoke-static {p1}, Lcom/taobao/weex/bridge/WXModuleManager;->getDomModule(Ljava/lang/String;)Lcom/taobao/weex/ui/module/WXDomModule;

    move-result-object v0

    .line 504
    .local v0, "dom":Lcom/taobao/weex/ui/module/WXDomModule;
    invoke-virtual {v0, p2, p3, p4}, Lcom/taobao/weex/ui/module/WXDomModule;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    .end local v0    # "dom":Lcom/taobao/weex/ui/module/WXDomModule;
    :goto_0
    return-object v5

    .line 505
    :catch_0
    move-exception v1

    .line 506
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "[WXBridgeManager] callNative exception: "

    invoke-static {v2, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 507
    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v3, "callNativeComponent"

    .line 509
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .line 507
    invoke-static {p1, v2, v3, v4, v5}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public callNativeModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;
    .locals 6
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "arguments"    # Lcom/alibaba/fastjson/JSONArray;
    .param p5, "options"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 465
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 473
    :try_start_0
    const-string/jumbo v4, "dom"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 474
    invoke-static {p1}, Lcom/taobao/weex/bridge/WXModuleManager;->getDomModule(Ljava/lang/String;)Lcom/taobao/weex/ui/module/WXDomModule;

    move-result-object v0

    .line 475
    .local v0, "dom":Lcom/taobao/weex/ui/module/WXDomModule;
    if-eqz v0, :cond_0

    .line 476
    const/4 v4, 0x0

    new-array v4, v4, [J

    invoke-virtual {v0, p3, p4, v4}, Lcom/taobao/weex/ui/module/WXDomModule;->callDomMethod(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;[J)Ljava/lang/Object;

    move-result-object v3

    .line 492
    .end local v0    # "dom":Lcom/taobao/weex/ui/module/WXDomModule;
    :goto_0
    return-object v3

    .line 478
    .restart local v0    # "dom":Lcom/taobao/weex/ui/module/WXDomModule;
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/bridge/WXModuleManager;->createDomModule(Lcom/taobao/weex/WXSDKInstance;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 484
    .end local v0    # "dom":Lcom/taobao/weex/ui/module/WXDomModule;
    :catch_0
    move-exception v1

    .line 485
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[WXBridgeManager] callNative exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, "err":Ljava/lang/String;
    invoke-static {v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 487
    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v5, "callNativeModule"

    invoke-static {p1, v4, v5, v2, v3}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 481
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "err":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual/range {p0 .. p5}, Lcom/taobao/weex/bridge/WXBridgeManager;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0
.end method

.method public callNativeModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "arguments"    # Lcom/alibaba/fastjson/JSONArray;
    .param p5, "options"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 437
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 445
    :try_start_0
    const-string/jumbo v4, "dom"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 446
    invoke-static {p1}, Lcom/taobao/weex/bridge/WXModuleManager;->getDomModule(Ljava/lang/String;)Lcom/taobao/weex/ui/module/WXDomModule;

    move-result-object v0

    .line 447
    .local v0, "dom":Lcom/taobao/weex/ui/module/WXDomModule;
    const/4 v4, 0x0

    new-array v4, v4, [J

    invoke-virtual {v0, p3, p4, v4}, Lcom/taobao/weex/ui/module/WXDomModule;->callDomMethod(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;[J)Ljava/lang/Object;

    move-result-object v3

    .line 460
    .end local v0    # "dom":Lcom/taobao/weex/ui/module/WXDomModule;
    :goto_0
    return-object v3

    .line 449
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 452
    :catch_0
    move-exception v1

    .line 453
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[WXBridgeManager] callNative exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 454
    .local v2, "err":Ljava/lang/String;
    invoke-static {v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 455
    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v5, "callNativeModule"

    invoke-static {p1, v4, v5, v2, v3}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public callRefreshFinish(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 625
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 632
    iget-object v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 633
    const/4 v3, -0x1

    .line 654
    :goto_0
    return v3

    .line 637
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    .line 638
    .local v2, "instance":Lcom/taobao/weex/WXSDKInstance;
    if-eqz v2, :cond_1

    .line 639
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicActionRefreshFinish;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/action/GraphicActionRefreshFinish;-><init>(Ljava/lang/String;)V

    .line 640
    .local v0, "action":Lcom/taobao/weex/ui/action/GraphicActionRefreshFinish;
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    .end local v0    # "action":Lcom/taobao/weex/ui/action/GraphicActionRefreshFinish;
    .end local v2    # "instance":Lcom/taobao/weex/WXSDKInstance;
    :cond_1
    :goto_1
    const-string/jumbo v3, "undefined"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "-1"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 650
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 642
    :catch_0
    move-exception v1

    .line 643
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "[WXBridgeManager] callRefreshFinish exception: "

    invoke-static {v3, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 644
    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v4, "callRefreshFinish"

    .line 646
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 644
    invoke-static {p1, v3, v4, v5, v6}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 653
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->getNextTick(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public callRemoveElement(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2279
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 2286
    iget-object v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2287
    const/4 v3, -0x1

    .line 2309
    :goto_0
    return v3

    .line 2291
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    .line 2292
    .local v2, "instance":Lcom/taobao/weex/WXSDKInstance;
    if-eqz v2, :cond_1

    .line 2293
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicActionRemoveElement;

    invoke-direct {v0, p1, p2}, Lcom/taobao/weex/ui/action/GraphicActionRemoveElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2294
    .local v0, "action":Lcom/taobao/weex/ui/action/BasicGraphicAction;
    invoke-virtual {v2, p2}, Lcom/taobao/weex/WXSDKInstance;->getInActiveAddElementAction(Ljava/lang/String;)Lcom/taobao/weex/ui/action/GraphicActionAddElement;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2295
    invoke-virtual {v2, p2}, Lcom/taobao/weex/WXSDKInstance;->removeInActiveAddElmentAction(Ljava/lang/String;)V

    .line 2309
    .end local v0    # "action":Lcom/taobao/weex/ui/action/BasicGraphicAction;
    .end local v2    # "instance":Lcom/taobao/weex/WXSDKInstance;
    :cond_1
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 2298
    .restart local v0    # "action":Lcom/taobao/weex/ui/action/BasicGraphicAction;
    .restart local v2    # "instance":Lcom/taobao/weex/WXSDKInstance;
    :cond_2
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v3

    .line 2299
    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2302
    .end local v0    # "action":Lcom/taobao/weex/ui/action/BasicGraphicAction;
    .end local v2    # "instance":Lcom/taobao/weex/WXSDKInstance;
    :catch_0
    move-exception v1

    .line 2303
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "[WXBridgeManager] callRemoveElement exception: "

    invoke-static {v3, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2304
    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v4, "callRemoveElement"

    .line 2306
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 2304
    invoke-static {p1, v3, v4, v5, v6}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method

.method public callRemoveEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "event"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2374
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 2382
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2383
    const/4 v1, -0x1

    .line 2399
    :goto_0
    return v1

    .line 2387
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2388
    new-instance v1, Lcom/taobao/weex/ui/action/GraphicActionRemoveEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/taobao/weex/ui/action/GraphicActionRemoveEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/taobao/weex/ui/action/GraphicActionRemoveEvent;->executeActionOnRender()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2398
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->getNextTick(Ljava/lang/String;)V

    .line 2399
    const/4 v1, 0x1

    goto :goto_0

    .line 2390
    :catch_0
    move-exception v0

    .line 2391
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "[WXBridgeManager] callRemoveEvent exception: "

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2392
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v2, "callAddEvent"

    .line 2394
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 2392
    invoke-static {p1, v1, v2, v3, v4}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method

.method public callRenderSuccess(Ljava/lang/String;)I
    .locals 7
    .param p1, "instanceId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2575
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 2581
    iget-object v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2582
    const/4 v3, -0x1

    .line 2598
    :goto_0
    return v3

    .line 2586
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    .line 2587
    .local v2, "instance":Lcom/taobao/weex/WXSDKInstance;
    if-eqz v2, :cond_1

    .line 2588
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicActionRenderSuccess;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/action/GraphicActionRenderSuccess;-><init>(Ljava/lang/String;)V

    .line 2589
    .local v0, "action":Lcom/taobao/weex/ui/action/GraphicActionRenderSuccess;
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2598
    .end local v0    # "action":Lcom/taobao/weex/ui/action/GraphicActionRenderSuccess;
    .end local v2    # "instance":Lcom/taobao/weex/WXSDKInstance;
    :cond_1
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 2591
    :catch_0
    move-exception v1

    .line 2592
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "[WXBridgeManager] callRenderSuccess exception: "

    invoke-static {v3, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2593
    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v4, "callCreateFinish"

    .line 2595
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 2593
    invoke-static {p1, v3, v4, v5, v6}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method

.method public callReportCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "crashFile"    # Ljava/lang/String;
    .param p2, "instanceId"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 721
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 722
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyyMMddHHmmss"

    invoke-direct {v1, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 723
    .local v1, "format":Ljava/text/DateFormat;
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 724
    .local v6, "time":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 725
    .local v4, "origin_filename":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 726
    .local v3, "oldfile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 727
    .local v2, "newfile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 728
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 730
    :cond_0
    new-instance v5, Ljava/lang/Thread;

    new-instance v7, Lcom/taobao/weex/bridge/WXBridgeManager$3;

    invoke-direct {v7, p0, v4, p2, p3}, Lcom/taobao/weex/bridge/WXBridgeManager$3;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 765
    .local v5, "t":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 766
    return-void
.end method

.method public callReportCrashReloadPage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "crashFile"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 660
    const/4 v3, 0x0

    .line 661
    .local v3, "url":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    .line 662
    .local v1, "instance":Lcom/taobao/weex/WXSDKInstance;
    if-eqz v1, :cond_0

    .line 663
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 666
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 667
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p2

    .line 673
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {p0, p2, p1, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->callReportCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    sget v5, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    const/16 v6, 0x32

    if-le v5, v6, :cond_4

    .line 703
    .end local v1    # "instance":Lcom/taobao/weex/WXSDKInstance;
    :cond_2
    :goto_1
    return v4

    .line 670
    .restart local v1    # "instance":Lcom/taobao/weex/WXSDKInstance;
    :catch_0
    move-exception v0

    .line 671
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 686
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "instance":Lcom/taobao/weex/WXSDKInstance;
    :catch_1
    move-exception v0

    .line 687
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "[WXBridgeManager] callReportCrashReloadPage exception: "

    invoke-static {v5, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 691
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 693
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v5

    .line 692
    invoke-virtual {p0, v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->shouReloadCurrentInstance(Ljava/lang/String;)Z

    move-result v2

    .line 694
    .local v2, "reloadThisInstance":Z
    new-instance v5, Lcom/taobao/weex/ui/action/ActionReloadPage;

    invoke-direct {v5, p1, v2}, Lcom/taobao/weex/ui/action/ActionReloadPage;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v5}, Lcom/taobao/weex/ui/action/ActionReloadPage;->executeAction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 697
    .end local v2    # "reloadThisInstance":Z
    :catch_2
    move-exception v0

    .line 698
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "[WXBridgeManager] callReloadPage exception: "

    invoke-static {v5, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 699
    sget-object v5, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v6, "callReloadPage"

    .line 701
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 699
    invoke-static {p1, v5, v6, v7, v8}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 677
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "instance":Lcom/taobao/weex/WXSDKInstance;
    :cond_4
    :try_start_4
    sget v5, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    .line 679
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->setJSFrameworkInit(Z)V

    .line 680
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->resetAllModuleState()V

    .line 681
    const-string/jumbo v5, ""

    invoke-virtual {p0, v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->initScriptsFramework(Ljava/lang/String;)V

    .line 683
    iget-object v5, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v5

    if-eqz v5, :cond_3

    .line 684
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public callUpdateAttrs(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)I
    .locals 6
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2436
    .local p3, "attrs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 2443
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2444
    const/4 v2, -0x1

    .line 2459
    :goto_0
    return v2

    .line 2448
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2449
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicActionUpdateAttr;

    invoke-direct {v0, p1, p2, p3}, Lcom/taobao/weex/ui/action/GraphicActionUpdateAttr;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2450
    .local v0, "action":Lcom/taobao/weex/ui/action/BasicGraphicAction;
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2459
    .end local v0    # "action":Lcom/taobao/weex/ui/action/BasicGraphicAction;
    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 2452
    :catch_0
    move-exception v1

    .line 2453
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "[WXBridgeManager] callUpdateAttrs exception: "

    invoke-static {v2, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2454
    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v3, "callUpdateAttrs"

    .line 2456
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 2454
    invoke-static {p1, v2, v3, v4, v5}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method

.method public callUpdateFinish(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 591
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 598
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 599
    const/4 v1, -0x1

    .line 620
    :goto_0
    return v1

    .line 603
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :goto_1
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "undefined"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "-1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 616
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 608
    :catch_0
    move-exception v0

    .line 609
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "[WXBridgeManager] callUpdateFinish exception: "

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 610
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v2, "callUpdateFinish"

    .line 612
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 610
    invoke-static {p1, v1, v2, v3, v4}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 619
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->getNextTick(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public callUpdateStyle(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)I
    .locals 8
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2406
    .local p3, "styles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "paddings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "margins":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "borders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 2416
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2417
    const/4 v1, -0x1

    .line 2432
    :goto_0
    return v1

    .line 2421
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2422
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 2423
    .local v0, "action":Lcom/taobao/weex/ui/action/BasicGraphicAction;
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2432
    .end local v0    # "action":Lcom/taobao/weex/ui/action/BasicGraphicAction;
    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 2425
    :catch_0
    move-exception v7

    .line 2426
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "[WXBridgeManager] callUpdateStyle exception: "

    invoke-static {v1, v7}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2427
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v2, "callUpdateStyle"

    .line 2429
    invoke-static {v7}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 2427
    invoke-static {p1, v1, v2, v3, v4}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method

.method public callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/Object;
    .param p4, "keepAlive"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1059
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->callbackJavascript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 1060
    return-void
.end method

.method public callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1036
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 1037
    return-void
.end method

.method public callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1045
    .local p3, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 1046
    return-void
.end method

.method callbackJavascript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 4
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/Object;
    .param p4, "keepAlive"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1072
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 1079
    :cond_0
    :goto_0
    return-void

    .line 1077
    :cond_1
    const-string/jumbo v0, "callback"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, p1, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->addJSTask(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1078
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->sendMessage(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public commitJscCrashAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "errorCode"    # Lcom/taobao/weex/common/WXErrorCode;
    .param p3, "errMsg"    # Ljava/lang/String;
    .param p4, "instanceId"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 1154
    :cond_0
    :goto_0
    return-void

    .line 1142
    :cond_1
    const-string/jumbo v4, "callReportCrash"

    .line 1143
    .local v4, "method":Ljava/lang/String;
    const-string/jumbo v5, "weex core process crash and restart exception"

    .line 1144
    .local v5, "exception":Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1145
    .local v6, "extParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "jscCrashStack"

    invoke-interface {v6, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getIWXJSExceptionAdapter()Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

    move-result-object v7

    .line 1147
    .local v7, "adapter":Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;
    if-eqz v7, :cond_0

    .line 1148
    new-instance v0, Lcom/taobao/weex/common/WXJSExceptionInfo;

    move-object v1, p4

    move-object v2, p5

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/taobao/weex/common/WXJSExceptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1149
    .local v0, "jsException":Lcom/taobao/weex/common/WXJSExceptionInfo;
    invoke-interface {v7, v0}, Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;->onJSException(Lcom/taobao/weex/common/WXJSExceptionInfo;)V

    .line 1151
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXJSExceptionInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "template"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1161
    .local p3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    .line 1162
    .local v2, "instance":Lcom/taobao/weex/WXSDKInstance;
    if-nez v2, :cond_0

    .line 1163
    const-string/jumbo v0, "WXBridgeManager"

    const-string/jumbo v1, "createInstance failed, SDKInstance is not exist"

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    :goto_0
    return-void

    .line 1166
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 1167
    :cond_1
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1168
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1169
    invoke-virtual {v3}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " instanceId=="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " template =="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " mJSHandler== "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    .line 1170
    invoke-virtual {v3}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1167
    invoke-virtual {v2, v0, v1}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1175
    :cond_2
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    sget-boolean v0, Lcom/taobao/weex/WXEnvironment;->sDebugServerConnectable:Z

    if-nez v0, :cond_3

    .line 1176
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1177
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1178
    invoke-virtual {v3}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " isJSFrameworkInit=="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1179
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " reInitCount == 1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1176
    invoke-virtual {v2, v0, v1}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$10;

    invoke-direct {v0, p0}, Lcom/taobao/weex/bridge/WXBridgeManager$10;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V

    invoke-virtual {p0, v0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1189
    :cond_3
    invoke-static {v2}, Lcom/taobao/weex/bridge/WXModuleManager;->createDomModule(Lcom/taobao/weex/WXSDKInstance;)V

    .line 1190
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$11;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager$11;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 1962
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    if-eqz v0, :cond_0

    .line 1963
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXThread;->quit()Z

    .line 1965
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    .line 1966
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1967
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1970
    :cond_1
    return-void
.end method

.method public destroyInstance(Ljava/lang/String;)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1422
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1437
    :cond_0
    :goto_0
    return-void

    .line 1425
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1426
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1429
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1430
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$12;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager$12;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public execJSService(Ljava/lang/String;)V
    .locals 1
    .param p1, "service"    # Ljava/lang/String;

    .prologue
    .line 1859
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$17;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager$17;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    .line 1865
    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 970
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 971
    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 985
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "domChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {p0 .. p5}, Lcom/taobao/weex/bridge/WXBridgeManager;->fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 986
    return-void
.end method

.method public fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 8
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "domChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 993
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/weex/bridge/WXBridgeManager;->fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/taobao/weex/bridge/EventResult;)V

    .line 994
    return-void
.end method

.method public fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    .locals 8
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1002
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "domChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p6, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/weex/bridge/WXBridgeManager;->fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/taobao/weex/bridge/EventResult;)V

    .line 1003
    return-void
.end method

.method public fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/taobao/weex/bridge/EventResult;)V
    .locals 8
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p7, "callback"    # Lcom/taobao/weex/bridge/EventResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/bridge/EventResult;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "domChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p6, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1008
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1009
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 1022
    :cond_0
    :goto_0
    return-void

    .line 1012
    :cond_1
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->checkMainThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1013
    new-instance v0, Lcom/taobao/weex/common/WXRuntimeException;

    const-string/jumbo v1, "fireEvent must be called by main thread"

    invoke-direct {v0, v1}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1016
    :cond_2
    if-nez p7, :cond_3

    .line 1017
    const-string/jumbo v0, "fireEvent"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    aput-object p3, v1, v4

    aput-object p4, v1, v6

    aput-object p5, v1, v7

    invoke-direct {p0, v0, p1, p6, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->addJSEventTask(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V

    .line 1018
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->sendMessage(Ljava/lang/String;I)V

    goto :goto_0

    .line 1020
    :cond_3
    const-string/jumbo v2, "fireEventSync"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p2, v5, v3

    aput-object p3, v5, v4

    aput-object p4, v5, v6

    aput-object p5, v5, v7

    move-object v0, p0

    move-object v1, p7

    move-object v3, p1

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->asyncCallJSEventWithResult(Lcom/taobao/weex/bridge/EventResult;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public forceLayout(Ljava/lang/String;)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 2627
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->forceLayout(Ljava/lang/String;)V

    .line 2628
    return-void
.end method

.method public getBundleType(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "temp"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v7, 0x1f4

    .line 1360
    if-eqz p1, :cond_3

    .line 1361
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1362
    .local v5, "uri":Landroid/net/Uri;
    const-string/jumbo v6, "bundleType"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1363
    .local v4, "type":Ljava/lang/String;
    const-string/jumbo v6, "Vue"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "vue"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1364
    :cond_0
    sget-object v6, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Vue:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    .line 1412
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v6

    .line 1365
    .restart local v4    # "type":Ljava/lang/String;
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_1
    const-string/jumbo v6, "Rax"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "rax"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1366
    :cond_2
    sget-object v6, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Rax:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    goto :goto_0

    .line 1369
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_3
    if-eqz p2, :cond_e

    .line 1370
    const-string/jumbo v6, "// { \"framework\": \"Vue\" }"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "// { \"framework\": \"vue\" }"

    .line 1371
    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "// {\"framework\" : \"Vue\"}"

    .line 1372
    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "// {\"framework\" : \"vue\"}"

    .line 1373
    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1374
    :cond_4
    sget-object v6, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Vue:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    goto :goto_0

    .line 1375
    :cond_5
    const-string/jumbo v6, "// { \"framework\": \"Rax\" }"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "// { \"framework\": \"rax\" }"

    .line 1376
    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "// {\"framework\" : \"Rax\"}"

    .line 1377
    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "// {\"framework\" : \"rax\"}"

    .line 1378
    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1379
    :cond_6
    sget-object v6, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Rax:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    goto :goto_0

    .line 1381
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_8

    .line 1382
    const/4 v6, 0x0

    const/16 v7, 0x1f4

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1384
    :cond_8
    const-string/jumbo v6, "\n"

    const-string/jumbo v7, ""

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1385
    .local v3, "strTrim":Ljava/lang/String;
    const-string/jumbo v6, "// { \"framework\": \"Vue\" }"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string/jumbo v6, "// { \"framework\": \"vue\" }"

    .line 1386
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string/jumbo v6, "// {\"framework\" : \"Vue\"}"

    .line 1387
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string/jumbo v6, "// {\"framework\" : \"vue\"}"

    .line 1388
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1389
    :cond_9
    sget-object v6, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Vue:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    goto/16 :goto_0

    .line 1390
    :cond_a
    const-string/jumbo v6, "// { \"framework\": \"Rax\" }"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string/jumbo v6, "// { \"framework\": \"rax\" }"

    .line 1391
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string/jumbo v6, "// {\"framework\" : \"Rax\"}"

    .line 1392
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string/jumbo v6, "// {\"framework\" : \"rax\"}"

    .line 1393
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1394
    :cond_b
    sget-object v6, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Rax:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    goto/16 :goto_0

    .line 1397
    :cond_c
    const-string/jumbo v2, "(use)(\\s+)(weex:vue)"

    .line 1398
    .local v2, "regEx":Ljava/lang/String;
    const/4 v6, 0x2

    invoke-static {v2, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1399
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1400
    sget-object v6, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Vue:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    goto/16 :goto_0

    .line 1402
    :cond_d
    const-string/jumbo v2, "(use)(\\s+)(weex:rax)"

    .line 1403
    const/4 v6, 0x2

    invoke-static {v2, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1404
    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1405
    sget-object v6, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Rax:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    goto/16 :goto_0

    .line 1409
    .end local v1    # "pattern":Ljava/util/regex/Pattern;
    .end local v2    # "regEx":Ljava/lang/String;
    .end local v3    # "strTrim":Ljava/lang/String;
    :cond_e
    sget-object v6, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Others:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1410
    :catch_0
    move-exception v0

    .line 1411
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1412
    sget-object v6, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Others:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    goto/16 :goto_0
.end method

.method public getFirstScreenRenderTime(Ljava/lang/String;)[J
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 2661
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->getFirstScreenRenderTime(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method public getInitParams()Lcom/taobao/weex/bridge/WXParams;
    .locals 1

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mInitParams:Lcom/taobao/weex/bridge/WXParams;

    return-object v0
.end method

.method public getJSLooper()Landroid/os/Looper;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2150
    const/4 v0, 0x0

    .line 2151
    .local v0, "ret":Landroid/os/Looper;
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    if-eqz v1, :cond_0

    .line 2152
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2154
    :cond_0
    return-object v0
.end method

.method public getMeasurementFunc(Ljava/lang/String;J)Lcom/taobao/weex/layout/ContentBoxMeasurement;
    .locals 4
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "renderObjectPtr"    # J

    .prologue
    .line 2602
    const/4 v0, 0x0

    .line 2603
    .local v0, "contentBoxMeasurement":Lcom/taobao/weex/layout/ContentBoxMeasurement;
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    .line 2604
    .local v1, "instance":Lcom/taobao/weex/WXSDKInstance;
    if-eqz v1, :cond_0

    .line 2605
    invoke-virtual {v1, p2, p3}, Lcom/taobao/weex/WXSDKInstance;->getContentBoxMeasurement(J)Lcom/taobao/weex/layout/ContentBoxMeasurement;

    move-result-object v0

    .line 2607
    :cond_0
    return-object v0
.end method

.method public getRenderFinishTime(Ljava/lang/String;)[J
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 2665
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->getRenderFinishTime(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 1465
    if-nez p1, :cond_1

    .line 1495
    :cond_0
    :goto_0
    return v8

    .line 1469
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    .line 1470
    .local v4, "what":I
    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 1478
    :sswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;

    .line 1479
    .local v3, "timerInfo":Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;
    if-eqz v3, :cond_0

    .line 1482
    new-instance v2, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v5, 0x2

    iget-object v6, v3, Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;->callbackId:Ljava/lang/String;

    invoke-direct {v2, v5, v6}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 1483
    .local v2, "obj":Lcom/taobao/weex/bridge/WXJSObject;
    const/4 v5, 0x1

    new-array v0, v5, [Lcom/taobao/weex/bridge/WXJSObject;

    aput-object v2, v0, v8

    .line 1484
    .local v0, "args":[Lcom/taobao/weex/bridge/WXJSObject;
    const-string/jumbo v5, ""

    const/4 v6, 0x0

    const-string/jumbo v7, "setTimeoutCallback"

    invoke-direct {p0, v5, v6, v7, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)V

    goto :goto_0

    .line 1472
    .end local v0    # "args":[Lcom/taobao/weex/bridge/WXJSObject;
    .end local v2    # "obj":Lcom/taobao/weex/bridge/WXJSObject;
    .end local v3    # "timerInfo":Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeInitFramework(Landroid/os/Message;)V

    goto :goto_0

    .line 1475
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeCallJSBatch(Landroid/os/Message;)V

    goto :goto_0

    .line 1487
    :sswitch_3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 1488
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1489
    .local v1, "filename":Ljava/lang/String;
    iget-object v5, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v5, v1}, Lcom/taobao/weex/common/IWXBridge;->takeHeapSnapshot(Ljava/lang/String;)V

    goto :goto_0

    .line 1470
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_2
        0x7 -> :sswitch_1
        0xd -> :sswitch_3
    .end sparse-switch
.end method

.method public declared-synchronized initScriptsFramework(Ljava/lang/String;)V
    .locals 2
    .param p1, "framework"    # Ljava/lang/String;

    .prologue
    .line 960
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 961
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 962
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 963
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 964
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 965
    monitor-exit p0

    return-void

    .line 960
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public invokeCreateInstanceContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V
    .locals 3
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "function"    # Ljava/lang/String;
    .param p4, "args"    # [Lcom/taobao/weex/bridge/WXJSObject;
    .param p5, "logTaskDetail"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1523
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "invokeCreateInstanceContext instanceId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " function:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isJSFrameworkInit\uff1a%d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1524
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1523
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 1525
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "createInstanceContext >>>> instanceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "function:"

    .line 1526
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    if-eqz p5, :cond_0

    .line 1528
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, " tasks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1529
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 1530
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1532
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/taobao/weex/common/IWXBridge;->createInstanceContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I

    .line 1533
    return-void
.end method

.method public invokeDestoryInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V
    .locals 3
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "function"    # Ljava/lang/String;
    .param p4, "args"    # [Lcom/taobao/weex/bridge/WXJSObject;
    .param p5, "logTaskDetail"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1538
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "callJS >>>> instanceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "function:"

    .line 1539
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1540
    if-eqz p5, :cond_0

    .line 1541
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, " tasks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 1543
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1545
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/taobao/weex/common/IWXBridge;->destoryInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I

    .line 1546
    return-void
.end method

.method public invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V
    .locals 6
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "function"    # Ljava/lang/String;
    .param p4, "args"    # [Lcom/taobao/weex/bridge/WXJSObject;
    .param p5, "logTaskDetail"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1504
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    .line 1513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1514
    .local v2, "start":J
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/taobao/weex/common/IWXBridge;->execJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I

    .line 1515
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    .line 1516
    .local v0, "instance":Lcom/taobao/weex/WXSDKInstance;
    if-eqz v0, :cond_0

    .line 1517
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Lcom/taobao/weex/WXSDKInstance;->callJsTime(J)V

    .line 1519
    :cond_0
    return-void
.end method

.method public isJSThread()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXThread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markDirty(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "dirty"    # Z

    .prologue
    .line 2681
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/common/IWXBridge;->markDirty(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2682
    return-void
.end method

.method public notifyLayout(Ljava/lang/String;)Z
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 2622
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->notifyLayout(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public notifySerializeCodeCache()V
    .locals 1

    .prologue
    .line 2158
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$19;

    invoke-direct {v0, p0}, Lcom/taobao/weex/bridge/WXBridgeManager$19;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    .line 2167
    return-void
.end method

.method public notifyTrimMemory()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2108
    return-void
.end method

.method public onInstanceClose(Ljava/lang/String;)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 2635
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->onInstanceClose(Ljava/lang/String;)V

    .line 2636
    return-void
.end method

.method public optionObjConvert(ZLcom/taobao/weex/bridge/WXBridgeManager$BundType;Lcom/taobao/weex/bridge/WXJSObject;)Lcom/taobao/weex/bridge/WXJSObject;
    .locals 11
    .param p1, "useSandBox"    # Z
    .param p2, "type"    # Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
    .param p3, "opt"    # Lcom/taobao/weex/bridge/WXJSObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1320
    if-eqz p1, :cond_0

    sget-object v9, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Others:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    if-ne p2, v9, :cond_1

    .line 1348
    .end local p3    # "opt":Lcom/taobao/weex/bridge/WXJSObject;
    :cond_0
    :goto_0
    return-object p3

    .line 1324
    .restart local p3    # "opt":Lcom/taobao/weex/bridge/WXJSObject;
    :cond_1
    :try_start_0
    iget-object v9, p3, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1325
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Lgxk;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 1326
    .local v4, "obj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v9, "env"

    invoke-virtual {v4, v9}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 1327
    const-string/jumbo v9, "env"

    invoke-virtual {v4, v9}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 1329
    .local v5, "optEnv":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v5, :cond_2

    .line 1330
    const-string/jumbo v9, "options"

    invoke-virtual {v5, v9}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 1331
    .local v7, "opts":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v7, :cond_2

    .line 1332
    const-string/jumbo v9, "options"

    invoke-virtual {v5, v9}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 1334
    .local v8, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1335
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1336
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v3, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1345
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "obj":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "optEnv":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "opts":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 1346
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1340
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "data":Ljava/lang/String;
    .restart local v4    # "obj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v5    # "optEnv":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    :try_start_1
    const-string/jumbo v9, "env"

    invoke-virtual {v4, v9}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1341
    const-string/jumbo v9, "env"

    invoke-virtual {v4, v9, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    .end local v5    # "optEnv":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    new-instance v6, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v9, 0x3

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .local v6, "optionsObj":Lcom/taobao/weex/bridge/WXJSObject;
    move-object p3, v6

    .line 1344
    goto :goto_0
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 375
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mInterceptor:Lcom/taobao/weex/utils/batch/Interceptor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mInterceptor:Lcom/taobao/weex/utils/batch/Interceptor;

    invoke-interface {v0, p1}, Lcom/taobao/weex/utils/batch/Interceptor;->take(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public post(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "token"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 392
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 399
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 397
    .local v0, "m":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 398
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postDelay(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 402
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 406
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public refreshInstance(Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V
    .locals 4
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "jsonData"    # Lcom/taobao/weex/common/WXRefreshData;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1085
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 1094
    :cond_0
    :goto_0
    return-void

    .line 1088
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    new-instance v1, Lcom/taobao/weex/bridge/WXBridgeManager$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager$9;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V

    invoke-static {v1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public registerComponents(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1840
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1841
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1856
    :cond_0
    :goto_0
    return-void

    .line 1844
    :cond_1
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$16;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager$16;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/List;)V

    .line 1851
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSThread()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1852
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1854
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public registerCoreEnv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2699
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2700
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/common/IWXBridge;->registerCoreEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 2703
    :goto_0
    return-void

    .line 2702
    :cond_0
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWeexCoreEnvOptions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public registerModules(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1822
    .local p1, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1823
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1824
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterModuleFailList:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeRegisterModules(Ljava/util/Map;Ljava/util/List;)V

    .line 1834
    :cond_0
    :goto_0
    return-void

    .line 1826
    :cond_1
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$15;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager$15;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/Map;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removeMessage(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 428
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    .line 429
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXThread;->isWXThreadAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public reportJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "function"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 1977
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reportJSException >>>> instanceId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", exception function:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 1981
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    .local v1, "instance":Lcom/taobao/weex/WXSDKInstance;
    if-eqz v1, :cond_2

    .line 1982
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n getTemplateInfo=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getTemplateInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1983
    const-string/jumbo v2, "createInstance"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1985
    :try_start_0
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    if-le v2, v4, :cond_0

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->isNeedReLoad()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1986
    new-instance v2, Lcom/taobao/weex/ui/action/ActionReloadPage;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/taobao/weex/ui/action/ActionReloadPage;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Lcom/taobao/weex/ui/action/ActionReloadPage;->executeAction()V

    .line 1987
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/taobao/weex/WXSDKInstance;->setNeedLoad(Z)V

    .line 2008
    .end local v1    # "instance":Lcom/taobao/weex/WXSDKInstance;
    :goto_0
    return-void

    .line 1990
    .restart local v1    # "instance":Lcom/taobao/weex/WXSDKInstance;
    :cond_0
    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1991
    invoke-virtual {v2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1992
    invoke-virtual {v4}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "reportJSException >>>> instanceId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", exception function:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1990
    invoke-virtual {v1, v2, v3}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1998
    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_JS_CREATE_INSTANCE:Lcom/taobao/weex/common/WXErrorCode;

    const/4 v3, 0x0

    invoke-static {p1, v2, p2, p3, v3}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2001
    :catch_0
    move-exception v0

    .line 2002
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2005
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JS_EXECUTE:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Lcom/taobao/weex/WXSDKInstance;->onJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    .end local v1    # "instance":Lcom/taobao/weex/WXSDKInstance;
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->doReportJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public restart()V
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->setJSFrameworkInit(Z)V

    .line 354
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->resetAllModuleState()V

    .line 355
    sget-boolean v0, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugMode:Z

    invoke-direct {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->initWXBridge(Z)V

    .line 356
    return-void
.end method

.method public sendMessageDelayed(Landroid/os/Message;J)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "delayMillis"    # J

    .prologue
    .line 420
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    .line 421
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXThread;->isWXThreadAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public setDefaultRootSize(Ljava/lang/String;FFZZ)V
    .locals 6
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "defaultWidth"    # F
    .param p3, "defaultHeight"    # F
    .param p4, "isWidthWrapContent"    # Z
    .param p5, "isHeightWrapContent"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2645
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/taobao/weex/common/IWXBridge;->setDefaultHeightAndWidthIntoRootDom(Ljava/lang/String;FFZZ)V

    .line 2646
    return-void
.end method

.method public setInterceptor(Lcom/taobao/weex/utils/batch/Interceptor;)V
    .locals 0
    .param p1, "interceptor"    # Lcom/taobao/weex/utils/batch/Interceptor;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mInterceptor:Lcom/taobao/weex/utils/batch/Interceptor;

    .line 389
    return-void
.end method

.method public setMargin(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "edge"    # Lcom/taobao/weex/dom/CSSShorthand$EDGE;
    .param p4, "value"    # F

    .prologue
    .line 2669
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/taobao/weex/common/IWXBridge;->setMargin(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    .line 2670
    return-void
.end method

.method public setPadding(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "edge"    # Lcom/taobao/weex/dom/CSSShorthand$EDGE;
    .param p4, "value"    # F

    .prologue
    .line 2673
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/taobao/weex/common/IWXBridge;->setPadding(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    .line 2674
    return-void
.end method

.method public setPosition(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "edge"    # Lcom/taobao/weex/dom/CSSShorthand$EDGE;
    .param p4, "value"    # F

    .prologue
    .line 2677
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/taobao/weex/common/IWXBridge;->setPosition(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    .line 2678
    return-void
.end method

.method public setRenderContentWrapContentToCore(ZLjava/lang/String;)V
    .locals 1
    .param p1, "wrap"    # Z
    .param p2, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 2649
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/common/IWXBridge;->setRenderContainerWrapContent(ZLjava/lang/String;)V

    .line 2650
    return-void
.end method

.method public setSandBoxContext(Z)V
    .locals 3
    .param p1, "flag"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 220
    sget-boolean v1, Lcom/taobao/weex/bridge/WXBridgeManager;->isSandBoxContext:Z

    if-eq p1, v1, :cond_0

    .line 221
    sput-boolean p1, Lcom/taobao/weex/bridge/WXBridgeManager;->isSandBoxContext:Z

    .line 223
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSThread()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 225
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->setJSFrameworkInit(Z)V

    .line 226
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->resetAllModuleState()V

    .line 228
    sget-boolean v1, Lcom/taobao/weex/bridge/WXBridgeManager;->isSandBoxContext:Z

    if-nez v1, :cond_1

    .line 229
    const-string/jumbo v1, "main.js"

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "jsf":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->initFramework(Ljava/lang/String;)V

    .line 234
    invoke-static {}, Lcom/taobao/weex/bridge/WXServiceManager;->reload()V

    .line 235
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->reload()V

    .line 236
    invoke-static {}, Lcom/taobao/weex/ui/WXComponentRegistry;->reload()V

    .line 257
    .end local v0    # "jsf":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 231
    :cond_1
    const-string/jumbo v1, "weex-main-jsfm.js"

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "jsf":Ljava/lang/String;
    goto :goto_0

    .line 238
    .end local v0    # "jsf":Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/taobao/weex/bridge/WXBridgeManager$1;

    invoke-direct {v1, p0}, Lcom/taobao/weex/bridge/WXBridgeManager$1;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public declared-synchronized setStackTopInstance(Ljava/lang/String;)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 364
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$2;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager$2;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    monitor-exit p0

    return-void

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "value"    # F

    .prologue
    .line 2657
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/common/IWXBridge;->setStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V

    .line 2658
    return-void
.end method

.method public setStyleWidth(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "value"    # F

    .prologue
    .line 2653
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/common/IWXBridge;->setStyleWidth(Ljava/lang/String;Ljava/lang/String;F)V

    .line 2654
    return-void
.end method

.method setTimeout(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "callbackId"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 409
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 410
    .local v0, "message":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 411
    new-instance v1, Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;

    invoke-direct {v1}, Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;-><init>()V

    .line 412
    .local v1, "timerInfo":Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;
    iput-object p1, v1, Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;->callbackId:Ljava/lang/String;

    .line 413
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-long v2, v2

    iput-wide v2, v1, Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;->time:J

    .line 414
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 416
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    iget-wide v4, v1, Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;->time:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 417
    return-void
.end method

.method public setUseSingleProcess(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 201
    sget-boolean v0, Lcom/taobao/weex/bridge/WXBridgeManager;->isUseSingleProcess:Z

    if-eq p1, v0, :cond_0

    .line 202
    sput-boolean p1, Lcom/taobao/weex/bridge/WXBridgeManager;->isUseSingleProcess:Z

    .line 217
    :cond_0
    return-void
.end method

.method public shouReloadCurrentInstance(Ljava/lang/String;)Z
    .locals 6
    .param p1, "aUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 707
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 708
    .local v0, "time":J
    sget-object v2, Lcom/taobao/weex/bridge/WXBridgeManager;->crashUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/taobao/weex/bridge/WXBridgeManager;->crashUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/taobao/weex/bridge/WXBridgeManager;->crashUrl:Ljava/lang/String;

    .line 709
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget-wide v2, Lcom/taobao/weex/bridge/WXBridgeManager;->lastCrashTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 711
    :cond_1
    sput-object p1, Lcom/taobao/weex/bridge/WXBridgeManager;->crashUrl:Ljava/lang/String;

    .line 712
    sput-wide v0, Lcom/taobao/weex/bridge/WXBridgeManager;->lastCrashTime:J

    .line 713
    const/4 v2, 0x1

    .line 716
    :goto_0
    return v2

    .line 715
    :cond_2
    sput-wide v0, Lcom/taobao/weex/bridge/WXBridgeManager;->lastCrashTime:J

    .line 716
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public stopRemoteDebug()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 312
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Lcom/taobao/weex/common/IWXDebugProxy;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Lcom/taobao/weex/common/IWXDebugProxy;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/taobao/weex/common/IWXDebugProxy;->stop(Z)V

    .line 315
    :cond_0
    return-void
.end method

.method public varargs syncCallJSEventWithResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)Lcom/taobao/weex/bridge/EventResult;
    .locals 8
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "instanceId"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/taobao/weex/bridge/EventResult;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 804
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 805
    .local v7, "waitLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Lcom/taobao/weex/bridge/WXBridgeManager$5;

    invoke-direct {v1, p0, v7}, Lcom/taobao/weex/bridge/WXBridgeManager$5;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/concurrent/CountDownLatch;)V

    .local v1, "callback":Lcom/taobao/weex/bridge/EventResult;
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 813
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->asyncCallJSEventWithResult(Lcom/taobao/weex/bridge/EventResult;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V

    .line 814
    const-wide/16 v2, 0x64

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    :goto_0
    return-object v1

    .line 816
    :catch_0
    move-exception v6

    .line 817
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "syncCallJSEventWithResult"

    invoke-static {v0, v6}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public syncExecJsOnInstanceWithResult(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "js"    # Ljava/lang/String;
    .param p3, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 779
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 780
    .local v2, "waitLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$4;

    invoke-direct {v0, p0, v2}, Lcom/taobao/weex/bridge/WXBridgeManager$4;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/concurrent/CountDownLatch;)V

    .line 788
    .local v0, "callback":Lcom/taobao/weex/bridge/EventResult;
    :try_start_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->execJSOnInstance(Lcom/taobao/weex/bridge/EventResult;Ljava/lang/String;Ljava/lang/String;I)V

    .line 789
    const-wide/16 v4, 0x64

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 790
    invoke-virtual {v0}, Lcom/taobao/weex/bridge/EventResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 791
    invoke-virtual {v0}, Lcom/taobao/weex/bridge/EventResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 796
    :goto_0
    return-object v3

    .line 793
    :cond_0
    const-string/jumbo v3, ""

    goto :goto_0

    .line 794
    :catch_0
    move-exception v1

    .line 795
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "syncCallExecJsOnInstance"

    invoke-static {v3, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 796
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method public takeJSHeapSnapshot(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2170
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2171
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2172
    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2173
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 2174
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2175
    return-void
.end method
