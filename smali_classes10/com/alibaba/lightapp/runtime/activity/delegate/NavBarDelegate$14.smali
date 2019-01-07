.class final Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;
.super Ljava/lang/Object;
.source "NavBarDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 324
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->d(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 325
    .local v0, "actionBarHeight":I
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;

    move-result-object v5

    sget v6, Lhdn$h;->webview_frame:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 326
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    instance-of v5, v3, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_0

    move-object v5, v3

    .line 327
    check-cast v5, Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    .line 328
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    move-object v5, v3

    .line 329
    check-cast v5, Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 330
    .local v4, "wrapView":Landroid/view/View;
    if-eqz v4, :cond_2

    instance-of v5, v4, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v5, :cond_2

    .line 331
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    check-cast v4, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .end local v4    # "wrapView":Landroid/view/View;
    invoke-static {v5, v4}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 337
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_0
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->e(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 338
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->e(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-result-object v5

    new-instance v6, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14$1;

    invoke-direct {v6, p0, v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14$1;-><init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;I)V

    invoke-virtual {v5, v6}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->setOnCoreScrollChangeLsitener(Lcom/alibaba/lightapp/runtime/WebViewWrapper$a;)V

    .line 361
    :cond_1
    return-void

    .line 328
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    .restart local v4    # "wrapView":Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
