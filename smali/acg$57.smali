.class final Lacg$57;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg;->d(Landroid/content/Context;Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcma;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3917
    iput-object p1, p0, Lacg$57;->a:Lcma;

    iput-object p2, p0, Lacg$57;->b:Landroid/content/Context;

    iput-object p3, p0, Lacg$57;->c:Ljava/lang/String;

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
    .line 3917
    .line 4920
    iget-object v0, p0, Lacg$57;->a:Lcma;

    if-eqz v0, :cond_0

    .line 4921
    iget-object v0, p0, Lacg$57;->a:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 4925
    :cond_0
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_cmail_search_enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 4926
    invoke-static {}, Lacq;->q()Z

    move-result v1

    .line 4928
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 4929
    iget-object v0, p0, Lacg$57;->b:Landroid/content/Context;

    instance-of v0, v0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    if-eqz v0, :cond_1

    .line 4930
    iget-object v0, p0, Lacg$57;->b:Landroid/content/Context;

    check-cast v0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    .line 4931
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4932
    const-string/jumbo v2, "account_name"

    iget-object v3, p0, Lacg$57;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4933
    const-string/jumbo v2, "/cmail/search.html"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4934
    :cond_1
    :goto_0
    return-void

    .line 4936
    :cond_2
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lacg$57;->b:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/mail/search.html"

    .line 4938
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lacg$57$1;

    invoke-direct {v3, p0}, Lacg$57$1;-><init>(Lacg$57;)V

    .line 4937
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 3956
    const-string/jumbo v0, "navMailSearch"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3957
    iget-object v0, p0, Lacg$57;->a:Lcma;

    if-eqz v0, :cond_0

    .line 3958
    iget-object v0, p0, Lacg$57;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3960
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 3952
    return-void
.end method
