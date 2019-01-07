.class Lcom/alipay/mobile/nebulacore/view/H5NavMenu$1;
.super Ljava/lang/Object;
.source "H5NavMenu.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->showMenu(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/view/H5NavMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu$1;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 160
    const-string/jumbo v0, "H5NavMenu"

    const-string/jumbo v1, "popupMenu onDismiss"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu$1;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->isShowPopMenu:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu$1;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->access$000(Lcom/alipay/mobile/nebulacore/view/H5NavMenu;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu$1;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->access$000(Lcom/alipay/mobile/nebulacore/view/H5NavMenu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu$1;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->access$200(Lcom/alipay/mobile/nebulacore/view/H5NavMenu;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu$1;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->access$100(Lcom/alipay/mobile/nebulacore/view/H5NavMenu;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu$1;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->access$300(Lcom/alipay/mobile/nebulacore/view/H5NavMenu;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 168
    return-void
.end method
