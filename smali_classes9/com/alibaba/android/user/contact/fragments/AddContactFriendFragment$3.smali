.class final Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$3;
.super Ljava/lang/Object;
.source "AddContactFriendFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 193
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->d()V

    .line 194
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->h(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->h(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->c(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->i(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->j(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 211
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->l(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Lfgd;

    move-result-object v0

    invoke-virtual {v0}, Lfgd;->notifyDataSetChanged()V

    .line 212
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->k(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->k(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->l(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Lfgd;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->k(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Ljava/util/HashMap;

    move-result-object v1

    .line 1057
    iput-object v1, v0, Lfgg;->c:Ljava/util/HashMap;

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->m(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)V

    .line 205
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->n(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)V

    .line 206
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->l(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Lfgd;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->h(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Ljava/util/List;

    move-result-object v1

    .line 1061
    iput-object v1, v0, Lfgg;->a:Ljava/util/List;

    .line 1062
    invoke-virtual {v0}, Lfgg;->notifyDataSetChanged()V

    .line 207
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->j(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->c(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$3;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->i(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setVisibility(I)V

    goto :goto_0
.end method
