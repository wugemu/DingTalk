.class final Lacp$6;
.super Ljava/lang/Object;
.source "MailDialogManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacp;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcma;

.field final synthetic f:Lacp;


# direct methods
.method constructor <init>(Lacp;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lacp;

    .prologue
    .line 619
    iput-object p1, p0, Lacp$6;->f:Lacp;

    iput-object p2, p0, Lacp$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lacp$6;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p4, p0, Lacp$6;->c:Ljava/lang/String;

    iput-object p5, p0, Lacp$6;->d:Ljava/lang/String;

    iput-object p6, p0, Lacp$6;->e:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 619
    check-cast p1, Labg;

    .line 1622
    if-eqz p1, :cond_0

    iget-object v0, p1, Labg;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p1, Labg;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1623
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    const/4 v0, 0x1

    invoke-static {v0}, Lacn;->c(Z)V

    .line 1625
    :cond_0
    const-string/jumbo v0, "tryLoginWithTicket.unbindV6"

    const-string/jumbo v1, "onDataReceived"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 1626
    iget-object v1, p0, Lacp$6;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alibaba/alimei/framework/account/AccountApi;->removeAccount(Ljava/lang/String;Lxv;)V

    .line 1627
    iget-object v0, p0, Lacp$6;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v1, p0, Lacp$6;->c:Ljava/lang/String;

    iget-object v2, p0, Lacp$6;->d:Ljava/lang/String;

    iget-object v3, p0, Lacp$6;->e:Lcma;

    invoke-static {v0, v1, v2, v3}, Lacg;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 619
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 636
    const-string/jumbo v0, "tryUnbindOrgEmail.unbindV5"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 632
    return-void
.end method
