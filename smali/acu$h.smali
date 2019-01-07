.class final Lacu$h;
.super Ljava/lang/Object;
.source "CMailAllSearchAdapter.java"

# interfaces
.implements Lrs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrs",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lacu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lacu;)V
    .locals 1
    .param p1, "adapter"    # Lacu;

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lacu$h;->a:Ljava/lang/ref/WeakReference;

    .line 417
    return-void
.end method

.method synthetic constructor <init>(Lacu;B)V
    .locals 0
    .param p1, "x0"    # Lacu;

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lacu$h;-><init>(Lacu;)V

    return-void
.end method

.method private b()Lacu;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lacu$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacu;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 425
    sget v0, Laxo$g;->alm_cmail_list_mail_item:I

    return v0
.end method

.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 430
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic a(Lrr;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 412
    check-cast p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 1435
    invoke-direct {p0}, Lacu$h;->b()Lacu;

    move-result-object v6

    .line 1436
    if-eqz v6, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1437
    :cond_0
    :goto_0
    return-void

    .line 2096
    :cond_1
    iget-object v7, p1, Lrr;->a:Landroid/content/Context;

    .line 1441
    iget-object v3, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->subject:Ljava/lang/String;

    .line 1442
    const/4 v0, 0x0

    .line 1443
    invoke-virtual {p2}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getFrom()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v1

    iput-object v1, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 1444
    iget-object v1, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    if-eqz v1, :cond_2

    .line 1445
    iget-object v0, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1446
    iget-object v0, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 1451
    :cond_2
    :goto_1
    iget-object v1, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->snippet:Ljava/lang/String;

    .line 1457
    if-eqz v3, :cond_3

    .line 1458
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1460
    :cond_3
    if-eqz v0, :cond_34

    .line 1461
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1463
    :goto_2
    if-eqz v1, :cond_33

    .line 1464
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1467
    :goto_3
    invoke-static {v6}, Lacu;->a(Lacu;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1468
    invoke-static {v6}, Lacu;->a(Lacu;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x19

    invoke-static {v7, v3, v1, v4}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1469
    invoke-static {v6}, Lacu;->a(Lacu;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x19

    invoke-static {v7, v2, v1, v4}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1470
    invoke-static {v6}, Lacu;->a(Lacu;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x32

    invoke-static {v7, v0, v2, v4}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v2, v0

    .line 1477
    :goto_4
    sget v0, Laxo$f;->txtMailSender:I

    .line 2100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1477
    check-cast v0, Landroid/widget/TextView;

    .line 1478
    iget-object v4, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    if-eqz v4, :cond_10

    .line 1479
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1483
    :goto_5
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 1484
    sget v0, Laxo$f;->readReplyFroward:I

    .line 3100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1484
    check-cast v0, Landroid/widget/TextView;

    .line 1486
    iget-boolean v4, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasBeenRepliedTo:Z

    if-nez v4, :cond_4

    iget-boolean v4, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasBeenForwarded:Z

    if-eqz v4, :cond_13

    .line 1487
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1488
    iget-boolean v4, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    if-nez v4, :cond_11

    .line 1489
    const/4 v4, 0x0

    .line 1490
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Laxo$d;->alm_cmail_font_size_s8:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    .line 1489
    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1491
    sget v4, Laxo$i;->icon_round_fill:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1492
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Laxo$c;->ui_common_alert_bg_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1508
    :goto_6
    iget-boolean v0, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1510
    sget v0, Laxo$f;->flagOrComplete:I

    .line 4100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1510
    check-cast v0, Landroid/widget/TextView;

    .line 1511
    invoke-static {p2}, Lrx;->b(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1512
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1513
    sget v1, Laxo$i;->icon_task_fill:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1514
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Laxo$c;->ui_common_alert_bg_color:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4716
    :goto_8
    sget v0, Laxo$f;->tag:I

    .line 5100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 4716
    check-cast v0, Lcom/alibaba/alimei/mail/widget/TagView;

    .line 4717
    if-nez p2, :cond_17

    .line 4737
    :cond_5
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/widget/TagView;->setVisibility(I)V

    .line 1526
    :goto_9
    sget v0, Laxo$f;->imgMailImportant:I

    .line 6100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1526
    check-cast v0, Landroid/widget/TextView;

    .line 1527
    invoke-static {p2}, Lrx;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1528
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1533
    :goto_a
    sget v0, Laxo$f;->cmail_list_calendar_icon:I

    .line 7100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1533
    check-cast v0, Landroid/widget/TextView;

    .line 1534
    invoke-static {p2}, Lrx;->f(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1535
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1540
    :goto_b
    sget v0, Laxo$f;->imgMailAlarm:I

    .line 8100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1540
    check-cast v0, Landroid/widget/ImageView;

    .line 1541
    invoke-static {p2}, Lrx;->g(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1542
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1543
    sget v1, Laxo$e;->alm_cmail_mail_icon_alarm:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1549
    :goto_c
    invoke-static {v6}, Lacu;->b(Lacu;)I

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    move v1, v0

    .line 1550
    :goto_d
    const-string/jumbo v5, ""

    .line 1551
    const-string/jumbo v4, ""

    .line 1552
    invoke-virtual {p2}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isSendFolder()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1553
    invoke-virtual {p2}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getTo()Ljava/util/List;

    move-result-object v0

    .line 1554
    if-eqz v0, :cond_1e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1e

    .line 1555
    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 1556
    if-eqz v0, :cond_32

    .line 1557
    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 1558
    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    :goto_e
    move-object v5, v4

    move-object v4, v0

    .line 1572
    :cond_6
    :goto_f
    sget v0, Laxo$f;->avatar:I

    .line 9100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1572
    check-cast v0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    .line 1574
    invoke-virtual {p2}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isSendFolder()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1575
    :cond_7
    iget-object v4, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    if-nez v4, :cond_1f

    sget v4, Laxo$i;->alm_cmail_mail_unknown_sender:I

    invoke-virtual {v7, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1576
    :goto_10
    invoke-virtual {p2}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getFromName()Ljava/lang/String;

    move-result-object v5

    move-object v10, v5

    move-object v5, v4

    move-object v4, v10

    .line 1578
    :cond_8
    invoke-virtual {v0, v5, v4, v1}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1585
    sget v0, Laxo$f;->txtMailTime:I

    .line 10100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1585
    check-cast v0, Landroid/widget/TextView;

    .line 1586
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1588
    iget-wide v4, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1589
    iget-wide v4, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    .line 10760
    invoke-direct {p0}, Lacu$h;->b()Lacu;

    move-result-object v8

    .line 10761
    if-nez v8, :cond_20

    .line 10762
    const-string/jumbo v1, ""

    .line 1589
    :cond_9
    :goto_11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1596
    :goto_12
    const/4 v0, 0x0

    .line 1597
    iget-wide v4, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->draftLocalId:J

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-lez v1, :cond_31

    .line 1598
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "["

    aput-object v4, v0, v1

    const/4 v1, 0x1

    sget v4, Laxo$i;->compose_draft_title:I

    invoke-virtual {v7, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v4, "]"

    aput-object v4, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 1602
    :goto_13
    if-eqz v3, :cond_a

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_25

    .line 1603
    :cond_a
    sget v0, Laxo$i;->alm_cmail_mail_no_subject:I

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1604
    if-eqz v4, :cond_24

    .line 1605
    new-instance v0, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v1, v0

    .line 1617
    :goto_14
    if-eqz v4, :cond_b

    .line 1618
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Laxo$c;->ui_common_warming_text_color:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1619
    const/4 v3, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x11

    invoke-virtual {v1, v0, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1622
    :cond_b
    sget v0, Laxo$f;->txtMailTitle:I

    .line 12100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1622
    check-cast v0, Landroid/widget/TextView;

    .line 1623
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1625
    sget v0, Laxo$f;->txtMailContent:I

    .line 13100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1625
    check-cast v0, Landroid/widget/TextView;

    .line 1626
    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_28

    .line 1627
    :cond_c
    invoke-static {}, Lacg;->f()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1628
    sget v1, Laxo$i;->alm_cmail_mail_no_content:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1641
    :goto_15
    sget v0, Laxo$f;->txtMailCount:I

    .line 14100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1641
    check-cast v0, Landroid/widget/TextView;

    .line 1642
    iget-boolean v1, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isConversation:Z

    if-eqz v1, :cond_2b

    iget v1, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->itemCount:I

    if-lez v1, :cond_2b

    .line 1643
    iget v1, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->itemCount:I

    const/16 v2, 0x63

    if-le v1, v2, :cond_2a

    const-string/jumbo v1, "99+"

    .line 1644
    :goto_16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1645
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1650
    :goto_17
    sget v0, Laxo$f;->urgent_icon:I

    .line 15100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v1

    .line 1651
    iget v0, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->priority:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2c

    const/4 v0, 0x0

    :goto_18
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1662
    sget v0, Laxo$f;->ll_mail_content:I

    .line 16100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v3

    .line 1663
    invoke-static {p2}, Lrx;->f(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 16227
    iget-object v0, p1, Lrr;->b:Landroid/view/View;

    .line 1664
    sget v1, Laxo$f;->alm_event_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1665
    instance-of v1, v0, Landroid/view/ViewStub;

    if-eqz v1, :cond_30

    .line 1666
    check-cast v0, Landroid/view/ViewStub;

    .line 1667
    sget v1, Laxo$f;->alm_event_panel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setInflatedId(I)V

    .line 1668
    sget v1, Laxo$g;->alm_cmail_list_mail_item_event:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 1669
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    .line 1672
    :goto_19
    sget v0, Laxo$f;->alm_event_meeting_addr:I

    invoke-static {v2, v0}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1673
    sget v1, Laxo$f;->alm_event_meeting_time:I

    invoke-static {v2, v1}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1675
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1676
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1677
    iget-object v2, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->location:Ljava/lang/String;

    .line 1678
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1679
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxo$i;->alm_cmail_meeting_location:I

    .line 1680
    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Laxo$i;->no_location_label:I

    .line 1681
    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1679
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1686
    :goto_1a
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v2, Laxo$i;->alm_cmail_meeting_time:I

    .line 1687
    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1688
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    iget-object v5, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    iget-wide v6, v5, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->startTime:J

    iget-object v5, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    iget-wide v8, v5, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->endTime:J

    invoke-static {v4, v6, v7, v8, v9}, Lsc;->a(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1686
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1705
    :cond_d
    :goto_1b
    sget v0, Laxo$f;->txtUnreadCount:I

    .line 18100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1706
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1448
    :cond_e
    iget-object v0, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    goto/16 :goto_1

    :cond_f
    move-object v1, v2

    move-object v2, v0

    .line 1474
    goto/16 :goto_4

    .line 1481
    :cond_10
    sget v1, Laxo$i;->alm_cmail_mail_unknown_sender:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5

    .line 1494
    :cond_11
    const/4 v4, 0x0

    .line 1495
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Laxo$d;->alm_cmail_font_size_s16:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    .line 1494
    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1496
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Laxo$c;->cmail_color_e3e3e4:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1497
    iget-boolean v4, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasBeenRepliedTo:Z

    if-eqz v4, :cond_12

    .line 1498
    sget v4, Laxo$i;->icon_reply_fill:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_6

    .line 1500
    :cond_12
    sget v4, Laxo$i;->icon_forward_fill:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_6

    .line 1505
    :cond_13
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 1508
    :cond_14
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 1515
    :cond_15
    invoke-static {p2}, Lrx;->c(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1516
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1517
    sget v1, Laxo$i;->icon_right_fill:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1518
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Laxo$c;->ui_common_green_icon_bg_color:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_8

    .line 1520
    :cond_16
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    .line 4722
    :cond_17
    invoke-static {}, Lacg;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4727
    invoke-static {p2}, Lrx;->e(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4728
    invoke-static {p2}, Lrx;->d(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Ljava/util/List;

    move-result-object v1

    .line 4729
    if-eqz v1, :cond_18

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 4730
    :cond_18
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/widget/TagView;->setVisibility(I)V

    goto/16 :goto_9

    .line 4734
    :cond_19
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/mail/widget/TagView;->setVisibility(I)V

    .line 4735
    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/widget/TagView;->setColors(Ljava/util/List;)V

    goto/16 :goto_9

    .line 1530
    :cond_1a
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a

    .line 1537
    :cond_1b
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_b

    .line 1545
    :cond_1c
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1546
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_c

    .line 1549
    :cond_1d
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_d

    .line 1561
    :cond_1e
    invoke-virtual {p2}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getCc()Ljava/util/List;

    move-result-object v0

    .line 1562
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 1563
    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 1564
    if-eqz v0, :cond_6

    .line 1565
    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 1566
    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    goto/16 :goto_f

    .line 1575
    :cond_1f
    iget-object v4, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v4, v4, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    goto/16 :goto_10

    .line 10765
    :cond_20
    invoke-static {v8}, Lacu;->f(Lacu;)Lfp;

    move-result-object v1

    .line 11096
    const/4 v9, 0x0

    invoke-virtual {v1, v4, v5, v9}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 10765
    check-cast v1, Ljava/lang/String;

    .line 10766
    if-nez v1, :cond_9

    .line 10767
    invoke-static {v4, v5}, Lcog;->n(J)Ljava/lang/String;

    move-result-object v1

    .line 10768
    invoke-static {v8}, Lacu;->f(Lacu;)Lfp;

    move-result-object v8

    invoke-virtual {v8, v4, v5, v1}, Lfp;->b(JLjava/lang/Object;)V

    goto/16 :goto_11

    .line 1591
    :cond_21
    iget-wide v4, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    .line 11747
    invoke-direct {p0}, Lacu$h;->b()Lacu;

    move-result-object v8

    .line 11748
    if-nez v8, :cond_23

    .line 11749
    const-string/jumbo v1, ""

    .line 1592
    :cond_22
    :goto_1c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    .line 11751
    :cond_23
    invoke-static {v8}, Lacu;->d(Lacu;)Lfp;

    move-result-object v1

    .line 12096
    const/4 v9, 0x0

    invoke-virtual {v1, v4, v5, v9}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 11751
    check-cast v1, Ljava/lang/String;

    .line 11752
    if-nez v1, :cond_22

    .line 11753
    invoke-static {v8}, Lacu;->e(Lacu;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v4, v5, v1}, Lcog;->b(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 11754
    invoke-static {v8}, Lacu;->d(Lacu;)Lfp;

    move-result-object v8

    invoke-virtual {v8, v4, v5, v1}, Lfp;->b(JLjava/lang/Object;)V

    goto :goto_1c

    .line 1607
    :cond_24
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v1, v0

    .line 1609
    goto/16 :goto_14

    .line 1610
    :cond_25
    if-eqz v4, :cond_26

    .line 1611
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v1, v0

    goto/16 :goto_14

    .line 1613
    :cond_26
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v1, v0

    goto/16 :goto_14

    .line 1630
    :cond_27
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1631
    invoke-static {v6}, Lacu;->c(Lacu;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->accountId:J

    iget-wide v4, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->uid:J

    iget-wide v6, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    invoke-static/range {v1 .. v7}, Lafw;->a(Ljava/lang/String;JJJ)V

    goto/16 :goto_15

    .line 1634
    :cond_28
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "DINGTALK_EMPTY_SUMMARY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1635
    sget v1, Laxo$i;->alm_cmail_mail_no_content:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_15

    .line 1637
    :cond_29
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_15

    .line 1643
    :cond_2a
    iget v1, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->itemCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_16

    .line 1647
    :cond_2b
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_17

    .line 1651
    :cond_2c
    const/16 v0, 0x8

    goto/16 :goto_18

    .line 1683
    :cond_2d
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Laxo$i;->alm_cmail_meeting_location:I

    .line 1684
    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 1683
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a

    .line 1693
    :cond_2e
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2f

    .line 1694
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1696
    :cond_2f
    sget v0, Laxo$f;->alm_event_panel:I

    .line 17100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1697
    if-eqz v0, :cond_d

    .line 1698
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1b

    :cond_30
    move-object v2, v0

    goto/16 :goto_19

    :cond_31
    move-object v4, v0

    goto/16 :goto_13

    :cond_32
    move-object v0, v4

    move-object v4, v5

    goto/16 :goto_e

    :cond_33
    move-object v0, v1

    goto/16 :goto_3

    :cond_34
    move-object v2, v0

    goto/16 :goto_2
.end method
