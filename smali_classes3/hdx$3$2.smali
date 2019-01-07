.class final Lhdx$3$2;
.super Ljava/lang/Object;
.source "DrawerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdx$3;->config(Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

.field final synthetic b:Lhdx$3;


# direct methods
.method constructor <init>(Lhdx$3;Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;)V
    .locals 0
    .param p1, "this$1"    # Lhdx$3;

    .prologue
    .line 316
    iput-object p1, p0, Lhdx$3$2;->b:Lhdx$3;

    iput-object p2, p0, Lhdx$3$2;->a:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 319
    iget-object v1, p0, Lhdx$3$2;->a:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    if-eqz v1, :cond_5

    .line 320
    iget-object v1, p0, Lhdx$3$2;->b:Lhdx$3;

    iget-object v1, v1, Lhdx$3;->a:Lhdx;

    .line 1034
    iget-object v1, v1, Lhdx;->e:Landroid/widget/FrameLayout;

    .line 320
    if-eqz v1, :cond_5

    .line 321
    iget-object v1, p0, Lhdx$3$2;->a:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    iget v1, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->updateMask:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_0

    .line 322
    iget-object v1, p0, Lhdx$3$2;->b:Lhdx$3;

    iget-object v1, v1, Lhdx$3;->a:Lhdx;

    .line 2034
    iget-object v1, v1, Lhdx;->e:Landroid/widget/FrameLayout;

    .line 322
    iget-object v2, p0, Lhdx$3$2;->a:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    iget v2, v2, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->alpha:F

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 323
    iget-object v1, p0, Lhdx$3$2;->b:Lhdx$3;

    iget-object v1, v1, Lhdx$3;->a:Lhdx;

    iget-object v1, v1, Lhdx;->j:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    iget-object v2, p0, Lhdx$3$2;->a:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    iget v2, v2, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->alpha:F

    iput v2, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->alpha:F

    .line 325
    :cond_0
    iget-object v1, p0, Lhdx$3$2;->a:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    iget v1, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->updateMask:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_1

    .line 326
    iget-object v1, p0, Lhdx$3$2;->b:Lhdx$3;

    iget-object v1, v1, Lhdx$3;->a:Lhdx;

    .line 3034
    iget-object v1, v1, Lhdx;->e:Landroid/widget/FrameLayout;

    .line 326
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 327
    .local v0, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget-object v1, p0, Lhdx$3$2;->a:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    iget v1, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->width:I

    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->width:I

    .line 328
    iget-object v1, p0, Lhdx$3$2;->b:Lhdx$3;

    iget-object v1, v1, Lhdx$3;->a:Lhdx;

    .line 4034
    iget-object v1, v1, Lhdx;->e:Landroid/widget/FrameLayout;

    .line 328
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    iget-object v1, p0, Lhdx$3$2;->b:Lhdx$3;

    iget-object v1, v1, Lhdx$3;->a:Lhdx;

    iget-object v1, v1, Lhdx;->j:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    iget-object v2, p0, Lhdx$3$2;->a:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    iget v2, v2, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->width:I

    iput v2, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->width:I

    .line 331
    .end local v0    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_1
    iget-object v1, p0, Lhdx$3$2;->a:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    iget v1, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->updateMask:I

    and-int/lit8 v1, v1, 0x20

    if-lez v1, :cond_2

    .line 332
    iget-object v1, p0, Lhdx$3$2;->b:Lhdx$3;

    iget-object v1, v1, Lhdx$3;->a:Lhdx;

    .line 5034
    iget-object v1, v1, Lhdx;->e:Landroid/widget/FrameLayout;

    .line 332
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 333
    .restart local v0    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget-object v1, p0, Lhdx$3$2;->a:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    iget v1, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->from:I

    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    .line 334
    iget-object v1, p0, Lhdx$3$2;->b:Lhdx$3;

    iget-object v1, v1, Lhdx$3;->a:Lhdx;

    .line 6034
    iget-object v1, v1, Lhdx;->e:Landroid/widget/FrameLayout;

    .line 334
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    iget-object v1, p0, Lhdx$3$2;->b:Lhdx$3;

    iget-object v1, v1, Lhdx$3;->a:Lhdx;

    iget-object v1, v1, Lhdx;->j:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    iget-object v2, p0, Lhdx$3$2;->a:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    iget v2, v2, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->from:I

    iput v2, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->from:I

    .line 337
    .end local v0    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Lhdx$3$2;->a:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    iget v1, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->updateMask:I

    and-int/lit8 v1, v1, 0x10

    if-lez v1, :cond_3

    .line 338
    iget-object v1, p0, Lhdx$3$2;->b:Lhdx$3;

    iget-object v1, v1, Lhdx$3;->a:Lhdx;

    iget-object v1, v1, Lhdx;->j:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    iget-object v2, p0, Lhdx$3$2;->a:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    iget-boolean v2, v2, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->pushContent:Z

    iput-boolean v2, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->pushContent:Z

    .line 340
    :cond_3
    iget-object v1, p0, Lhdx$3$2;->a:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    iget v1, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->updateMask:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_5

    .line 341
    iget-object v1, p0, Lhdx$3$2;->b:Lhdx$3;

    iget-object v1, v1, Lhdx$3;->a:Lhdx;

    .line 7034
    iget-object v1, v1, Lhdx;->f:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 341
    if-eqz v1, :cond_4

    .line 342
    iget-object v1, p0, Lhdx$3$2;->b:Lhdx$3;

    iget-object v1, v1, Lhdx$3;->a:Lhdx;

    .line 8034
    iget-object v1, v1, Lhdx;->f:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 342
    iget-object v2, p0, Lhdx$3$2;->a:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->loadUrl(Ljava/lang/String;)V

    .line 344
    :cond_4
    iget-object v1, p0, Lhdx$3$2;->b:Lhdx$3;

    iget-object v1, v1, Lhdx$3;->a:Lhdx;

    iget-object v1, v1, Lhdx;->j:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    iget-object v2, p0, Lhdx$3$2;->a:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->url:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->url:Ljava/lang/String;

    .line 348
    :cond_5
    return-void
.end method
