.class final Lcom/alibaba/android/search/fragment/MsgSearchFragment$1;
.super Ljava/lang/Object;
.source "MsgSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/fragment/MsgSearchFragment;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/MsgSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/MsgSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->a(Lcom/alibaba/android/search/fragment/MsgSearchFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->k:Lemz;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->l:Ljava/util/List;

    invoke-virtual {v0, v1}, Lemz;->a(Ljava/util/List;)V

    .line 102
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->k:Lemz;

    invoke-virtual {v0}, Lemz;->notifyDataSetChanged()V

    .line 103
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->l:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->c(Ljava/util/List;)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->b(Lcom/alibaba/android/search/fragment/MsgSearchFragment;)V

    goto :goto_0
.end method
