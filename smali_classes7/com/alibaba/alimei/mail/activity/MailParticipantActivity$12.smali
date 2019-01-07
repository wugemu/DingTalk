.class final Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$12;
.super Ljava/lang/Object;
.source "MailParticipantActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 5
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v4, 0x8

    .line 474
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CMail"

    const-string/jumbo v2, "mail.receiverList.appear"

    invoke-static {v0, v1, v2}, Lyn;->c(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Lada;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Lada;

    move-result-object v0

    invoke-virtual {v0}, Lada;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 481
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->j(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)V

    .line 482
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->k(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 484
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->l(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)V

    .line 485
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->a(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;J)V

    .line 487
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->m(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafh;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->k(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v4, 0x8

    .line 444
    check-cast p1, Ljava/util/Map;

    .line 1447
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CMail"

    const-string/jumbo v2, "mail.receiverList.appear"

    invoke-static {v0, v1, v2}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1452
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->a(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;Ljava/util/Map;)V

    .line 1453
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Lada;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1454
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Lada;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->a(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Ljava/util/HashSet;

    move-result-object v1

    .line 2141
    iput-object v1, v0, Lada;->l:Ljava/util/Set;

    .line 1456
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Lada;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Lada;

    move-result-object v0

    invoke-virtual {v0}, Lada;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1458
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->j(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)V

    .line 1459
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->k(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    .line 1462
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->l(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)V

    .line 1463
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->a(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;J)V

    .line 1465
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->m(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafh;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1466
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->k(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
