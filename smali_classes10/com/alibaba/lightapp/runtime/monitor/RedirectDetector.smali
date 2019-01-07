.class public Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector;
.super Ljava/lang/Object;
.source "RedirectDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$RedirectCallback;,
        Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$CountDown;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector;


# instance fields
.field private mCountDown:Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$CountDown;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector;-><init>()V

    sput-object v0, Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector;->sInstance:Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector;->sInstance:Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector;

    return-object v0
.end method


# virtual methods
.method public enterOnPageFinished(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$RedirectCallback;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "redirectCallback"    # Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$RedirectCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 28
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

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$CountDown;

    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$CountDown;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$CountDown;->stop()V

    .line 32
    :cond_1
    new-instance v0, Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$CountDown;

    new-instance v1, Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$1;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$1;-><init>(Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector;Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$RedirectCallback;)V

    invoke-direct {v0, p0, v1}, Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$CountDown;-><init>(Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$CountDown;

    .line 40
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$CountDown;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$CountDown;->start()V

    .line 42
    :cond_2
    return-void
.end method

.method public enterOnPageStarted(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$CountDown;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$CountDown;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$CountDown;->stop()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector;->mCountDown:Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$CountDown;

    .line 49
    :cond_0
    return-void
.end method
