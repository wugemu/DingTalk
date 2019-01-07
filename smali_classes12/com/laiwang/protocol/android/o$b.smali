.class Lcom/laiwang/protocol/android/o$b;
.super Lcom/laiwang/protocol/android/bu$a;
.source "LwsConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/o;


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/android/o;)V
    .locals 4
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/o;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/laiwang/protocol/android/o$b;->a:Lcom/laiwang/protocol/android/o;

    .line 89
    const-string/jumbo v0, "lws-handshake"

    const-wide/16 v2, 0x2710

    invoke-direct {p0, v0, v2, v3}, Lcom/laiwang/protocol/android/bu$a;-><init>(Ljava/lang/String;J)V

    .line 90
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    const-string/jumbo v0, "[Wtls] %s lws handshake timeout"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/laiwang/protocol/android/o$b;->a:Lcom/laiwang/protocol/android/o;

    invoke-virtual {v3}, Lcom/laiwang/protocol/android/o;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/laiwang/protocol/android/o$b;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v0}, Lcom/laiwang/protocol/android/o;->a(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/k;

    move-result-object v0

    sget-object v1, Lcom/laiwang/protocol/android/ab;->k:Lcom/laiwang/protocol/android/ab$b;

    invoke-interface {v0, v1}, Lcom/laiwang/protocol/android/k;->a(Ljava/lang/Throwable;)V

    .line 96
    return-void
.end method
