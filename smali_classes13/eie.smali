.class public final Leie;
.super Ljava/lang/Object;
.source "RimetCrashMonitorFetcher.java"

# interfaces
.implements Lcom/alibaba/doraemon/ArtifactFetcher;


# instance fields
.field private a:Lcom/alibaba/doraemon/crash/CrashMonitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getArtifact()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Leie;->a:Lcom/alibaba/doraemon/crash/CrashMonitor;

    return-object v0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    iget-object v0, p0, Leie;->a:Lcom/alibaba/doraemon/crash/CrashMonitor;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Leif;

    invoke-direct {v0}, Leif;-><init>()V

    iput-object v0, p0, Leie;->a:Lcom/alibaba/doraemon/crash/CrashMonitor;

    .line 39
    :cond_0
    return-void
.end method
