.class Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent$3;
.super Ljava/lang/Object;
.source "H5TransProgressContent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent$3;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v4, 0x1a

    const/4 v3, 0x0

    .line 140
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent$3;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->access$200(Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->h5_title_bar_progress:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 142
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent$3;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->access$200(Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->dip2px(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent$3;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->access$200(Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->dip2px(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 143
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent$3;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->access$300(Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent$3;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->access$300(Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 145
    return-void
.end method
