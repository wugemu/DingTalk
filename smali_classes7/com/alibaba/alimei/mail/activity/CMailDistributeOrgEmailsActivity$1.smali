.class final Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$1;
.super Ljava/lang/Object;
.source "CMailDistributeOrgEmailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

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
    .line 79
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)Lrz;

    move-result-object v0

    invoke-virtual {v0}, Lrz;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)Lrz;

    move-result-object v0

    .line 2041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lrz;->a:J

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Laxo$f;->manual_distribute_layout:I

    if-ne v0, v1, :cond_2

    .line 2101
    const-string/jumbo v0, "mail_org_dispatch_batch"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    const/16 v1, 0x2711

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;I)V

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Laxo$f;->set_auto_distribute_left_limit:I

    if-ne v0, v1, :cond_3

    .line 89
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lacg;->b(Landroid/content/Context;J)V

    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Laxo$f;->auto_distribute_all:I

    if-ne v0, v1, :cond_0

    .line 3097
    const-string/jumbo v0, "mail_org_dispatch_onestep"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)V

    goto :goto_0
.end method
