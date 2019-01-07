.class public Lcom/alibaba/motu/watch/WatchConfig;
.super Ljava/lang/Object;
.source "WatchConfig.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field public closeMainLooperMonitor:Z

.field public enabeMainLooperTimeoutInterval:Ljava/lang/Long;

.field public enableCatchMainLoopException:Z

.field public enableWatchMainThreadOnly:Z

.field public isBetaVersion:Z

.field public isCloseMainLooperSampling:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string/jumbo v0, "MotuWatch"

    sput-object v0, Lcom/alibaba/motu/watch/WatchConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean v2, p0, Lcom/alibaba/motu/watch/WatchConfig;->closeMainLooperMonitor:Z

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/motu/watch/WatchConfig;->enableCatchMainLoopException:Z

    .line 22
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/motu/watch/WatchConfig;->enabeMainLooperTimeoutInterval:Ljava/lang/Long;

    .line 26
    iput-boolean v2, p0, Lcom/alibaba/motu/watch/WatchConfig;->enableWatchMainThreadOnly:Z

    .line 30
    iput-boolean v2, p0, Lcom/alibaba/motu/watch/WatchConfig;->isCloseMainLooperSampling:Z

    .line 34
    iput-boolean v2, p0, Lcom/alibaba/motu/watch/WatchConfig;->isBetaVersion:Z

    return-void
.end method
