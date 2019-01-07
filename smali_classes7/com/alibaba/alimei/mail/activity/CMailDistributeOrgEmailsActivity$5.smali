.class final Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$5;
.super Ljava/lang/Object;
.source "CMailDistributeOrgEmailsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 107
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)Laac;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)Laac;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Laac;->a:Ljava/lang/Boolean;

    .line 112
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->e(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Lro;->a()Lro;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)Laac;

    move-result-object v2

    iget-object v2, v2, Laac;->a:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    .line 114
    invoke-static {v3}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)Laac;

    move-result-object v3

    iget-object v3, v3, Laac;->b:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    invoke-static {v4}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)Laac;

    move-result-object v4

    iget-object v4, v4, Laac;->c:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    .line 113
    invoke-virtual/range {v0 .. v5}, Lro;->a(Ljava/lang/Long;ZZILcma;)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    invoke-static {v0, p2}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;Z)Z

    .line 118
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->f(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)V

    .line 119
    return-void
.end method
