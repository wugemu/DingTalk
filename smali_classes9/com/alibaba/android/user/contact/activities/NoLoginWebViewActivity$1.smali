.class final Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity$1;
.super Ljava/lang/Object;
.source "NoLoginWebViewActivity.java"

# interfaces
.implements Lhdf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity$1;->a:Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity$1;->a:Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;->a(Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 76
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity$1;->a:Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;->a(Lcom/alibaba/android/user/contact/activities/NoLoginWebViewActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 66
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method
