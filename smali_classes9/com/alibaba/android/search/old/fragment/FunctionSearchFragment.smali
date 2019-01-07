.class public Lcom/alibaba/android/search/old/fragment/FunctionSearchFragment;
.super Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;
.source "FunctionSearchFragment.java"


# instance fields
.field private i:Ldq;

.field private j:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;-><init>()V

    .line 46
    new-instance v0, Lcom/alibaba/android/search/old/fragment/FunctionSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/old/fragment/FunctionSearchFragment$1;-><init>(Lcom/alibaba/android/search/old/fragment/FunctionSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/FunctionSearchFragment;->j:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;)Leqc;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 115
    new-instance v0, Leqe;

    invoke-direct {v0, p1}, Leqe;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method protected final a(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;->a(Landroid/view/View;)V

    .line 126
    const-string/jumbo v0, "search_more_click_type"

    const-string/jumbo v1, "type=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "function"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Letd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/FunctionSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 130
    return-void
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 120
    sget v0, Lemt$g;->search_function:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/FunctionSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/FunctionSearchFragment;->i:Ldq;

    .line 61
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/FunctionSearchFragment;->i:Ldq;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/FunctionSearchFragment;->j:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "action_start_enterprise_chat"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 63
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/FunctionSearchFragment;->i:Ldq;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/FunctionSearchFragment;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 68
    invoke-super {p0}, Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;->onDestroyView()V

    .line 69
    return-void
.end method
