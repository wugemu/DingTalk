.class final Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog$4;
.super Ljava/lang/Object;
.source "OnlineEditApplyPermissionDialog.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;
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
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog$4;->a:Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 141
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1144
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog$4;->a:Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->dismiss()V

    .line 1145
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog$4;->a:Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1148
    if-nez p1, :cond_1

    .line 1149
    sget v0, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1150
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "OnlineEditApplyPermissionDialog"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "navToConversation: getUserProfile: return null, uid: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog$4;->a:Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;

    .line 1151
    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->c(Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1150
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    :cond_0
    :goto_0
    return-void

    .line 1154
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog$4;->a:Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 163
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog$4;->a:Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->dismiss()V

    .line 164
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "OnlineEditApplyPermissionDialog"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "navToConversation: getUserProfile: errorCode: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", errorMsg: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ", uid: "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog$4;->a:Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;

    .line 166
    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->c(Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 164
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog$4;->a:Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 159
    return-void
.end method
