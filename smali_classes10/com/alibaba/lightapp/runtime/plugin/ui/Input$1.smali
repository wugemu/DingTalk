.class Lcom/alibaba/lightapp/runtime/plugin/ui/Input$1;
.super Ljava/lang/Object;
.source "Input.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/ui/Input;->plain(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Input;

.field final synthetic val$placeHolder:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/ui/Input;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/ui/Input;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Input$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Input;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Input$1;->val$placeHolder:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Input$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 29
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Input$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Input;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Input;->access$000(Lcom/alibaba/lightapp/runtime/plugin/ui/Input;)Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/InputModel;

    .line 30
    .local v0, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/InputModel;
    if-eqz v0, :cond_0

    .line 31
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Input$1;->val$placeHolder:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Input$1;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/delegate/InputModel;->showInputBox(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    return-void
.end method
