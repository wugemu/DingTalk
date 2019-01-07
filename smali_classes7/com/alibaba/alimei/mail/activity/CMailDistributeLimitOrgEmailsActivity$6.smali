.class final Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$6;
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
        "Labs;",
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
    .line 218
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$6;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 218
    check-cast p1, Labs;

    .line 1221
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$6;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1224
    if-eqz p1, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$6;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;

    iget-object v1, p1, Labs;->a:Ljava/lang/Integer;

    .line 2033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 1225
    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;I)I

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$6;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;)V

    .line 218
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 237
    const-string/jumbo v0, "CMailDistributeLimitOrgEmailsActivity"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$6;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 233
    return-void
.end method
