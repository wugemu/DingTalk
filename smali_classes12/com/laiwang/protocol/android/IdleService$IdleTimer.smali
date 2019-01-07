.class Lcom/laiwang/protocol/android/IdleService$IdleTimer;
.super Lcom/laiwang/protocol/android/bu$a;
.source "IdleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/IdleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdleTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laiwang/protocol/android/IdleService;


# direct methods
.method protected constructor <init>(Lcom/laiwang/protocol/android/IdleService;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/IdleService;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/laiwang/protocol/android/IdleService$IdleTimer;->this$0:Lcom/laiwang/protocol/android/IdleService;

    .line 82
    const-wide/32 v0, 0xea60

    invoke-direct {p0, p2, v0, v1}, Lcom/laiwang/protocol/android/bu$a;-><init>(Ljava/lang/String;J)V

    .line 83
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 87
    iget-object v1, p0, Lcom/laiwang/protocol/android/IdleService$IdleTimer;->this$0:Lcom/laiwang/protocol/android/IdleService;

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/IdleService;->access$002(Lcom/laiwang/protocol/android/IdleService;Z)Z

    .line 88
    iget-object v1, p0, Lcom/laiwang/protocol/android/IdleService$IdleTimer;->this$0:Lcom/laiwang/protocol/android/IdleService;

    invoke-static {v1}, Lcom/laiwang/protocol/android/IdleService;->access$100(Lcom/laiwang/protocol/android/IdleService;)Lcom/laiwang/protocol/android/IdleService$IdleHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/laiwang/protocol/android/IdleService$IdleHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 89
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/laiwang/protocol/android/IdleService$IdleTimer;->this$0:Lcom/laiwang/protocol/android/IdleService;

    invoke-static {v1}, Lcom/laiwang/protocol/android/IdleService;->access$100(Lcom/laiwang/protocol/android/IdleService;)Lcom/laiwang/protocol/android/IdleService$IdleHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/laiwang/protocol/android/IdleService$IdleHandler;->sendMessage(Landroid/os/Message;)Z

    .line 90
    return-void
.end method
