.class final Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "GlobalSearchHomepageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$2;->a:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

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
    .line 222
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$2;->a:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    const-string/jumbo v0, "ACTION_SEARCH_HISTORY_LOADED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$2;->a:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->b(Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;)V

    goto :goto_0
.end method
