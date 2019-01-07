.class Lcom/laiwang/protocol/android/t$a;
.super Lcom/laiwang/protocol/android/bu$a;
.source "SlaverLwpRequestConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/t;


# direct methods
.method protected constructor <init>(Lcom/laiwang/protocol/android/t;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/t;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/laiwang/protocol/android/t$a;->a:Lcom/laiwang/protocol/android/t;

    .line 268
    const-wide/32 v0, 0x493e0

    invoke-direct {p0, p2, v0, v1}, Lcom/laiwang/protocol/android/bu$a;-><init>(Ljava/lang/String;J)V

    .line 269
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 273
    iget-object v0, p0, Lcom/laiwang/protocol/android/t$a;->a:Lcom/laiwang/protocol/android/t;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/t;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    const-string/jumbo v0, "[slaver] time up but slave waiting not empty"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 280
    :goto_0
    return-void

    .line 277
    :cond_0
    const-string/jumbo v0, "[slaver] slaver idle time up"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/laiwang/protocol/android/t$a;->a:Lcom/laiwang/protocol/android/t;

    sget-object v1, Lcom/laiwang/protocol/android/ab;->l:Lcom/laiwang/protocol/android/ab$f;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/t;->b(Ljava/io/IOException;)V

    .line 279
    iget-object v0, p0, Lcom/laiwang/protocol/android/t$a;->a:Lcom/laiwang/protocol/android/t;

    invoke-static {v0}, Lcom/laiwang/protocol/android/t;->a(Lcom/laiwang/protocol/android/t;)Lcom/laiwang/protocol/android/ax;

    move-result-object v0

    iget-object v1, p0, Lcom/laiwang/protocol/android/t$a;->a:Lcom/laiwang/protocol/android/t;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/ax;->a(Lcom/laiwang/protocol/android/t;)V

    goto :goto_0
.end method
