.class final Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2$1;
.super Ljava/lang/Object;
.source "FriendShareListActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2$1;->c:Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2;

    iput-object p2, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    iput p3, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2$1;->b:I

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
    .line 171
    .line 1174
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 1175
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2$1;->c:Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2;->a:Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->a(Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2$1;->b:I

    if-le v0, v1, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2$1;->c:Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2;->a:Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->a(Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2$1;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1177
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2$1;->c:Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2;->a:Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->b(Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;)V

    .line 171
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 187
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2$1;->c:Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2;->a:Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->c(Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "remove show mobile err %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 189
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 183
    return-void
.end method
