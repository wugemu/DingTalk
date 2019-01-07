.class public Lcom/alibaba/doraemon/impl/health/web/WebPerfViewFetcher;
.super Ljava/lang/Object;
.source "WebPerfViewFetcher.java"

# interfaces
.implements Lcom/alibaba/doraemon/ArtifactFetcher;


# instance fields
.field private wpfv:Lcom/alibaba/doraemon/health/WebPerformanceFloatView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArtifact()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/web/WebPerfViewFetcher;->wpfv:Lcom/alibaba/doraemon/health/WebPerformanceFloatView;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    new-instance v0, Lcom/alibaba/doraemon/impl/health/web/WebPerformanceFloatViewStub;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/health/web/WebPerformanceFloatViewStub;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/web/WebPerfViewFetcher;->wpfv:Lcom/alibaba/doraemon/health/WebPerformanceFloatView;

    .line 25
    return-void
.end method
