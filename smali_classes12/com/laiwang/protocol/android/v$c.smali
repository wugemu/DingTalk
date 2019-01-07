.class Lcom/laiwang/protocol/android/v$c;
.super Lcom/laiwang/protocol/android/bu$a;
.source "TCPNioConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/v;


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/android/v;)V
    .locals 1
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/v;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/laiwang/protocol/android/v$c;->a:Lcom/laiwang/protocol/android/v;

    .line 274
    const-string/jumbo v0, "tcp-nio-write"

    invoke-direct {p0, v0}, Lcom/laiwang/protocol/android/bu$a;-><init>(Ljava/lang/String;)V

    .line 275
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 279
    iget-object v1, p0, Lcom/laiwang/protocol/android/v$c;->a:Lcom/laiwang/protocol/android/v;

    invoke-static {v1}, Lcom/laiwang/protocol/android/v;->c(Lcom/laiwang/protocol/android/v;)Lcom/laiwang/protocol/android/k$d;

    move-result-object v1

    sget-object v2, Lcom/laiwang/protocol/android/k$d;->d:Lcom/laiwang/protocol/android/k$d;

    if-ne v1, v2, :cond_1

    .line 280
    iget-object v1, p0, Lcom/laiwang/protocol/android/v$c;->a:Lcom/laiwang/protocol/android/v;

    invoke-static {v1}, Lcom/laiwang/protocol/android/v;->d(Lcom/laiwang/protocol/android/v;)Ljava/util/List;

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

    check-cast v0, Lcom/laiwang/protocol/android/k$c;

    .line 281
    .local v0, "listener":Lcom/laiwang/protocol/android/k$c;
    if-eqz v0, :cond_0

    .line 282
    iget-object v2, p0, Lcom/laiwang/protocol/android/v$c;->a:Lcom/laiwang/protocol/android/v;

    invoke-interface {v0, v2}, Lcom/laiwang/protocol/android/k$c;->a(Lcom/laiwang/protocol/android/k;)V

    goto :goto_0

    .line 284
    .end local v0    # "listener":Lcom/laiwang/protocol/android/k$c;
    :cond_1
    return-void
.end method
