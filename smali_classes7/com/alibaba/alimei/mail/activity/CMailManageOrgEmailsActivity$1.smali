.class final Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity$1;
.super Ljava/lang/Object;
.source "CMailManageOrgEmailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;)Lrz;

    move-result-object v0

    invoke-virtual {v0}, Lrz;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;)Lrz;

    move-result-object v0

    .line 2041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lrz;->a:J

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Laxo$f;->manage_account_layout:I

    if-ne v0, v1, :cond_2

    .line 3030
    const-string/jumbo v0, "org_management_mail_distribute_manual_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;)V

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Laxo$f;->distribute_account_layout:I

    if-ne v0, v1, :cond_3

    .line 84
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lacg;->a(Landroid/content/Context;J)V

    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Laxo$f;->add_new_org_mail:I

    if-ne v0, v1, :cond_0

    .line 3105
    const-string/jumbo v0, "mail_org_dispatch_addnew"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e(Landroid/app/Activity;J)V

    goto :goto_0
.end method
