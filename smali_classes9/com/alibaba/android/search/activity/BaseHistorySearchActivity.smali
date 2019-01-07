.class public Lcom/alibaba/android/search/activity/BaseHistorySearchActivity;
.super Lcom/alibaba/android/search/activity/BaseSearchActivity;
.source "BaseHistorySearchActivity.java"

# interfaces
.implements Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$a;


# instance fields
.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alibaba/android/search/activity/BaseSearchActivity;-><init>()V

    .line 45
    new-instance v0, Lcom/alibaba/android/search/activity/BaseHistorySearchActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/activity/BaseHistorySearchActivity$1;-><init>(Lcom/alibaba/android/search/activity/BaseHistorySearchActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/search/activity/BaseHistorySearchActivity;->f:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "selected"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/alibaba/android/search/activity/BaseHistorySearchActivity;->b:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 82
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/alibaba/android/search/activity/BaseSearchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1062
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1063
    const-string/jumbo v1, "com.workapp.add.search.history"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1064
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/activity/BaseHistorySearchActivity;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 43
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/android/search/activity/BaseHistorySearchActivity;->f:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 71
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/activity/BaseHistorySearchActivity;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/search/activity/BaseHistorySearchActivity;->f:Landroid/content/BroadcastReceiver;

    .line 74
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/search/activity/BaseSearchActivity;->onDestroy()V

    .line 75
    return-void
.end method
