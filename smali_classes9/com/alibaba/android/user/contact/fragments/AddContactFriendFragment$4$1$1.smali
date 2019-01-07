.class final Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$4$1$1;
.super Ljava/lang/Object;
.source "AddContactFriendFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$4$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$4$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$4$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$4$1;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$4$1$1;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$4$1;

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
    .line 230
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$4$1$1;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$4$1;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$4$1;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$4;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->l(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Lfgd;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$4$1$1;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$4$1;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$4$1;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$4;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->k(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Ljava/util/HashMap;

    move-result-object v1

    .line 1057
    iput-object v1, v0, Lfgg;->c:Ljava/util/HashMap;

    .line 231
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$4$1$1;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$4$1;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$4$1;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$4;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->l(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Lfgd;

    move-result-object v0

    invoke-virtual {v0}, Lfgd;->notifyDataSetChanged()V

    .line 232
    return-void
.end method
