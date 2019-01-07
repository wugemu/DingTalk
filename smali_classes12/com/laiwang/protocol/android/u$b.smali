.class Lcom/laiwang/protocol/android/u$b;
.super Lcom/laiwang/protocol/android/bu$a;
.source "TCPBioConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/u;


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/android/u;)V
    .locals 1
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/u;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/laiwang/protocol/android/u$b;->a:Lcom/laiwang/protocol/android/u;

    .line 241
    const-string/jumbo v0, "tcp-bio-trg"

    invoke-direct {p0, v0}, Lcom/laiwang/protocol/android/bu$a;-><init>(Ljava/lang/String;)V

    .line 242
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 245
    const-string/jumbo v1, "[io] T_B trg write >> %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/laiwang/protocol/android/u$b;->a:Lcom/laiwang/protocol/android/u;

    invoke-virtual {v4}, Lcom/laiwang/protocol/android/u;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    iget-object v1, p0, Lcom/laiwang/protocol/android/u$b;->a:Lcom/laiwang/protocol/android/u;

    invoke-static {v1}, Lcom/laiwang/protocol/android/u;->a(Lcom/laiwang/protocol/android/u;)Lcom/laiwang/protocol/android/k$d;

    move-result-object v1

    sget-object v2, Lcom/laiwang/protocol/android/k$d;->d:Lcom/laiwang/protocol/android/k$d;

    if-ne v1, v2, :cond_1

    .line 247
    iget-object v1, p0, Lcom/laiwang/protocol/android/u$b;->a:Lcom/laiwang/protocol/android/u;

    invoke-static {v1}, Lcom/laiwang/protocol/android/u;->b(Lcom/laiwang/protocol/android/u;)Ljava/util/List;

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

    .line 248
    .local v0, "listener":Lcom/laiwang/protocol/android/k$c;
    if-eqz v0, :cond_0

    .line 249
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$b;->a:Lcom/laiwang/protocol/android/u;

    invoke-interface {v0, v2}, Lcom/laiwang/protocol/android/k$c;->a(Lcom/laiwang/protocol/android/k;)V

    goto :goto_0

    .line 251
    .end local v0    # "listener":Lcom/laiwang/protocol/android/k$c;
    :cond_1
    return-void
.end method
