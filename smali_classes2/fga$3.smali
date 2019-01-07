.class final Lfga$3;
.super Ljava/lang/Object;
.source "AcceptFriendPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfga;->a(JLcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)V
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
    .line 119
    iput-object p1, p0, Lfga$3;->d:Lfga;

    iput-object p2, p0, Lfga$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iput-boolean p3, p0, Lfga$3;->b:Z

    iput-wide p4, p0, Lfga$3;->c:J

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
    .line 119
    .line 1122
    iget-object v0, p0, Lfga$3;->d:Lfga;

    invoke-static {v0}, Lfga;->b(Lfga;)Lcli;

    move-result-object v0

    check-cast v0, Lffz$b;

    invoke-interface {v0}, Lffz$b;->dismissLoadingDialog()V

    .line 1123
    iget-object v0, p0, Lfga$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v0, :cond_1

    .line 1124
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v0

    invoke-virtual {v0}, Lfmz;->e()Lfmp;

    move-result-object v0

    iget-object v1, p0, Lfga$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-boolean v2, p0, Lfga$3;->b:Z

    invoke-interface {v0, v1, v2}, Lfmp;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)I

    .line 1128
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "action_friend_request_status_changed"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1129
    const-string/jumbo v0, "user_id"

    iget-wide v2, p0, Lfga$3;->c:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1130
    const-string/jumbo v0, "friend_request_status"

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->ACCEPTED:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->getValue()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1131
    iget-object v0, p0, Lfga$3;->d:Lfga;

    invoke-static {v0}, Lfga;->c(Lfga;)Lcli;

    move-result-object v0

    check-cast v0, Lffz$b;

    invoke-interface {v0}, Lffz$b;->a()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Lfga$3;->d:Lfga;

    invoke-static {v0}, Lfga;->d(Lfga;)Lcli;

    move-result-object v0

    check-cast v0, Lffz$b;

    invoke-interface {v0}, Lffz$b;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1134
    :cond_0
    iget-object v0, p0, Lfga$3;->d:Lfga;

    invoke-static {v0}, Lfga;->e(Lfga;)Lcli;

    move-result-object v0

    check-cast v0, Lffz$b;

    invoke-interface {v0}, Lffz$b;->f()V

    .line 119
    return-void

    .line 1126
    :cond_1
    const-string/jumbo v0, "accept friend request, userProfileObject null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 144
    iget-object v0, p0, Lfga$3;->d:Lfga;

    invoke-static {v0}, Lfga;->f(Lfga;)Lcli;

    move-result-object v0

    check-cast v0, Lffz$b;

    invoke-interface {v0}, Lffz$b;->dismissLoadingDialog()V

    .line 145
    const-string/jumbo v0, "BusinessRequestPresenter"

    const-string/jumbo v1, "accept friend request error %s %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v0, v1, v2}, Lfxo;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string/jumbo v1, ","

    aput-object v1, v0, v4

    aput-object p2, v0, v5

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 140
    return-void
.end method
