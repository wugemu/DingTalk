.class Lcom/alibaba/lightapp/runtime/plugin/device/Screen$1;
.super Ljava/lang/Object;
.source "Screen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->rotateView(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screen;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Screen;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Screen;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screen;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 55
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "showStatusBar"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 56
    .local v2, "showStatusBar":Z
    if-eqz v2, :cond_3

    .line 57
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screen;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Screen;)V

    .line 62
    :goto_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screen;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->access$200(Lcom/alibaba/lightapp/runtime/plugin/device/Screen;)Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 63
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screen;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->access$200(Lcom/alibaba/lightapp/runtime/plugin/device/Screen;)Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Z)V

    .line 66
    :cond_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screen;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->access$300(Lcom/alibaba/lightapp/runtime/plugin/device/Screen;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 67
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "clockwise"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 68
    .local v0, "isClockWise":Z
    const/4 v1, 0x0

    .line 69
    .local v1, "screenOrientation":I
    if-nez v0, :cond_1

    .line 70
    const/16 v1, 0x8

    .line 72
    :cond_1
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screen;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->access$300(Lcom/alibaba/lightapp/runtime/plugin/device/Screen;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 74
    .end local v0    # "isClockWise":Z
    .end local v1    # "screenOrientation":I
    :cond_2
    return-void

    .line 59
    :cond_3
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screen;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->access$100(Lcom/alibaba/lightapp/runtime/plugin/device/Screen;)V

    goto :goto_0
.end method
