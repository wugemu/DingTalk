.class Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$2;
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


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$2;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$2;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;)Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1$2;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;)Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->dismiss()V

    .line 144
    :cond_0
    return-void
.end method
