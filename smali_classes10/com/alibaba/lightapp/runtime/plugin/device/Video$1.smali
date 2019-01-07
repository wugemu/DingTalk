.class Lcom/alibaba/lightapp/runtime/plugin/device/Video$1;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/Video;->startRecord(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Video;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Video;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Video;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Video;

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
    .line 89
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Video;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Video;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Video;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->access$100(Lcom/alibaba/lightapp/runtime/plugin/device/Video;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;II)V

    .line 90
    return-void
.end method
