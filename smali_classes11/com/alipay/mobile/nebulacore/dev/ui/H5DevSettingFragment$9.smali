.class Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$9;
.super Ljava/lang/Object;
.source "H5DevSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->initClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$9;->this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$9;->this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;

    const-string/jumbo v1, "http://h5test.inc.alipay.net/case/index.html?__webview_options__=so%3DNO%26pd%3DNO"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->access$200(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;Ljava/lang/String;)V

    .line 269
    return-void
.end method
