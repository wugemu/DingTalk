.class final Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$2;
.super Lcom/uc/webview/export/WebViewClient;
.source "MyCustomerGuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$2;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;

    invoke-direct {p0}, Lcom/uc/webview/export/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 270
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$2;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->b(Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 272
    return-void
.end method

.method public final onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 276
    invoke-super {p0, p1, p2, p3}, Lcom/uc/webview/export/WebViewClient;->onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 277
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity$2;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;->b(Lcom/alibaba/android/user/crm/activity/MyCustomerGuideActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 278
    return-void
.end method
