.class Lcom/laiwang/protocol/android/bu$3;
.super Ljava/lang/Object;
.source "IOExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/android/bu;->c(Lcom/laiwang/protocol/android/bu$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/bu$a;

.field final synthetic b:Lcom/laiwang/protocol/android/bu;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/bu;Lcom/laiwang/protocol/android/bu$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/bu;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/laiwang/protocol/android/bu$3;->b:Lcom/laiwang/protocol/android/bu;

    iput-object p2, p0, Lcom/laiwang/protocol/android/bu$3;->a:Lcom/laiwang/protocol/android/bu$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    iget-object v0, p0, Lcom/laiwang/protocol/android/bu$3;->b:Lcom/laiwang/protocol/android/bu;

    iget-object v1, p0, Lcom/laiwang/protocol/android/bu$3;->a:Lcom/laiwang/protocol/android/bu$a;

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu;Lcom/laiwang/protocol/android/bu$a;)V

    .line 71
    iget-object v0, p0, Lcom/laiwang/protocol/android/bu$3;->a:Lcom/laiwang/protocol/android/bu$a;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/bu$a;->isStop()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/laiwang/protocol/android/bu$3;->b:Lcom/laiwang/protocol/android/bu;

    invoke-virtual {v0, p0}, Lcom/laiwang/protocol/android/bu;->a(Ljava/lang/Runnable;)V

    .line 74
    :cond_0
    return-void
.end method
