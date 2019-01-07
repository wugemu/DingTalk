.class final Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$12;
.super Ljava/lang/Object;
.source "CMailMainFragment.java"

# interfaces
.implements Lyb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;

.field final synthetic c:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;Ljava/lang/String;Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 1544
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$12;->c:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$12;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$12;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Lyc;)V
    .locals 6
    .param p1, "eventMessage"    # Lyc;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 1547
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$12;->c:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v3}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1584
    :cond_0
    :goto_0
    return-void

    .line 1550
    :cond_1
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$12;->a:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$12;->a:Ljava/lang/String;

    iget-object v4, p1, Lyc;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1554
    const-string/jumbo v3, "basic_SyncNewMail"

    iget-object v4, p1, Lyc;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "basic_syncTagMail"

    iget-object v4, p1, Lyc;->a:Ljava/lang/String;

    .line 1555
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1559
    :cond_2
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v3

    iget-object v4, p1, Lyc;->b:Ljava/lang/String;

    invoke-interface {v3, v4}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v0

    .line 1561
    .local v0, "isAgentEmail":Z
    iget v3, p1, Lyc;->c:I

    if-ne v3, v5, :cond_4

    .line 1647
    const-string/jumbo v3, "mail_receive_success_click"

    invoke-static {v3}, Lafe;->a(Ljava/lang/String;)V

    .line 1563
    if-eqz v0, :cond_3

    .line 1564
    const-string/jumbo v3, "mail.syncMail.imap"

    iget-object v4, p1, Lyc;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lafe;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    :goto_1
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$12;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;

    invoke-interface {v3, v5}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;->a(Z)V

    .line 1570
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$12;->c:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->w(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V

    goto :goto_0

    .line 1566
    :cond_3
    const-string/jumbo v3, "mail.syncMail"

    iget-object v4, p1, Lyc;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lafe;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1571
    :cond_4
    iget v3, p1, Lyc;->c:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 1572
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$12;->c:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    iget-object v4, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    iget-object v5, p1, Lyc;->b:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;Ljava/lang/String;)V

    .line 1574
    const-string/jumbo v3, "refreshMail"

    iget-object v4, p1, Lyc;->f:Ljava/lang/String;

    iget-object v5, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {v3, v4, v5}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 1575
    const-string/jumbo v3, "mail.syncMail"

    iget-object v4, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {v3, v4}, Lafe;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 1576
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$12;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;->a(Z)V

    .line 1577
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$12;->c:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->w(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V

    goto/16 :goto_0

    .line 1578
    :cond_5
    iget v3, p1, Lyc;->c:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1579
    iget v1, p1, Lyc;->d:I

    .line 1580
    .local v1, "offset":I
    iget-wide v4, p1, Lyc;->e:J

    long-to-int v2, v4

    .line 1581
    .local v2, "total":I
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$12;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;

    invoke-interface {v3, v1, v2}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;->a(II)V

    goto/16 :goto_0
.end method
