.class Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$7$1;
.super Ljava/lang/Object;
.source "H5NavigationBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$7;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$7;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$7;

    .prologue
    .line 1331
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$7$1;->this$1:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1334
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$7$1;->this$1:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$7;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$7;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->access$900(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getOptionMenuContainer()Landroid/view/View;

    move-result-object v0

    .line 1335
    .local v0, "optionMenuContainer":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1336
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1338
    :cond_0
    return-void
.end method
