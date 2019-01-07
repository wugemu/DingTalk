.class Lcom/laiwang/protocol/android/m$f$2;
.super Ljava/lang/Object;
.source "LwpConnection.java"

# interfaces
.implements Lcom/laiwang/protocol/android/ac$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/android/m$f;->b(Lcom/laiwang/protocol/android/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/m$f;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/m$f;)V
    .locals 0
    .param p1, "this$1"    # Lcom/laiwang/protocol/android/m$f;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/laiwang/protocol/android/m$f$2;->a:Lcom/laiwang/protocol/android/m$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 257
    iget-object v1, p0, Lcom/laiwang/protocol/android/m$f$2;->a:Lcom/laiwang/protocol/android/m$f;

    iget-object v1, v1, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v1}, Lcom/laiwang/protocol/android/m;->i(Lcom/laiwang/protocol/android/m;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/m$e;

    .line 258
    .local v0, "listener":Lcom/laiwang/protocol/android/m$e;
    if-eqz v0, :cond_0

    .line 259
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$f$2;->a:Lcom/laiwang/protocol/android/m$f;

    iget-object v2, v2, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v0, v2}, Lcom/laiwang/protocol/android/m$e;->k(Lcom/laiwang/protocol/android/k;)V

    goto :goto_0

    .line 261
    .end local v0    # "listener":Lcom/laiwang/protocol/android/m$e;
    :cond_1
    return-void
.end method

.method public a(II)V
    .locals 0
    .param p1, "networkType"    # I
    .param p2, "bestInterval"    # I

    .prologue
    .line 252
    invoke-static {p1, p2}, Lcom/laiwang/protocol/android/log/PerfLogger;->logBestHeartBeat(II)V

    .line 253
    return-void
.end method
