.class public final Ljpi;
.super Ljava/lang/Object;
.source "WMLPrefetchDecision.java"


# instance fields
.field public a:Lcom/taobao/weaver/prefetch/PrefetchType;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lcom/taobao/weaver/prefetch/PrefetchType;->NOT_SUPPORTED:Lcom/taobao/weaver/prefetch/PrefetchType;

    iput-object v0, p0, Ljpi;->a:Lcom/taobao/weaver/prefetch/PrefetchType;

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Ljpi;->b:Ljava/lang/String;

    return-void
.end method
