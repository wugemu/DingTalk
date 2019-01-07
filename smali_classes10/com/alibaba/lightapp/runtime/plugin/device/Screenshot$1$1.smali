.class Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1;
.super Ljava/lang/Object;
.source "Screenshot.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;->onDetected(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;)Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;)Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->dismiss()V

    .line 93
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->access$002(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;)Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->access$500(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;)V

    .line 97
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1$1;

    sget-object v1, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->COMPLETED:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1;Lcom/alibaba/laiwang/photokit/compress/CompressEventType;)V

    .line 130
    .local v0, "compressEventListener":Lhae;
    sget-object v1, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->CANCEL:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    invoke-virtual {v0, v1}, Lhae;->addListenType(Lcom/alibaba/laiwang/photokit/compress/CompressEventType;)V

    .line 131
    sget-object v1, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->FAIL:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    invoke-virtual {v0, v1}, Lhae;->addListenType(Lcom/alibaba/laiwang/photokit/compress/CompressEventType;)V

    .line 134
    invoke-static {}, Lhad;->a()Lhad;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhad;->a(Lhae;)V

    .line 135
    invoke-static {}, Lhah;->a()Lhah;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$1;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lhah;->a(Ljava/lang/String;)V

    .line 136
    return-void
.end method
