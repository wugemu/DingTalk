.class public Lcom/alibaba/doraemon/impl/health/MonitorHealthFetcher;
.super Ljava/lang/Object;
.source "MonitorHealthFetcher.java"

# interfaces
.implements Lcom/alibaba/doraemon/ArtifactFetcher;


# instance fields
.field private monitor:Lcom/alibaba/doraemon/health/Health;


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
    .line 16
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/MonitorHealthFetcher;->monitor:Lcom/alibaba/doraemon/health/Health;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    new-instance v0, Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/health/MonitorHealthFetcher;->monitor:Lcom/alibaba/doraemon/health/Health;

    .line 22
    return-void
.end method
