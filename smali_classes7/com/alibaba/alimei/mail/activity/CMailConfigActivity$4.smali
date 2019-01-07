.class final Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4;
.super Ljava/lang/Object;
.source "CMailConfigActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;
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
        "Labg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    .prologue
    .line 617
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

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
    .line 617
    check-cast p1, Labg;

    .line 1621
    if-eqz p1, :cond_0

    iget-object v0, p1, Labg;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p1, Labg;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1622
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    const/4 v0, 0x1

    invoke-static {v0}, Lacn;->c(Z)V

    .line 2246
    :cond_0
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 1625
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->s(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4$1;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/alimei/framework/account/AccountApi;->removeAccount(Ljava/lang/String;Lxv;)V

    .line 617
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 651
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->dismissLoadingDialog()V

    .line 653
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Lrz;

    move-result-object v0

    .line 1045
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lrz;->a:J

    .line 654
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 647
    return-void
.end method
