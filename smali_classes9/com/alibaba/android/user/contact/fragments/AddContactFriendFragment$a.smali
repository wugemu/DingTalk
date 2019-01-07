.class final Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$a;
.super Ljava/lang/Object;
.source "AddContactFriendFragment.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$a;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$a;-><init>(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 72
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$a;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->b(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$a;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->b(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$a;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->b(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 74
    .local v0, "position":I
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$a;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->c(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 75
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$a;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->a(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$a;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->d(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$a;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->a(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$a;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->f(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$a;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->e(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 78
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$a;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->f(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$a;->a:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->e(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$b;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    .end local v0    # "position":I
    :cond_0
    return-void
.end method
