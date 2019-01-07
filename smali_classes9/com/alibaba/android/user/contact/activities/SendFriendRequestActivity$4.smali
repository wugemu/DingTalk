.class final Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$4;
.super Ljava/lang/Object;
.source "SendFriendRequestActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$4;->a:Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 239
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1242
    if-eqz p1, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$4;->a:Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->e(Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1246
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$4;->a:Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->e(Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 239
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 256
    const-string/jumbo v0, "SendFriendRequestActivity"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "SendFriendRequestActivity getUserProfile to get alias error: errorCode = "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " errorMsg = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    .line 257
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    .line 256
    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 252
    return-void
.end method
