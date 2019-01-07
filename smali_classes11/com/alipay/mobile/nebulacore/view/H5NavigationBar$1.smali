.class Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$1;
.super Ljava/lang/Object;
.source "H5NavigationBar.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->transparentTitleBar(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$1;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(II)V
    .locals 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 492
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$1;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$1;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->access$000(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)I

    move-result v3

    add-int/2addr v3, p2

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->access$002(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;I)I

    .line 493
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$1;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$1;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->access$100(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)I

    move-result v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$1;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->access$200(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)I

    move-result v4

    invoke-static {v2, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->access$300(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;IIZ)V

    .line 494
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$1;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->access$400(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    .line 495
    .local v0, "currentColor":I
    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    .line 496
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$1;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->access$500(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 498
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/search/H5SearchView;

    .line 499
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/search/H5SearchView;

    .line 500
    .local v1, "h5SearchView":Lcom/alipay/mobile/nebula/search/H5SearchView;
    if-eqz v1, :cond_0

    .line 501
    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/search/H5SearchView;->setSearchBarColor(I)V

    .line 504
    .end local v1    # "h5SearchView":Lcom/alipay/mobile/nebula/search/H5SearchView;
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$1;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$1;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->access$600(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)I

    move-result v3

    invoke-static {v2, v0, v3, v5}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->access$700(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;IIZ)V

    .line 505
    return-void
.end method
