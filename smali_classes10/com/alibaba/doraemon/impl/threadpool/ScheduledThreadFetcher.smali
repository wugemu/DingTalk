.class public Lcom/alibaba/doraemon/impl/threadpool/ScheduledThreadFetcher;
.super Ljava/lang/Object;
.source "ScheduledThreadFetcher.java"

# interfaces
.implements Lcom/alibaba/doraemon/ArtifactFetcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArtifact()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/alibaba/doraemon/impl/threadpool/ScheduledThreadImpl;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/threadpool/ScheduledThreadImpl;-><init>()V

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    return-void
.end method
