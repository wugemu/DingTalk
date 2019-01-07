.class final Lcom/alibaba/android/user/external/list/ExternalSearchActivity$1;
.super Ljava/lang/Object;
.source "ExternalSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/list/ExternalSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$1;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 55
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$1;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->b()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$1;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->a(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)Lcom/alibaba/android/user/external/list/ExternalListFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$1;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->a(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)Lcom/alibaba/android/user/external/list/ExternalListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$1;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->a(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)Lcom/alibaba/android/user/external/list/ExternalListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$1;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->b(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$1;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->b(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->a(Ljava/lang/String;)V

    .line 70
    :cond_1
    return-void

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$1;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->a(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)Lcom/alibaba/android/user/external/list/ExternalListFragment;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$1;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->a(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)Lcom/alibaba/android/user/external/list/ExternalListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 62
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$1;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->a(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)Lcom/alibaba/android/user/external/list/ExternalListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$1;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$1;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->a(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
