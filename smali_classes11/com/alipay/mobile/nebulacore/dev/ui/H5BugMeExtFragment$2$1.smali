.class Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment$2$1;
.super Ljava/lang/Object;
.source "H5BugMeExtFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment$2;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment$2$1;->this$1:Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment$2;

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
    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment$2$1;->this$1:Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment$2;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment$2;->this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeApplogUploader;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment$2$1;->this$1:Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment$2;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment$2;->this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "Android-Nebula"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeApplogUploader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeApplogUploader;->uploadLog()V

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment$2$1;->this$1:Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment$2;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment$2;->this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment;->access$100(Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    const-string/jumbo v0, "H5BugmeApplogUploader"

    const-string/jumbo v1, "mContext == null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
