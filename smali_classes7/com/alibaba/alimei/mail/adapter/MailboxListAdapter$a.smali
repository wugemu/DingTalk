.class abstract Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$a;
.super Ljava/lang/Object;
.source "MailboxListAdapter.java"

# interfaces
.implements Lrs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrs",
        "<",
        "Lcom/alibaba/alimei/sdk/model/FolderModel;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;)V
    .locals 1
    .param p1, "listAdapter"    # Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    .prologue
    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$a;->a:Ljava/lang/ref/WeakReference;

    .line 525
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/FolderModel;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;ZJJZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folderModel"    # Lcom/alibaba/alimei/sdk/model/FolderModel;
    .param p2, "newMailCountView"    # Landroid/widget/TextView;
    .param p3, "newMailDotViewContainer"    # Landroid/view/View;
    .param p4, "dotView"    # Landroid/view/View;
    .param p5, "unreadCountView"    # Landroid/widget/TextView;
    .param p6, "showNewMail"    # Z
    .param p7, "unreadCount"    # J
    .param p9, "newMailCount"    # J
    .param p11, "isNewMailOn"    # Z

    .prologue
    .line 608
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-nez p0, :cond_1

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laxo$c;->ui_common_content_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 614
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$d;->alm_cmail_font_size_s10:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 615
    sget v0, Laxo$e;->cmail_new_mail_bg:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 616
    if-eqz p6, :cond_8

    const-wide/16 v0, 0x0

    cmp-long v0, p9, v0

    if-lez v0, :cond_8

    .line 617
    if-eqz p11, :cond_5

    .line 618
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-lez v0, :cond_3

    .line 619
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 620
    const/16 v0, 0x8

    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 621
    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 622
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isOutgoingFolder()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 623
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "["

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p7, p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "]"

    aput-object v2, v0, v1

    invoke-static {v0}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 631
    const-wide/16 v0, 0x63

    cmp-long v0, p9, v0

    if-lez v0, :cond_4

    .line 632
    const-string/jumbo v0, "99+"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    :goto_2
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isOutgoingFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    const-wide/16 v0, 0x0

    cmp-long v0, p9, v0

    if-lez v0, :cond_0

    .line 674
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 675
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laxo$c;->ui_common_alert_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 676
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$d;->alm_cmail_font_size_s16:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 677
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 678
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 679
    sget v0, Laxo$i;->icon_warn_fill:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 625
    :cond_2
    invoke-static {p7, p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 628
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 634
    :cond_4
    invoke-static {p9, p10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 637
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 638
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 639
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 640
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-lez v0, :cond_7

    .line 641
    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 642
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isOutgoingFolder()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 643
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "["

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p7, p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "]"

    aput-object v2, v0, v1

    invoke-static {v0}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 645
    :cond_6
    invoke-static {p7, p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 648
    :cond_7
    const/16 v0, 0x8

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 652
    :cond_8
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 653
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-lez v0, :cond_b

    .line 654
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 655
    const/16 v0, 0x8

    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 656
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-lez v0, :cond_a

    .line 657
    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 658
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isOutgoingFolder()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 659
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "["

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p7, p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "]"

    aput-object v2, v0, v1

    invoke-static {v0}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 661
    :cond_9
    invoke-static {p7, p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 664
    :cond_a
    const/16 v0, 0x8

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 667
    :cond_b
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method


# virtual methods
.method protected final a(Lrr;Lcom/alibaba/alimei/sdk/model/FolderModel;Lcom/alibaba/alimei/sdk/model/FolderModel;JJ)V
    .locals 18
    .param p1, "helper"    # Lrr;
    .param p2, "folderModel"    # Lcom/alibaba/alimei/sdk/model/FolderModel;
    .param p3, "curFolder"    # Lcom/alibaba/alimei/sdk/model/FolderModel;
    .param p4, "unreadCount"    # J
    .param p6, "newMailCount"    # J

    .prologue
    .line 537
    sget v3, Laxo$f;->new_mail_count:I

    .line 1100
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lrr;->a(I)Landroid/view/View;

    move-result-object v5

    .line 537
    check-cast v5, Landroid/widget/TextView;

    .line 538
    .local v5, "newMailCountView":Landroid/widget/TextView;
    sget v3, Laxo$f;->unread_count_layout:I

    .line 2100
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lrr;->a(I)Landroid/view/View;

    move-result-object v6

    .line 539
    .local v6, "newMailDotViewContainer":Landroid/view/View;
    sget v3, Laxo$f;->unread_mail_dot:I

    .line 3100
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lrr;->a(I)Landroid/view/View;

    move-result-object v7

    .line 540
    .local v7, "dotView":Landroid/view/View;
    sget v3, Laxo$f;->no_notice:I

    .line 4100
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lrr;->a(I)Landroid/view/View;

    move-result-object v16

    .line 546
    .local v16, "noNoticeView":Landroid/view/View;
    const/16 v3, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 549
    sget v3, Laxo$f;->unread_count:I

    .line 5100
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lrr;->a(I)Landroid/view/View;

    move-result-object v8

    .line 549
    check-cast v8, Landroid/widget/TextView;

    .line 550
    .local v8, "unreadCountView":Landroid/widget/TextView;
    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    if-nez v8, :cond_1

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    if-nez p2, :cond_2

    .line 556
    const/16 v3, 0x8

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 557
    const/16 v3, 0x8

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5528
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    .line 562
    .local v15, "mailboxListAdapter":Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;
    if-eqz v15, :cond_0

    .line 6096
    move-object/from16 v0, p1

    iget-object v3, v0, Lrr;->a:Landroid/content/Context;

    .line 565
    invoke-static {v3}, Lacl;->a(Landroid/content/Context;)Lacl;

    move-result-object v3

    .line 6183
    iget-boolean v14, v3, Lacl;->a:Z

    .line 7096
    .local v14, "isNewMailOn":Z
    move-object/from16 v0, p1

    iget-object v3, v0, Lrr;->a:Landroid/content/Context;

    .line 566
    invoke-static {v3}, Lacl;->a(Landroid/content/Context;)Lacl;

    move-result-object v3

    invoke-static {v15}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->a(Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lacl;->b(Ljava/lang/String;)Z

    move-result v2

    .line 567
    .local v2, "isAccNewMailOn":Z
    if-eqz v2, :cond_3

    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPush:Z

    if-eqz v3, :cond_3

    const/4 v9, 0x1

    .line 568
    .local v9, "showNewMail":Z
    :goto_1
    if-nez p3, :cond_4

    .line 8096
    move-object/from16 v0, p1

    iget-object v3, v0, Lrr;->a:Landroid/content/Context;

    move-object/from16 v4, p2

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    .line 570
    invoke-static/range {v3 .. v14}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$a;->a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/FolderModel;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;ZJJZ)V

    goto :goto_0

    .line 567
    .end local v9    # "showNewMail":Z
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 574
    .restart local v9    # "showNewMail":Z
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v10

    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v12

    cmp-long v3, v10, v12

    if-nez v3, :cond_7

    .line 576
    const/16 v3, 0x8

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 577
    const-wide/16 v10, 0x0

    cmp-long v3, p4, v10

    if-lez v3, :cond_6

    .line 578
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 579
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 580
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isOutgoingFolder()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 581
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v10, "["

    aput-object v10, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v10, "]"

    aput-object v10, v3, v4

    invoke-static {v3}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    :goto_2
    const/16 v3, 0x8

    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 583
    :cond_5
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 587
    :cond_6
    const/16 v3, 0x8

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 9096
    :cond_7
    move-object/from16 v0, p1

    iget-object v3, v0, Lrr;->a:Landroid/content/Context;

    move-object/from16 v4, p2

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    .line 592
    invoke-static/range {v3 .. v14}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$a;->a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/FolderModel;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;ZJJZ)V

    goto/16 :goto_0
.end method
