.class Lcom/laiwang/protocol/android/bu$2;
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
    .line 57
    iput-object p1, p0, Lcom/laiwang/protocol/android/bu$2;->b:Lcom/laiwang/protocol/android/bu;

    iput-object p2, p0, Lcom/laiwang/protocol/android/bu$2;->a:Lcom/laiwang/protocol/android/bu$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    iget-object v0, p0, Lcom/laiwang/protocol/android/bu$2;->b:Lcom/laiwang/protocol/android/bu;

    iget-object v1, p0, Lcom/laiwang/protocol/android/bu$2;->a:Lcom/laiwang/protocol/android/bu$a;

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu;Lcom/laiwang/protocol/android/bu$a;)V

    .line 61
    iget-object v0, p0, Lcom/laiwang/protocol/android/bu$2;->a:Lcom/laiwang/protocol/android/bu$a;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/bu$a;->isStop()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/laiwang/protocol/android/bu$2;->b:Lcom/laiwang/protocol/android/bu;

    iget-object v1, p0, Lcom/laiwang/protocol/android/bu$2;->a:Lcom/laiwang/protocol/android/bu$a;

    iget-wide v2, v1, Lcom/laiwang/protocol/android/bu$a;->delay:J

    invoke-virtual {v0, p0, v2, v3}, Lcom/laiwang/protocol/android/bu;->a(Ljava/lang/Runnable;J)V

    .line 64
    :cond_0
    return-void
.end method
