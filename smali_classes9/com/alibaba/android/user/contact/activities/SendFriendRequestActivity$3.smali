.class final Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$3;
.super Ljava/lang/Object;
.source "SendFriendRequestActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$3;->a:Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 234
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$3;->a:Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->e(Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$3;->a:Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->e(Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$3;->a:Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->e(Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_0
    return-void
.end method
