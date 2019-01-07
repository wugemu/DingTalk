.class final Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$4;
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
    .line 217
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

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
    .line 220
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->h(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->k(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v1, v2}, Lflw;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 221
    .local v0, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$4$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$4$1;-><init>(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$4;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto :goto_0
.end method
