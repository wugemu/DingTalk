.class final Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog$3;
.super Ljava/lang/Object;
.source "RemindOnlineCollaboratorDialog.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;
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
        "Lgqw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog$3;->a:Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 89
    .line 1092
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog$3;->a:Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->d(Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog$3;->a:Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->d(Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1095
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog$3;->a:Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1098
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog$3;->a:Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->c()V

    .line 1099
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog$3;->a:Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->dismiss()V

    .line 89
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog$3;->a:Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog$3;->a:Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->c()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 104
    return-void
.end method
