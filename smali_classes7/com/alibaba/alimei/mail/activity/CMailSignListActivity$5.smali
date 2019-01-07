.class final Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$5;
.super Ljava/lang/Object;
.source "CMailSignListActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    .prologue
    .line 593
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$5;->b:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    iput-wide p2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$5;->a:J

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
    .line 593
    check-cast p1, Ljava/lang/String;

    .line 1596
    iget-wide v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$5;->a:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lacn;->a(JZ)V

    .line 1597
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$5;->b:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1598
    const-string/jumbo v0, "CMailSignListActivity"

    const-string/jumbo v1, "mActivity.isDestroyed()"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    :goto_0
    return-void

    .line 1601
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$5;->b:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->j(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)Ladb;

    move-result-object v0

    .line 2121
    const/4 v1, 0x0

    iput-object v1, v0, Ladb;->b:Landroid/widget/CompoundButton;

    .line 1602
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$5;->b:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->g()V

    .line 1603
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1604
    sget v0, Laxo$i;->dt_mail_signature_relief_open:I

    invoke-static {v0}, Lhcn;->a(I)V

    goto :goto_0

    .line 1606
    :cond_1
    invoke-static {p1}, Lhcn;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 616
    const-string/jumbo v0, "CMailSignListActivity"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$5;->b:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    const-string/jumbo v0, "CMailSignListActivity"

    const-string/jumbo v1, "mActivity.isDestroyed()"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :goto_0
    return-void

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$5;->b:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->j(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)Ladb;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ladb;->a(Z)V

    .line 622
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$5;->b:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->g()V

    .line 623
    sget v0, Laxo$i;->dt_mail_signature_save_fail:I

    invoke-static {v0}, Lhcn;->a(I)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 612
    return-void
.end method
