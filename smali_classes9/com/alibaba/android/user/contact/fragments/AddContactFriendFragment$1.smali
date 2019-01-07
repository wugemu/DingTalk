.class final Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$1;
.super Ljava/lang/Object;
.source "AddContactFriendFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->f()V
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
    .line 145
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$1;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

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
    .line 149
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$1;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v1

    invoke-virtual {v1}, Lfmz;->b()Lfmr;

    move-result-object v1

    invoke-interface {v1}, Lfmr;->a()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->a(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;Ljava/util/List;)Ljava/util/List;

    .line 150
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$1;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->g(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)V

    .line 151
    return-void
.end method
