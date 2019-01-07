.class final Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6$1;
.super Ljava/lang/Object;
.source "CMailDistributeOrgEmailsActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
        "Labt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6$1;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 156
    check-cast p1, Labt;

    .line 1159
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6$1;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6$1;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->dismissLoadingDialog()V

    .line 1163
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6$1;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;Labt;)Labt;

    .line 1164
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6$1;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->i_()V

    .line 156
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 173
    const-string/jumbo v0, "CMailDistributeOrgEmailsActivity"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6$1;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6$1;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 169
    return-void
.end method
