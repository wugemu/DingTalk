.class Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$7;
.super Ljava/lang/Object;
.source "H5NavigationBar.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/callback/H5SimpleRpcListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->getTinyPopMenuData(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    .prologue
    .line 1324
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$7;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1344
    const-string/jumbo v0, "H5NavigationBar"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getTinyPopMenuData onFailed errorCode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", errorMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$7;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->access$1000(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)Liop;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1340
    :goto_0
    return-void

    .line 1330
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$7;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->access$1100(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$7;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->access$1000(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)Liop;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$7;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$7;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->access$900(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getOptionMenuContainer()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-interface {v1, v2, p1, v3, v0}, Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;->init(Liop;Ljava/lang/String;Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 1331
    new-instance v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$7$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$7$1;-><init>(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$7;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
