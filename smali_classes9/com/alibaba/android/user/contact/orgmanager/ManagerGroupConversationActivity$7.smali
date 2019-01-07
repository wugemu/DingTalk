.class final Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$7;
.super Ljava/lang/Object;
.source "ManagerGroupConversationActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$7;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;

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
    .line 244
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    .line 1247
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$7;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->dismissLoadingDialog()V

    .line 1248
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$7;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$7;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->d(Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;)Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 1249
    :cond_0
    :goto_0
    return-void

    .line 1251
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$7;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;

    iget-boolean v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->hasCreateAllEmpGroup:Z

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->a(Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;Z)Z

    .line 1252
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$7;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->d(Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;)Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$7;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->a(Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setToggleChecked(Z)V

    .line 1253
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$7;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->h(Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$7;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->dismissLoadingDialog()V

    .line 264
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$7;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$7;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->d(Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;)Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    move-result-object v0

    if-nez v0, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$7;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->h(Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 259
    return-void
.end method
