.class public Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorFetcher;
.super Ljava/lang/Object;
.source "LifecycleMonitorFetcher.java"

# interfaces
.implements Lcom/alibaba/doraemon/ArtifactFetcher;


# instance fields
.field private mLifecycleContainer:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArtifact()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorFetcher;->mLifecycleContainer:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    new-instance v0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-direct {v0, p1}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorFetcher;->mLifecycleContainer:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    .line 24
    return-void
.end method
