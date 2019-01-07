.class public Lcom/alibaba/doraemon/impl/trace/TraceFetcher2;
.super Ljava/lang/Object;
.source "TraceFetcher2.java"

# interfaces
.implements Lcom/alibaba/doraemon/ArtifactFetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/trace/TraceFetcher2$TraceWrap;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public getArtifact()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/alibaba/doraemon/impl/trace/TraceFetcher2$TraceWrap;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/trace/TraceFetcher2$TraceWrap;-><init>(Lcom/alibaba/doraemon/impl/trace/TraceFetcher2;)V

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-static {}, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->init()V

    .line 21
    return-void
.end method
