.class Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity$1;
.super Landroid/os/Handler;
.source "H5DevConfigEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity$1;->this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity$1;->this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;->access$000(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :cond_0
    return-void
.end method
