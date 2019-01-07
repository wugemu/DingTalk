.class Lcom/laiwang/protocol/android/ac$b$1;
.super Lcom/laiwang/protocol/android/bu$a;
.source "LwsKeepAlive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/android/ac$b;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/ac$b;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/ac$b;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/laiwang/protocol/android/ac$b;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/laiwang/protocol/android/ac$b$1;->a:Lcom/laiwang/protocol/android/ac$b;

    invoke-direct {p0, p2}, Lcom/laiwang/protocol/android/bu$a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 287
    iget-object v0, p0, Lcom/laiwang/protocol/android/ac$b$1;->a:Lcom/laiwang/protocol/android/ac$b;

    const-string/jumbo v1, "receiver"

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/ac$b;->a(Lcom/laiwang/protocol/android/ac$b;Ljava/lang/String;)V

    .line 288
    return-void
.end method
