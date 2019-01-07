.class final Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity$4;
.super Ljava/lang/Object;
.source "UserGuideTaskActivity.java"

# interfaces
.implements Lhdf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity$4;->a:Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;

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
    .line 195
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity$4;->a:Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->a(Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 196
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity$4;->a:Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->a(Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 186
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method
