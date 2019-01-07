.class Lcom/alipay/mobile/nebula/view/H5TabbarLayout$1;
.super Ljava/lang/Object;
.source "H5TabbarLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->addTab(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

.field final synthetic val$position:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/view/H5TabbarLayout;ILandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alipay/mobile/nebula/view/H5TabbarLayout$1;->this$0:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    iput p2, p0, Lcom/alipay/mobile/nebula/view/H5TabbarLayout$1;->val$position:I

    iput-object p3, p0, Lcom/alipay/mobile/nebula/view/H5TabbarLayout$1;->val$view:Landroid/view/View;

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
    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5TabbarLayout$1;->this$0:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->access$000(Lcom/alipay/mobile/nebula/view/H5TabbarLayout;)Lcom/alipay/mobile/nebula/view/H5TabbarLayout$H5TabListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5TabbarLayout$1;->this$0:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->access$000(Lcom/alipay/mobile/nebula/view/H5TabbarLayout;)Lcom/alipay/mobile/nebula/view/H5TabbarLayout$H5TabListener;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/nebula/view/H5TabbarLayout$1;->val$position:I

    iget-object v2, p0, Lcom/alipay/mobile/nebula/view/H5TabbarLayout$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout$H5TabListener;->onTabItemClicked(ILandroid/view/View;)V

    .line 56
    :cond_0
    return-void
.end method
