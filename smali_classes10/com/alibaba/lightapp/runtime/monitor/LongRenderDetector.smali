.class public Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;
.super Ljava/lang/Object;
.source "LongRenderDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$LongRenderCallback;,
        Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;


# instance fields
.field private mCountDown:Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;-><init>()V

    sput-object v0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;->sInstance:Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;->initDelayTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance()Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;->sInstance:Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;

    return-object v0
.end method

.method private initDelayTime()J
    .locals 4

    .prologue
    .line 79
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcms;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "netInfo":Ljava/lang/String;
    const-string/jumbo v1, "wifi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "4g"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    :cond_0
    const-wide/16 v2, 0x7530

    .line 85
    .local v2, "time":J
    :goto_0
    return-wide v2

    .line 83
    .end local v2    # "time":J
    :cond_1
    const-wide/32 v2, 0xea60

    .restart local v2    # "time":J
    goto :goto_0
.end method


# virtual methods
.method public enterOnPageFinished(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;->stop()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;

    .line 57
    :cond_0
    return-void
.end method

.method public enterOnPageStarted(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$LongRenderCallback;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "longRenderCallback"    # Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$LongRenderCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;->stop()V

    .line 34
    :cond_1
    new-instance v0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;

    new-instance v1, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$1;-><init>(Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$LongRenderCallback;)V

    invoke-direct {v0, p0, v1}, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;-><init>(Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;

    .line 48
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;->start()V

    .line 50
    :cond_2
    return-void
.end method

.method public enterShouldOverrideUrlLoading(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;->stop()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;

    .line 68
    :cond_0
    return-void
.end method

.method public exitWebView()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;->stop()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;

    .line 75
    :cond_0
    return-void
.end method
