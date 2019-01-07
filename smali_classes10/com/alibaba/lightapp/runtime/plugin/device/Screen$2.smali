.class Lcom/alibaba/lightapp/runtime/plugin/device/Screen$2;
.super Ljava/lang/Object;
.source "Screen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->resetView(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screen;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Screen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Screen;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screen;

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
    const/4 v1, 0x1

    .line 117
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screen;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->access$300(Lcom/alibaba/lightapp/runtime/plugin/device/Screen;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screen;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->access$300(Lcom/alibaba/lightapp/runtime/plugin/device/Screen;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screen;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Screen;)V

    .line 123
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screen;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->access$200(Lcom/alibaba/lightapp/runtime/plugin/device/Screen;)Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screen$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screen;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Screen;->access$200(Lcom/alibaba/lightapp/runtime/plugin/device/Screen;)Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Z)V

    .line 126
    :cond_1
    return-void
.end method
