.class public Lcom/alipay/mobile/nebulacore/log/H5PerformanceScheduler;
.super Ljava/lang/Object;
.source "H5PerformanceScheduler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5PerformanceScheduler"

.field private static delaySecond:I

.field private static needSchedule:Z

.field private static pendingH5Log:Lcom/alipay/mobile/nebulacore/log/H5LogRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceScheduler;->needSchedule:Z

    .line 24
    const/4 v0, 0x3

    sput v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceScheduler;->delaySecond:I

    .line 30
    invoke-static {}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceScheduler;->initConfig()V

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceScheduler;->applyConfig(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/alipay/mobile/nebulacore/log/H5LogRunnable;)Lcom/alipay/mobile/nebulacore/log/H5LogRunnable;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/log/H5LogRunnable;

    .prologue
    .line 17
    sput-object p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceScheduler;->pendingH5Log:Lcom/alipay/mobile/nebulacore/log/H5LogRunnable;

    return-object p0
.end method

.method public static appendHeadScreen(Ljava/lang/Object;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 68
    const-string/jumbo v0, "H5PerformanceScheduler"

    const-string/jumbo v1, "Got headScreen, update archive!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceScheduler;->pendingH5Log:Lcom/alipay/mobile/nebulacore/log/H5LogRunnable;

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceScheduler;->pendingH5Log:Lcom/alipay/mobile/nebulacore/log/H5LogRunnable;

    const-string/jumbo v1, "headScreen"

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/nebulacore/log/H5LogRunnable;->setPerformanceData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    :cond_0
    return-void
.end method

.method private static applyConfig(Ljava/lang/String;)V
    .locals 3
    .param p0, "configStr"    # Ljava/lang/String;

    .prologue
    .line 53
    if-eqz p0, :cond_0

    .line 54
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 55
    .local v0, "configObj":Lcom/alibaba/fastjson/JSONObject;
    if-nez v0, :cond_1

    .line 65
    .end local v0    # "configObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 58
    .restart local v0    # "configObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    const-string/jumbo v1, "YES"

    const-string/jumbo v2, "enableMain"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/alipay/mobile/nebulacore/log/H5PerformanceScheduler;->needSchedule:Z

    .line 63
    :goto_1
    const-string/jumbo v1, "delaySecond"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/nebulacore/log/H5PerformanceScheduler;->delaySecond:I

    goto :goto_0

    .line 61
    :cond_2
    const-string/jumbo v1, "YES"

    const-string/jumbo v2, "enableLite"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/alipay/mobile/nebulacore/log/H5PerformanceScheduler;->needSchedule:Z

    goto :goto_1
.end method

.method private static initConfig()V
    .locals 4

    .prologue
    .line 35
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    const/4 v2, 0x0

    sput-boolean v2, Lcom/alipay/mobile/nebulacore/log/H5PerformanceScheduler;->needSchedule:Z

    .line 39
    :cond_0
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 40
    .local v0, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_1

    .line 41
    const-string/jumbo v2, "h5_needSchedulePagePerfLog"

    new-instance v3, Lcom/alipay/mobile/nebulacore/log/H5PerformanceScheduler$1;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceScheduler$1;-><init>()V

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithNotifyChange(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "configStr":Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceScheduler;->applyConfig(Ljava/lang/String;)V

    .line 50
    .end local v1    # "configStr":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static scheduleH5PerfLog(Lcom/alipay/mobile/nebulacore/log/H5LogRunnable;)V
    .locals 5
    .param p0, "log"    # Lcom/alipay/mobile/nebulacore/log/H5LogRunnable;

    .prologue
    .line 75
    if-nez p0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    sget-boolean v1, Lcom/alipay/mobile/nebulacore/log/H5PerformanceScheduler;->needSchedule:Z

    if-nez v1, :cond_2

    .line 80
    const-string/jumbo v1, "H5PerformanceScheduler"

    const-string/jumbo v2, "needSchedule false, just sent!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string/jumbo v1, "IO"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 85
    :cond_2
    const/4 v1, 0x0

    sput-object v1, Lcom/alipay/mobile/nebulacore/log/H5PerformanceScheduler;->pendingH5Log:Lcom/alipay/mobile/nebulacore/log/H5LogRunnable;

    .line 87
    const-string/jumbo v1, "headScreen"

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulacore/log/H5LogRunnable;->getPerformanceData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 88
    const-string/jumbo v1, "H5PerformanceScheduler"

    const-string/jumbo v2, "Already has headScreen, direct sent!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string/jumbo v1, "IO"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 92
    :cond_3
    const-string/jumbo v1, "H5PerformanceScheduler"

    const-string/jumbo v2, "Do not has headScreen, put into archive!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    .line 94
    .local v0, "executor":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    if-eqz v0, :cond_0

    .line 95
    sput-object p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceScheduler;->pendingH5Log:Lcom/alipay/mobile/nebulacore/log/H5LogRunnable;

    .line 96
    new-instance v1, Lcom/alipay/mobile/nebulacore/log/H5PerformanceScheduler$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceScheduler$2;-><init>(Lcom/alipay/mobile/nebulacore/log/H5LogRunnable;)V

    sget v2, Lcom/alipay/mobile/nebulacore/log/H5PerformanceScheduler;->delaySecond:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method
