.class final Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$2;
.super Ljava/lang/Object;
.source "CMailDistributeOrgEmailsActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;
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
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 339
    check-cast p1, Labt;

    .line 1342
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->dismissLoadingDialog()V

    .line 1346
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;Labt;)Labt;

    .line 1347
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->i_()V

    .line 339
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 356
    const-string/jumbo v0, "CMailDistributeOrgEmailsActivity"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 352
    return-void
.end method
