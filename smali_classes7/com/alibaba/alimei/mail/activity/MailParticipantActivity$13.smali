.class final Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;
.super Ljava/lang/Object;
.source "MailParticipantActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;
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
        "Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 2
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 559
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    :goto_0
    return-void

    .line 562
    :cond_0
    if-eqz p1, :cond_1

    .line 563
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->isNetworkError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 564
    sget v0, Laxo$i;->network_no_connection:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 569
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->k(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;Z)V

    goto :goto_0

    .line 566
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getRpcBusinessError()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 501
    check-cast p1, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;

    .line 1504
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1508
    if-nez p1, :cond_1

    .line 1552
    :goto_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->k(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lss;->a(Landroid/view/View;Z)V

    .line 1550
    :cond_0
    :goto_1
    return-void

    .line 1513
    :cond_1
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;->mFailedItemList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;->mFailedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 1514
    :goto_2
    iget v3, p1, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;->mStatus:I

    .line 1515
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v4, v3}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->c(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;I)I

    .line 1516
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1520
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->k(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1521
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->n(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v3, Laxo$i;->dt_cmail_revoke_mail:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1522
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->n(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1523
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->o(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1524
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->n(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxo$c;->ui_common_alert_bg_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1525
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->k(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 1513
    goto :goto_2

    .line 1529
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->k(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1530
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->n(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Laxo$i;->dt_cmail_revoking:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1531
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->n(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1532
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->n(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Laxo$c;->ui_common_alert_bg_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1533
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->o(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1534
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->k(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 1535
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->a(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;J)V

    goto/16 :goto_1

    .line 1538
    :pswitch_2
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->k(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1539
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->n(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1540
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->o(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1541
    if-eqz v0, :cond_3

    .line 1542
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->n(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    sget v4, Laxo$i;->dt_cmail_revoke_fail:I

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;->mFailedItemList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1543
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->n(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxo$c;->ui_common_alert_bg_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1544
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->k(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_1

    .line 1546
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->n(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Laxo$i;->dt_cmail_revoke_success:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1547
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->n(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Laxo$c;->ui_common_safe_bg_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1548
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->k(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_1

    .line 1516
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
