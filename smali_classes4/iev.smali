.class public final Liev;
.super Ljava/lang/Object;
.source "RequestBeforeFilter.java"

# interfaces
.implements Liyt;


# static fields
.field static a:Liev;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public final filter(Liys;)V
    .locals 4
    .param p1, "context"    # Liys;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 21
    invoke-interface {p1}, Liys;->getRequestBuilder()Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v0

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Lcom/laiwang/protocol/core/Request$Builder;->timeout(J)Lcom/laiwang/protocol/core/Request$Builder;

    .line 22
    invoke-interface {p1}, Liys;->getRequestBuilder()Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v0

    const-string/jumbo v1, "dt"

    const-string/jumbo v2, "j"

    invoke-virtual {v0, v1, v2}, Lcom/laiwang/protocol/core/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v0

    invoke-interface {p1, v0}, Liys;->setRequestBuilder(Lcom/laiwang/protocol/core/Request$Builder;)V

    .line 23
    return-void
.end method
