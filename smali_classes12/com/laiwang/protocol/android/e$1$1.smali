.class Lcom/laiwang/protocol/android/e$1$1;
.super Lcom/laiwang/protocol/android/bu$a;
.source "ConnectionKeepAlive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/android/e$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/laiwang/protocol/android/e$1;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/e$1;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/laiwang/protocol/android/e$1;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/laiwang/protocol/android/e$1$1;->b:Lcom/laiwang/protocol/android/e$1;

    iput-object p3, p0, Lcom/laiwang/protocol/android/e$1$1;->a:Landroid/content/Context;

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
    .line 52
    iget-object v0, p0, Lcom/laiwang/protocol/android/e$1$1;->b:Lcom/laiwang/protocol/android/e$1;

    iget-object v0, v0, Lcom/laiwang/protocol/android/e$1;->a:Lcom/laiwang/protocol/android/e;

    invoke-static {v0}, Lcom/laiwang/protocol/android/e;->a(Lcom/laiwang/protocol/android/e;)Lcom/laiwang/protocol/android/w;

    move-result-object v0

    iget-object v1, p0, Lcom/laiwang/protocol/android/e$1$1;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/laiwang/protocol/android/cg;->b(Landroid/content/Context;)Lcom/laiwang/protocol/network/Network$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/w;->onChange(Lcom/laiwang/protocol/network/Network$State;)V

    .line 53
    return-void
.end method
