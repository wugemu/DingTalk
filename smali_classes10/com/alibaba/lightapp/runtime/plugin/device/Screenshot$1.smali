.class Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;
.super Ljava/lang/Object;
.source "Screenshot.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->startMonitor(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetected(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 75
    const-string/jumbo v1, "LIFECYCLE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 76
    .local v0, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    invoke-interface {v0}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->isBackground()Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;)Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;)Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->dismiss()V

    .line 80
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->access$002(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;)Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->access$100(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lhdn$l;->BottomFullDialog:I

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;-><init>(Landroid/content/Context;I)V

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->access$002(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;)Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;

    .line 84
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;)Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->access$200(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->setTipTitle(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;)Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->access$300(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->setTipContent(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;)Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->access$400(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->setTipAction(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;)Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->setIconUrl(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;)Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->setSendButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;)Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$2;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->setCloseButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;)Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->show()V

    .line 154
    .end local v0    # "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    :goto_0
    return-void

    .line 149
    .restart local v0    # "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    :cond_1
    const-string/jumbo v1, "lightapp"

    sget-object v2, Lcom/alibaba/lightapp/runtime/Plugin;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "ScreenShotDetector is in background"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    .end local v0    # "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    :cond_2
    const-string/jumbo v1, "lightapp"

    sget-object v2, Lcom/alibaba/lightapp/runtime/Plugin;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "ScreenShotDetector path is null"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
