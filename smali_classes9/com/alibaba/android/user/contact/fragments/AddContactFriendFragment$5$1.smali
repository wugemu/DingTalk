.class final Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$5$1;
.super Ljava/lang/Object;
.source "AddContactFriendFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$5;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$5;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$5;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$5$1;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$5;

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
    .line 285
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$5$1;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$5;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$5;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->h(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$5$1;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$5;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$5;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->h(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$5$1;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$5;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$5;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->l(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Lfgd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$5$1;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$5;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$5;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {}, Lflr;->e()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->a(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 287
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$5$1;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$5;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$5;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->m(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)V

    .line 289
    :cond_0
    return-void
.end method
