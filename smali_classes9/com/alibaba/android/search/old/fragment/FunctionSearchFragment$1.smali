.class final Lcom/alibaba/android/search/old/fragment/FunctionSearchFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "FunctionSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/old/fragment/FunctionSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/old/fragment/FunctionSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/old/fragment/FunctionSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/old/fragment/FunctionSearchFragment;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/FunctionSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/FunctionSearchFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 49
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/FunctionSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/FunctionSearchFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/search/old/fragment/FunctionSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 50
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 53
    :cond_0
    return-void
.end method
