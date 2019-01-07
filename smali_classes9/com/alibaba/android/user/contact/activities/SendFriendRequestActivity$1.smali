.class final Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$1;
.super Ljava/lang/Object;
.source "SendFriendRequestActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 205
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 216
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->a(Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->a(Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->b(Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->b(Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->a(Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 208
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 212
    return-void
.end method
