.class public Lcom/alibaba/doraemon/impl/threadpool/ThreadFetcher;
.super Ljava/lang/Object;
.source "ThreadFetcher.java"

# interfaces
.implements Lcom/alibaba/doraemon/ArtifactFetcher;


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
    .line 16
    new-instance v0, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/threadpool/ThreadImpl;-><init>()V

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    return-void
.end method
