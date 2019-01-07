.class public final Lhzz;
.super Ljava/lang/Object;
.source "RequestBeforeFilter.java"

# interfaces
.implements Liyt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhzz$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lhzz;-><init>()V

    return-void
.end method


# virtual methods
.method public final filter(Liys;)V
    .locals 3
    .param p1, "context"    # Liys;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 21
    invoke-interface {p1}, Liys;->getRequestBuilder()Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v0

    const-string/jumbo v1, "dt"

    const-string/jumbo v2, "p"

    invoke-virtual {v0, v1, v2}, Lcom/laiwang/protocol/core/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/core/Request$Builder;

    .line 22
    return-void
.end method
