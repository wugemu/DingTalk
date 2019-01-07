.class final Lhdx$3$1;
.super Ljava/lang/Object;
.source "DrawerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdx$3;->init(Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;)V
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
    .line 287
    iput-object p1, p0, Lhdx$3$1;->b:Lhdx$3;

    iput-object p2, p0, Lhdx$3$1;->a:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

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
    .line 290
    iget-object v1, p0, Lhdx$3$1;->b:Lhdx$3;

    iget-object v1, v1, Lhdx$3;->a:Lhdx;

    invoke-static {v1}, Lhdx;->b(Lhdx;)V

    .line 291
    iget-object v1, p0, Lhdx$3$1;->a:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lhdx$3$1;->a:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 292
    iget-object v1, p0, Lhdx$3$1;->b:Lhdx$3;

    iget-object v1, v1, Lhdx$3;->a:Lhdx;

    iget-object v2, p0, Lhdx$3$1;->a:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    iput-object v2, v1, Lhdx;->j:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    .line 293
    iget-object v1, p0, Lhdx$3$1;->b:Lhdx$3;

    iget-object v1, v1, Lhdx$3;->a:Lhdx;

    iget-object v2, p0, Lhdx$3$1;->b:Lhdx$3;

    iget-object v2, v2, Lhdx$3;->a:Lhdx;

    iget-object v2, v2, Lhdx;->j:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->id:Ljava/lang/String;

    .line 1034
    iput-object v2, v1, Lhdx;->i:Ljava/lang/String;

    .line 294
    iget-object v1, p0, Lhdx$3$1;->b:Lhdx$3;

    iget-object v1, v1, Lhdx$3;->a:Lhdx;

    .line 2034
    iget-object v1, v1, Lhdx;->e:Landroid/widget/FrameLayout;

    .line 294
    if-eqz v1, :cond_1

    .line 295
    iget-object v1, p0, Lhdx$3$1;->b:Lhdx$3;

    iget-object v1, v1, Lhdx$3;->a:Lhdx;

    .line 3034
    iget-object v1, v1, Lhdx;->e:Landroid/widget/FrameLayout;

    .line 295
    iget-object v2, p0, Lhdx$3$1;->b:Lhdx$3;

    iget-object v2, v2, Lhdx$3;->a:Lhdx;

    iget-object v2, v2, Lhdx;->j:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    iget v2, v2, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->alpha:F

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 296
    iget-object v1, p0, Lhdx$3$1;->b:Lhdx$3;

    iget-object v1, v1, Lhdx$3;->a:Lhdx;

    .line 4034
    iget-object v1, v1, Lhdx;->e:Landroid/widget/FrameLayout;

    .line 296
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 297
    .local v0, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget-object v1, p0, Lhdx$3$1;->b:Lhdx$3;

    iget-object v1, v1, Lhdx$3;->a:Lhdx;

    iget-object v1, v1, Lhdx;->j:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    iget v1, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->width:I

    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->width:I

    .line 298
    iget-object v1, p0, Lhdx$3$1;->b:Lhdx$3;

    iget-object v1, v1, Lhdx$3;->a:Lhdx;

    iget-object v1, v1, Lhdx;->j:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    iget v1, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->from:I

    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    .line 299
    iget-object v1, p0, Lhdx$3$1;->b:Lhdx$3;

    iget-object v1, v1, Lhdx$3;->a:Lhdx;

    .line 5034
    iget-object v1, v1, Lhdx;->e:Landroid/widget/FrameLayout;

    .line 299
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    iget-object v1, p0, Lhdx$3$1;->b:Lhdx$3;

    iget-object v1, v1, Lhdx$3;->a:Lhdx;

    .line 6034
    iget-object v1, v1, Lhdx;->f:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 301
    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lhdx$3$1;->b:Lhdx$3;

    iget-object v1, v1, Lhdx$3;->a:Lhdx;

    .line 7034
    iget-object v1, v1, Lhdx;->f:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 302
    iget-object v2, p0, Lhdx$3$1;->b:Lhdx$3;

    iget-object v2, v2, Lhdx$3;->a:Lhdx;

    iget-object v2, v2, Lhdx;->j:Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->loadUrl(Ljava/lang/String;)V

    .line 305
    :cond_0
    iget-object v1, p0, Lhdx$3$1;->b:Lhdx$3;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lhdx$3;->a(Lhdx$3;Z)Z

    .line 308
    .end local v0    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_1
    return-void
.end method
