.class public Lcom/alibaba/doraemon/impl/health/monitor/MonitorFetcher;
.super Ljava/lang/Object;
.source "MonitorFetcher.java"

# interfaces
.implements Lcom/alibaba/doraemon/ArtifactFetcher;


# instance fields
.field public mMonitor:Lcom/alibaba/doraemon/health/monitor/Monitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArtifact()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/monitor/MonitorFetcher;->mMonitor:Lcom/alibaba/doraemon/health/monitor/Monitor;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    new-instance v0, Lcom/alibaba/doraemon/impl/health/monitor/MonitorImpl;

    invoke-direct {v0, p1}, Lcom/alibaba/doraemon/impl/health/monitor/MonitorImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/monitor/MonitorFetcher;->mMonitor:Lcom/alibaba/doraemon/health/monitor/Monitor;

    .line 23
    return-void
.end method
