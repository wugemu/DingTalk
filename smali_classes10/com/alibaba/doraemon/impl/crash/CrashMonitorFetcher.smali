.class public Lcom/alibaba/doraemon/impl/crash/CrashMonitorFetcher;
.super Ljava/lang/Object;
.source "CrashMonitorFetcher.java"

# interfaces
.implements Lcom/alibaba/doraemon/ArtifactFetcher;


# instance fields
.field private mCrashMonitor:Lcom/alibaba/doraemon/impl/crash/CrashMonitorImpl;


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
    .line 18
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/crash/CrashMonitorFetcher;->mCrashMonitor:Lcom/alibaba/doraemon/impl/crash/CrashMonitorImpl;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/crash/CrashMonitorFetcher;->mCrashMonitor:Lcom/alibaba/doraemon/impl/crash/CrashMonitorImpl;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/alibaba/doraemon/impl/crash/CrashMonitorImpl;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/crash/CrashMonitorImpl;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/crash/CrashMonitorFetcher;->mCrashMonitor:Lcom/alibaba/doraemon/impl/crash/CrashMonitorImpl;

    .line 25
    :cond_0
    return-void
.end method
