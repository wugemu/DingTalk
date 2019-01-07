.class final Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$5;
.super Ljava/lang/Object;
.source "CMailDistributeLimitOrgEmailsActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;
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
        "Laav;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 154
    check-cast p1, Laav;

    .line 1157
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->dismissLoadingDialog()V

    .line 1161
    iget-object v0, p1, Laav;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->onBackPressed()V

    .line 154
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 174
    const-string/jumbo v0, "CMailDistributeLimitOrgEmailsActivity"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 170
    return-void
.end method
