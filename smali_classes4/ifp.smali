.class public final Lifp;
.super Ljava/lang/Object;
.source "RequestBeforeFilter.java"

# interfaces
.implements Liyt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lifp$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lifp;-><init>()V

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
    .line 22
    invoke-interface {p1}, Liys;->getRequestBuilder()Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v0

    .line 23
    .local v0, "builder":Lcom/laiwang/protocol/core/Request$Builder;
    const-string/jumbo v1, "dt"

    const-string/jumbo v2, "p"

    invoke-virtual {v0, v1, v2}, Lcom/laiwang/protocol/core/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/core/Request$Builder;

    .line 1030
    sget-object v1, Lifq$a;->a:Lifq;

    .line 1041
    iget-boolean v1, v1, Lifq;->a:Z

    .line 24
    if-eqz v1, :cond_0

    .line 25
    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v2, v3}, Lcom/laiwang/protocol/core/Request$Builder;->timeout(J)Lcom/laiwang/protocol/core/Request$Builder;

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Lcom/laiwang/protocol/core/Request$Builder;->timeout(J)Lcom/laiwang/protocol/core/Request$Builder;

    goto :goto_0
.end method
