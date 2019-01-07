.class Lcom/laiwang/protocol/android/e$1;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionKeepAlive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/e;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/e;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/e;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/laiwang/protocol/android/e$1;->a:Lcom/laiwang/protocol/android/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    iget-object v0, p0, Lcom/laiwang/protocol/android/e$1;->a:Lcom/laiwang/protocol/android/e;

    invoke-static {v0}, Lcom/laiwang/protocol/android/e;->b(Lcom/laiwang/protocol/android/e;)Lcom/laiwang/protocol/android/bu;

    move-result-object v0

    new-instance v1, Lcom/laiwang/protocol/android/e$1$1;

    const-string/jumbo v2, "conn-keep-alive"

    invoke-direct {v1, p0, v2, p1}, Lcom/laiwang/protocol/android/e$1$1;-><init>(Lcom/laiwang/protocol/android/e$1;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    .line 55
    return-void
.end method
