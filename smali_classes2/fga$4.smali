.class final Lfga$4;
.super Ljava/lang/Object;
.source "AcceptFriendPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfga;->a(JLcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;ZZLcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field final synthetic b:Z

.field final synthetic c:J

.field final synthetic d:Lfga;


# direct methods
.method constructor <init>(Lfga;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;ZJ)V
    .locals 0
    .param p1, "this$0"    # Lfga;

    .prologue
    .line 159
    iput-object p1, p0, Lfga$4;->d:Lfga;

    iput-object p2, p0, Lfga$4;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iput-boolean p3, p0, Lfga$4;->b:Z

    iput-wide p4, p0, Lfga$4;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 159
    .line 1162
    iget-object v0, p0, Lfga$4;->d:Lfga;

    invoke-static {v0}, Lfga;->g(Lfga;)Lcli;

    move-result-object v0

    check-cast v0, Lffz$b;

    invoke-interface {v0}, Lffz$b;->dismissLoadingDialog()V

    .line 1163
    iget-object v0, p0, Lfga$4;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v0, :cond_1

    .line 1164
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v0

    invoke-virtual {v0}, Lfmz;->e()Lfmp;

    move-result-object v0

    iget-object v1, p0, Lfga$4;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-boolean v2, p0, Lfga$4;->b:Z

    invoke-interface {v0, v1, v2}, Lfmp;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)I

    .line 1168
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "action_friend_request_status_changed"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1169
    const-string/jumbo v0, "user_id"

    iget-wide v2, p0, Lfga$4;->c:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1170
    const-string/jumbo v0, "friend_request_status"

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->ACCEPTED:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->getValue()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1171
    iget-object v0, p0, Lfga$4;->d:Lfga;

    invoke-static {v0}, Lfga;->h(Lfga;)Lcli;

    move-result-object v0

    check-cast v0, Lffz$b;

    invoke-interface {v0}, Lffz$b;->a()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Lfga$4;->d:Lfga;

    invoke-static {v0}, Lfga;->i(Lfga;)Lcli;

    move-result-object v0

    check-cast v0, Lffz$b;

    invoke-interface {v0}, Lffz$b;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1174
    :cond_0
    iget-object v0, p0, Lfga$4;->d:Lfga;

    invoke-static {v0}, Lfga;->j(Lfga;)Lcli;

    move-result-object v0

    check-cast v0, Lffz$b;

    invoke-interface {v0}, Lffz$b;->f()V

    .line 159
    return-void

    .line 1166
    :cond_1
    const-string/jumbo v0, "accept friend requestV3, userProfileObject null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 184
    const-string/jumbo v0, "BusinessRequestPresenter"

    const-string/jumbo v1, "accept friend v3 err %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lfga$4;->d:Lfga;

    invoke-static {v0}, Lfga;->k(Lfga;)Lcli;

    move-result-object v0

    check-cast v0, Lffz$b;

    sget v1, Lezg$l;->load_error:I

    invoke-interface {v0, v1}, Lffz$b;->a(I)V

    .line 186
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 180
    return-void
.end method
