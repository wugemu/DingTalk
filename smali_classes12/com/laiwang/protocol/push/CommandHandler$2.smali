.class Lcom/laiwang/protocol/push/CommandHandler$2;
.super Lcom/laiwang/protocol/android/bu$a;
.source "CommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/push/CommandHandler;->apply(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/lang/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laiwang/protocol/push/CommandHandler;

.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$cb:Lcom/laiwang/protocol/lang/Callback;

.field final synthetic val$command:Lcom/laiwang/protocol/push/CommandHandler$Command;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/push/CommandHandler;Ljava/lang/String;Lcom/laiwang/protocol/push/CommandHandler$Command;Ljava/lang/String;Lcom/laiwang/protocol/lang/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/push/CommandHandler;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/laiwang/protocol/push/CommandHandler$2;->this$0:Lcom/laiwang/protocol/push/CommandHandler;

    iput-object p3, p0, Lcom/laiwang/protocol/push/CommandHandler$2;->val$command:Lcom/laiwang/protocol/push/CommandHandler$Command;

    iput-object p4, p0, Lcom/laiwang/protocol/push/CommandHandler$2;->val$body:Ljava/lang/String;

    iput-object p5, p0, Lcom/laiwang/protocol/push/CommandHandler$2;->val$cb:Lcom/laiwang/protocol/lang/Callback;

    invoke-direct {p0, p2}, Lcom/laiwang/protocol/android/bu$a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    iget-object v0, p0, Lcom/laiwang/protocol/push/CommandHandler$2;->val$command:Lcom/laiwang/protocol/push/CommandHandler$Command;

    iget-object v1, p0, Lcom/laiwang/protocol/push/CommandHandler$2;->val$body:Ljava/lang/String;

    iget-object v2, p0, Lcom/laiwang/protocol/push/CommandHandler$2;->val$cb:Lcom/laiwang/protocol/lang/Callback;

    invoke-interface {v0, v1, v2}, Lcom/laiwang/protocol/push/CommandHandler$Command;->doExecute(Ljava/lang/String;Lcom/laiwang/protocol/lang/Callback;)V

    .line 64
    return-void
.end method
