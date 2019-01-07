.class public Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "ManagerOrgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lflk;


# instance fields
.field private a:Lfll;

.field private b:Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

.field private c:Landroid/content/BroadcastReceiver;

.field private d:J

.field private e:J

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

.field private i:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

.field private j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

.field private k:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

.field private l:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

.field private m:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

.field private n:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

.field private o:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

.field private p:Landroid/widget/TextView;

.field private q:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Z

.field private u:Lcom/alibaba/android/user/widget/DashboardView;

.field private v:Ljava/lang/String;

.field private w:Landroid/view/View;

.field private x:Landroid/view/View;

.field private y:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 124
    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    .line 125
    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->c:Landroid/content/BroadcastReceiver;

    .line 127
    iput-wide v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    .line 128
    iput-wide v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->e:J

    .line 129
    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->f:Ljava/lang/String;

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->t:Z

    .line 771
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->y:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    return-wide v0
.end method

.method private a(D)V
    .locals 13
    .param p1, "score"    # D

    .prologue
    .line 681
    sget v7, Lezg$h;->ll_score_container:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 682
    .local v5, "scoreContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 683
    const-wide/16 v8, 0x0

    cmpg-double v7, p1, v8

    if-gtz v7, :cond_1

    .line 684
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 685
    .local v6, "textView":Landroid/widget/TextView;
    const-string/jumbo v7, "--"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lezg$e;->text_color_blue:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 687
    const/4 v7, 0x1

    const/high16 v8, 0x42340000    # 45.0f

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 688
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 707
    .end local v6    # "textView":Landroid/widget/TextView;
    :cond_0
    return-void

    .line 692
    :cond_1
    double-to-int v7, p1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 693
    .local v4, "s":Ljava/lang/String;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {p0, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v7

    const/4 v8, -0x2

    invoke-direct {v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 694
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    array-length v9, v8

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_0

    aget-char v0, v8, v7

    .line 6710
    .local v0, "c":C
    packed-switch v0, :pswitch_data_0

    .line 6732
    const/4 v3, 0x0

    .line 697
    .local v3, "resId":I
    :goto_1
    if-eqz v3, :cond_2

    .line 700
    new-instance v1, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;-><init>(Landroid/content/Context;)V

    .line 701
    .local v1, "iconFontTextView":Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    const/16 v10, 0x11

    invoke-virtual {v1, v10}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setGravity(I)V

    .line 702
    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 703
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lezg$e;->text_color_blue:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v1, v10}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 704
    const/4 v10, 0x1

    const/high16 v11, 0x41f00000    # 30.0f

    invoke-virtual {v1, v10, v11}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextSize(IF)V

    .line 705
    invoke-virtual {v5, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 694
    .end local v1    # "iconFontTextView":Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 6712
    .end local v3    # "resId":I
    :pswitch_0
    sget v3, Lezg$l;->icon_num_zero:I

    goto :goto_1

    .line 6714
    :pswitch_1
    sget v3, Lezg$l;->icon_num_one:I

    goto :goto_1

    .line 6716
    :pswitch_2
    sget v3, Lezg$l;->icon_num_two:I

    goto :goto_1

    .line 6718
    :pswitch_3
    sget v3, Lezg$l;->icon_num_three:I

    goto :goto_1

    .line 6720
    :pswitch_4
    sget v3, Lezg$l;->icon_num_four:I

    goto :goto_1

    .line 6722
    :pswitch_5
    sget v3, Lezg$l;->icon_num_five:I

    goto :goto_1

    .line 6724
    :pswitch_6
    sget v3, Lezg$l;->icon_num_six:I

    goto :goto_1

    .line 6726
    :pswitch_7
    sget v3, Lezg$l;->icon_num_seven:I

    goto :goto_1

    .line 6728
    :pswitch_8
    sget v3, Lezg$l;->icon_num_eight:I

    goto :goto_1

    .line 6730
    :pswitch_9
    sget v3, Lezg$l;->icon_num_nine:I

    goto :goto_1

    .line 6710
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 1
    .param p1, "entry"    # Landroid/view/ViewGroup;
    .param p2, "enabled"    # Z

    .prologue
    .line 890
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->b(Landroid/view/ViewGroup;Z)V

    .line 891
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 892
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 893
    return-void
.end method

.method private a(Landroid/widget/TextView;I)V
    .locals 13
    .param p1, "orgInfo"    # Landroid/widget/TextView;
    .param p2, "endOfLastLine"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 574
    const/4 v0, 0x0

    .line 575
    .local v0, "authLevel":I
    iget-object v9, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a:Lfll;

    if-eqz v9, :cond_0

    .line 576
    iget-object v9, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a:Lfll;

    .line 6090
    iget v0, v9, Lfll;->a:I

    .line 578
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lezg$f;->text_size_18:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 579
    .local v4, "orgTextSize":I
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lezg$f;->text_size_16:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 580
    .local v2, "orgCertifySize":I
    sget v9, Lezg$e;->ui_common_level1_text_color:I

    invoke-static {p0, v9}, Ldp;->c(Landroid/content/Context;I)I

    move-result v8

    .line 581
    .local v8, "textColor":I
    iget-object v10, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->f:Ljava/lang/String;

    const/4 v11, 0x0

    if-nez p2, :cond_2

    iget-object v9, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->f:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    :goto_0
    invoke-virtual {v10, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 582
    .local v3, "orgNameDisplay":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 583
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    const-string/jumbo v10, "..."

    invoke-virtual {v9, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 585
    :cond_1
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 586
    .local v6, "span1":Landroid/text/SpannableString;
    new-instance v9, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v9, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/4 v10, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x21

    invoke-virtual {v6, v9, v10, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 587
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v9, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v10, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x21

    invoke-virtual {v6, v9, v10, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 588
    new-instance v9, Landroid/text/style/StyleSpan;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v10, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x21

    invoke-virtual {v6, v9, v10, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 591
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    const/4 v9, 0x1

    if-ne v0, v9, :cond_3

    .line 593
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lezg$l;->icon_certification_f:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 594
    .local v7, "string":Ljava/lang/CharSequence;
    sget v9, Lezg$e;->ui_common_warming_bg_color:I

    invoke-static {p0, v9}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    .line 605
    .local v1, "color":I
    :goto_1
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 606
    .local v5, "pan2":Landroid/text/SpannableString;
    new-instance v9, Lcom/alibaba/android/user/widget/IconFontSpan;

    const-string/jumbo v10, ""

    invoke-direct {v9, v10}, Lcom/alibaba/android/user/widget/IconFontSpan;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v11

    const/16 v12, 0x21

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 607
    new-instance v9, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v9, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/4 v10, 0x0

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v11

    const/16 v12, 0x21

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 608
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v9, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v10, 0x0

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v11

    const/16 v12, 0x21

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 609
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, " "

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v5, v9, v10

    invoke-static {v9}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    return-void

    .line 581
    .end local v1    # "color":I
    .end local v3    # "orgNameDisplay":Ljava/lang/String;
    .end local v5    # "pan2":Landroid/text/SpannableString;
    .end local v6    # "span1":Landroid/text/SpannableString;
    .end local v7    # "string":Ljava/lang/CharSequence;
    :cond_2
    add-int/lit8 v9, p2, -0x2

    goto/16 :goto_0

    .line 595
    .restart local v3    # "orgNameDisplay":Ljava/lang/String;
    .restart local v6    # "span1":Landroid/text/SpannableString;
    :cond_3
    const/4 v9, 0x2

    if-ne v0, v9, :cond_4

    .line 596
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lezg$l;->icon_certification_f:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 597
    .restart local v7    # "string":Ljava/lang/CharSequence;
    sget v9, Lezg$e;->ui_common_theme_icon_bg_color:I

    invoke-static {p0, v9}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    .restart local v1    # "color":I
    goto :goto_1

    .line 598
    .end local v1    # "color":I
    .end local v7    # "string":Ljava/lang/CharSequence;
    :cond_4
    const/4 v9, 0x3

    if-ne v0, v9, :cond_5

    .line 599
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lezg$l;->icon_nocertification_fill:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 600
    .restart local v7    # "string":Ljava/lang/CharSequence;
    sget v9, Lezg$e;->common_theme_green:I

    invoke-static {p0, v9}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    .restart local v1    # "color":I
    goto :goto_1

    .line 602
    .end local v1    # "color":I
    .end local v7    # "string":Ljava/lang/CharSequence;
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lezg$l;->icon_nocertification_fill:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 603
    .restart local v7    # "string":Ljava/lang/CharSequence;
    sget v9, Lezg$e;->ui_common_level3_text_color:I

    invoke-static {p0, v9}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    .restart local v1    # "color":I
    goto/16 :goto_1
.end method

.method private a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;II)V
    .locals 3
    .param p1, "cell"    # Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;
    .param p2, "textResId"    # I
    .param p3, "colorResId"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1356
    if-nez p1, :cond_0

    .line 1362
    :goto_0
    return-void

    .line 1359
    :cond_0
    new-instance v0, Lcjz;

    invoke-virtual {p0, p2}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcjz;-><init>(Ljava/lang/String;I)V

    .line 1360
    .local v0, "drawable":Lcjz;
    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {p0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    .line 18045
    iput v1, v0, Lcjz;->b:F

    .line 1361
    invoke-virtual {p1, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;Landroid/content/Intent;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 112
    .line 18512
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    sget v1, Lezg$l;->dt_contact_org_manage_orgmail_finish:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setContent(Ljava/lang/String;)V

    .line 18513
    if-eqz p1, :cond_0

    .line 18514
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 18516
    if-eqz v0, :cond_0

    .line 18518
    const-string/jumbo v1, "imap_server"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18519
    const-string/jumbo v2, "imap_port"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 18520
    const-string/jumbo v3, "imap_ssl"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 18522
    const-string/jumbo v4, "smtp_server"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 18523
    const-string/jumbo v5, "smtp_port"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 18524
    const-string/jumbo v6, "smtp_ssl"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 18526
    iget-object v6, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    if-eqz v6, :cond_0

    .line 18528
    iget-object v6, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->mailStatus:Ljava/lang/Integer;

    .line 18530
    new-instance v6, Lccw;

    invoke-direct {v6}, Lccw;-><init>()V

    .line 18531
    sget-object v7, Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;->IMAP:Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;

    iput-object v7, v6, Lccw;->a:Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;

    .line 18532
    iput-object v1, v6, Lccw;->b:Ljava/lang/String;

    .line 18533
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v6, Lccw;->c:Ljava/lang/Integer;

    .line 18534
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v6, Lccw;->d:Ljava/lang/Boolean;

    .line 18536
    new-instance v1, Lccw;

    invoke-direct {v1}, Lccw;-><init>()V

    .line 18537
    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;->SMTP:Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;

    iput-object v2, v1, Lccw;->a:Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;

    .line 18538
    iput-object v4, v1, Lccw;->b:Ljava/lang/String;

    .line 18539
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lccw;->c:Ljava/lang/Integer;

    .line 18540
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lccw;->d:Ljava/lang/Boolean;

    .line 18543
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->mailSettingsModel:Lccx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->mailSettingsModel:Lccx;

    iget-object v0, v0, Lccx;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->mailSettingsModel:Lccx;

    iget-object v0, v0, Lccx;->a:Ljava/util/List;

    .line 18544
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 18545
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->mailSettingsModel:Lccx;

    iget-object v0, v0, Lccx;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18546
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->mailSettingsModel:Lccx;

    iget-object v0, v0, Lccx;->a:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18547
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->mailSettingsModel:Lccx;

    iget-object v0, v0, Lccx;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;Landroid/widget/TextView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # I

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)Lfll;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a:Lfll;

    return-object v0
.end method

.method private b(Landroid/view/ViewGroup;Z)V
    .locals 3
    .param p1, "vg"    # Landroid/view/ViewGroup;
    .param p2, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 896
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 897
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 898
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 899
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 900
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0, p2}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->b(Landroid/view/ViewGroup;Z)V

    .line 896
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 903
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->g()V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 5
    .param p1, "orgNumber"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1366
    sget v2, Lezg$h;->open_org_tip:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1367
    .local v1, "tip":Landroid/view/View;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1368
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->s:Landroid/widget/TextView;

    sget v3, Lezg$l;->dt_setup_org_code:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1369
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->w:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1370
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->s:Landroid/widget/TextView;

    sget v3, Lezg$e;->ui_common_theme_bg_color:I

    invoke-static {p0, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1371
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->s:Landroid/widget/TextView;

    new-instance v3, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$9;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$9;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1378
    const-string/jumbo v2, "tip_open_org_number_tip_shown"

    invoke-static {v2}, Lcpl;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcpl;->d(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1379
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1380
    new-instance v2, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$10;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$10;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1421
    :cond_0
    :goto_0
    return-void

    .line 1390
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->s:Landroid/widget/TextView;

    sget v3, Lezg$l;->dt_contact_org_number:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1391
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->s:Landroid/widget/TextView;

    sget v3, Lezg$e;->ui_common_content_fg_color_alpha_56:I

    invoke-static {p0, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1392
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1393
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->r:Landroid/widget/TextView;

    sget v3, Lezg$e;->ui_common_theme_bg_color:I

    invoke-static {p0, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1394
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->w:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1395
    new-instance v0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$11;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$11;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)V

    .line 1401
    .local v0, "jumpInstructionListener":Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1402
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1403
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->x:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1404
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->r:Landroid/widget/TextView;

    new-instance v3, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$13;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$13;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->e:J

    return-wide v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    .prologue
    .line 112
    iget v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->g:I

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    return-object v0
.end method

.method private g()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1342
    new-instance v0, Lcry;

    invoke-direct {v0}, Lcry;-><init>()V

    .line 1343
    .local v0, "viewObject":Lcry;
    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_REDDOT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v1

    .line 15047
    iput v1, v0, Lcry;->a:I

    .line 15055
    iput-boolean v4, v0, Lcry;->b:Z

    .line 1345
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a:Lfll;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a:Lfll;

    .line 15090
    iget v1, v1, Lfll;->a:I

    .line 1345
    if-nez v1, :cond_1

    .line 1346
    invoke-static {}, Lfls;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcpk;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16055
    iput-boolean v5, v0, Lcry;->b:Z

    .line 1352
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setIndicator(Lcry;)V

    .line 1353
    return-void

    .line 1349
    :cond_1
    iget-wide v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    invoke-static {v2, v3}, Lfls;->d(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17055
    iput-boolean v5, v0, Lcry;->b:Z

    goto :goto_0
.end method

.method private h()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 1424
    iget-wide v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    invoke-static {v4, v5}, Lfll;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 1427
    .local v0, "corpName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1433
    .local v2, "encodeName":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v3

    const-string/jumbo v4, "https://h5.dingtalk.com/h5-join-team/guideJoin.html?corpName=%s&corpCode=%s#/idUse"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->v:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, p0, v4, v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    return-void

    .line 1428
    .end local v2    # "encodeName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1429
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v3, "ManagerOrgActivity"

    const-string/jumbo v4, "url encode error"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1430
    move-object v2, v0

    .line 1431
    .restart local v2    # "encodeName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->h()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 836
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->o:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    if-lez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setVisibility(I)V

    .line 839
    :cond_0
    return-void

    .line 837
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 6
    .param p1, "authStatus"    # I
    .param p2, "authUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x0

    .line 844
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    invoke-virtual {v1, v2, v3}, Lccr;->c(J)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 845
    sget v1, Lezg$h;->cell_manage_org_nick:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    .line 846
    .local v0, "mManageOrgNick":Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;
    sget v1, Lezg$l;->icon_writelog_fill:I

    sget v2, Lezg$e;->ui_common_theme_icon_bg_color:I

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;II)V

    .line 847
    invoke-static {v0, v4}, Lfxp;->a(Landroid/view/View;I)V

    .line 849
    packed-switch p1, :pswitch_data_0

    .line 869
    :goto_0
    :pswitch_0
    new-instance v1, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$14;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$14;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 879
    .end local v0    # "mManageOrgNick":Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;
    :goto_1
    return-void

    .line 856
    .restart local v0    # "mManageOrgNick":Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;
    :pswitch_1
    sget v1, Lezg$l;->dt_user_profile_certify_status_in_audit:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setContent(Ljava/lang/String;)V

    .line 857
    sget v1, Lezg$e;->security_bg_orange:I

    invoke-static {p0, v1}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->a(II)V

    goto :goto_0

    .line 861
    :pswitch_2
    sget v1, Lezg$l;->dt_user_profile_certify_status_fail:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setContent(Ljava/lang/String;)V

    .line 862
    sget v1, Lezg$e;->text_color_red:I

    invoke-static {p0, v1}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->a(II)V

    goto :goto_0

    .line 877
    .end local v0    # "mManageOrgNick":Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;
    :cond_0
    const-string/jumbo v1, "not main manage or url null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 849
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;)V
    .locals 8
    .param p1, "orgAdminPermissionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 810
    if-nez p1, :cond_0

    move v1, v0

    .line 812
    .local v1, "groupChatSetting":Z
    :goto_0
    if-nez p1, :cond_1

    move v5, v0

    .line 814
    .local v5, "safetyCenterSetting":Z
    :goto_1
    if-nez p1, :cond_2

    move v3, v0

    .line 816
    .local v3, "moreSetting":Z
    :goto_2
    if-nez p1, :cond_3

    .line 820
    .local v0, "externalSetting":Z
    :goto_3
    sget v6, Lezg$h;->cell_manage_group_conversation:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    .line 821
    .local v2, "groupSettingCell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;
    sget v6, Lezg$l;->icon_group_fill:I

    sget v7, Lezg$e;->ui_common_green_icon_bg_color:I

    invoke-direct {p0, v2, v6, v7}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;II)V

    .line 822
    invoke-direct {p0, v2, v1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Landroid/view/ViewGroup;Z)V

    .line 824
    iget-object v6, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->n:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    invoke-direct {p0, v6, v5}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Landroid/view/ViewGroup;Z)V

    .line 827
    sget v6, Lezg$h;->cell_manage_more:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    .line 828
    .local v4, "moreSettingCell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;
    sget v6, Lezg$l;->icon_setting_fill:I

    sget v7, Lezg$e;->ui_common_link_text_color:I

    invoke-direct {p0, v4, v6, v7}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;II)V

    .line 829
    invoke-direct {p0, v4, v3}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Landroid/view/ViewGroup;Z)V

    .line 831
    iget-object v6, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->m:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    invoke-direct {p0, v6, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Landroid/view/ViewGroup;Z)V

    .line 832
    return-void

    .line 810
    .end local v0    # "externalSetting":Z
    .end local v1    # "groupChatSetting":Z
    .end local v2    # "groupSettingCell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;
    .end local v3    # "moreSetting":Z
    .end local v4    # "moreSettingCell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;
    .end local v5    # "safetyCenterSetting":Z
    :cond_0
    iget-boolean v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;->mGroupChatSetting:Z

    goto :goto_0

    .line 812
    .restart local v1    # "groupChatSetting":Z
    :cond_1
    iget-boolean v5, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;->mSafetyCenterSetting:Z

    goto :goto_1

    .line 814
    .restart local v5    # "safetyCenterSetting":Z
    :cond_2
    iget-boolean v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;->mMoreSetting:Z

    goto :goto_2

    .line 816
    .restart local v3    # "moreSetting":Z
    :cond_3
    iget-boolean v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;->mExtContactSetting:Z

    goto :goto_3
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;)V
    .locals 11
    .param p1, "orgManageInfoModel"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x1

    .line 750
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    if-nez v5, :cond_1

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 752
    :cond_1
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    .line 754
    iget-object v5, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->mailStatus:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 756
    .local v1, "status":I
    sget v5, Lezg$l;->dt_mail_already_binded:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, "finish":Ljava/lang/String;
    sget v5, Lezg$l;->dt_mail_open_forfree:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 759
    .local v4, "to":Ljava/lang/String;
    if-ne v1, v10, :cond_3

    .line 760
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    invoke-virtual {v5, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setContent(Ljava/lang/String;)V

    .line 765
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->memberCount:J

    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    iget-wide v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->activeMemeberCount:J

    sub-long v2, v6, v8

    .line 766
    .local v2, "inactiveStaffCount":J
    iget-object v6, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->k:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-gtz v5, :cond_4

    const-string/jumbo v5, ""

    :goto_2
    invoke-virtual {v6, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setContent(Ljava/lang/String;)V

    goto :goto_0

    .line 761
    .end local v2    # "inactiveStaffCount":J
    :cond_3
    if-nez v1, :cond_2

    .line 762
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    invoke-virtual {v5, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setContent(Ljava/lang/String;)V

    goto :goto_1

    .line 766
    .restart local v2    # "inactiveStaffCount":J
    :cond_4
    sget v5, Lezg$l;->dt_org_manage_unactive_members:I

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 767
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v5, v7}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method public final a(Lcom/alibaba/android/user/model/OrgScoreDataObject;)V
    .locals 6
    .param p1, "score"    # Lcom/alibaba/android/user/model/OrgScoreDataObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 666
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/user/model/OrgScoreDataObject;->dingIndexObject:Lcom/alibaba/android/user/model/DingIndexObject;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/user/model/OrgScoreDataObject;->dingIndexObject:Lcom/alibaba/android/user/model/DingIndexObject;

    iget-wide v0, v0, Lcom/alibaba/android/user/model/DingIndexObject;->idxTotal:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 667
    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(D)V

    .line 672
    :goto_0
    return-void

    .line 670
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/user/model/OrgScoreDataObject;->dingIndexObject:Lcom/alibaba/android/user/model/DingIndexObject;

    iget-wide v0, v0, Lcom/alibaba/android/user/model/DingIndexObject;->idxTotal:D

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(D)V

    .line 671
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->u:Lcom/alibaba/android/user/widget/DashboardView;

    iget-object v1, p1, Lcom/alibaba/android/user/model/OrgScoreDataObject;->dingIndexObject:Lcom/alibaba/android/user/model/DingIndexObject;

    iget-wide v2, v1, Lcom/alibaba/android/user/model/DingIndexObject;->idxTotal:D

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    double-to-float v1, v2

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/widget/DashboardView;->setScorePercentage(F)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 800
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->k:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setContent(Ljava/lang/String;)V

    .line 801
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 660
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lezg$l;->manager_title_verify:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setTitle(Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setContent(Ljava/lang/String;)V

    .line 662
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 553
    sget v2, Lezg$h;->tv_org_info:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 554
    .local v0, "orgInfo":Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Landroid/widget/TextView;I)V

    .line 555
    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 556
    .local v1, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$12;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$12;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 571
    return-void
.end method

.method public final b(Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;)V
    .locals 6
    .param p1, "obj"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 776
    if-eqz p1, :cond_0

    iget-boolean v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->isLackOfOrgInfo:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->y:Z

    if-eqz v1, :cond_1

    .line 783
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v1

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->orgId:J

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 780
    .local v0, "corpId":Ljava/lang/String;
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    const-string/jumbo v2, "https://oa.dingtalk.com/lackorginfo.htm#/dd?corpId=%s"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 781
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 780
    invoke-virtual {v1, p0, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    iput-boolean v5, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->y:Z

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 805
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->m:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setContent(Ljava/lang/String;)V

    .line 806
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 738
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->dismissLoadingDialog()V

    .line 739
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 653
    sget v1, Lezg$l;->manager_tip_knowledge:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, "tip":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    return-void
.end method

.method public final c(Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;)V
    .locals 2
    .param p1, "orgManageInfoModel"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 788
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    if-nez v0, :cond_0

    .line 789
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->hrManagement:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 792
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->q:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setVisibility(I)V

    .line 796
    :goto_0
    return-void

    .line 794
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->q:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setVisibility(I)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .param p1, "orgNumber"    # Ljava/lang/String;

    .prologue
    .line 883
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->dismissLoadingDialog()V

    .line 884
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->v:Ljava/lang/String;

    .line 885
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d(Ljava/lang/String;)V

    .line 886
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->h()V

    .line 887
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->showLoadingDialog()V

    .line 745
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 907
    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 912
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v7, 0x1

    .line 913
    .local v7, "disabled":Z
    :goto_0
    if-eqz v7, :cond_3

    .line 914
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->cell_manage_external_contact:I

    if-ne v0, v1, :cond_2

    .line 915
    sget v0, Lezg$l;->dt_contact_manage_external_contact_no_perm_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1038
    :cond_0
    :goto_1
    return-void

    .line 912
    .end local v7    # "disabled":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 917
    .restart local v7    # "disabled":Z
    :cond_2
    sget v0, Lezg$l;->dt_manage_org_no_perm_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_1

    .line 922
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    .line 923
    .local v9, "id":I
    sget v0, Lezg$h;->cell_manage_org_add_employee:I

    if-ne v9, v0, :cond_6

    .line 7061
    const/4 v1, 0x0

    .line 7062
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 7063
    if-eqz v0, :cond_5

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 7064
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 7065
    if-eqz v0, :cond_4

    .line 7068
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-wide v12, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    cmp-long v3, v4, v12

    if-nez v3, :cond_24

    :goto_3
    move-object v1, v0

    .line 7071
    goto :goto_2

    .line 7073
    :cond_5
    if-eqz v1, :cond_0

    .line 7075
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v2, "https://qr.dingtalk.com/page/add_2_org.html"

    new-instance v3, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$16;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$16;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    invoke-interface {v0, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 7084
    const-string/jumbo v0, "invite_new_members_enter"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 926
    :cond_6
    sget v0, Lezg$h;->cell_manage_org_contact:I

    if-ne v9, v0, :cond_7

    .line 7111
    const-string/jumbo v0, "org_management_contact_set_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 7112
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/manager_org_contact.html"

    new-instance v2, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$17;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$17;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_1

    .line 930
    :cond_7
    sget v0, Lezg$h;->cell_manage_external_contact:I

    if-ne v9, v0, :cond_8

    .line 7130
    const-string/jumbo v0, "org_management_extercontact_set_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 7132
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/external/settings.html"

    new-instance v2, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$18;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$18;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_1

    .line 934
    :cond_8
    sget v0, Lezg$h;->tc_staff_usage_data:I

    if-ne v9, v0, :cond_9

    .line 8090
    const-string/jumbo v0, "org_management_data_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 8091
    const-string/jumbo v0, "org_management_data_set_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 8092
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/android/user/devset/DevSettingActivity;->B:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8093
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 937
    :cond_9
    sget v0, Lezg$h;->cell_hr_manage:I

    if-ne v9, v0, :cond_a

    .line 8097
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    if-eqz v0, :cond_0

    .line 8098
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->hrManagement:Ljava/lang/String;

    .line 8099
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8101
    :try_start_0
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 8102
    :catch_0
    move-exception v0

    .line 8103
    const-string/jumbo v2, "user"

    const-string/jumbo v3, "onClickHrManage"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v11, "ManageOrg navigateFromUrl error: "

    aput-object v11, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    const-string/jumbo v5, " "

    aput-object v5, v4, v1

    const/4 v1, 0x3

    .line 8104
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8103
    invoke-static {v2, v3, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 940
    :cond_a
    sget v0, Lezg$h;->cell_customize_org_apply_form:I

    if-ne v9, v0, :cond_b

    .line 9041
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/org_apply_form_preview.html"

    new-instance v2, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$15;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$15;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_1

    .line 943
    :cond_b
    sget v0, Lezg$h;->cell_manage_group_conversation:I

    if-ne v9, v0, :cond_c

    .line 9147
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "org_management_chat_set_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 9148
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/manager_group_conversation.html"

    new-instance v2, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$2;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_1

    .line 947
    :cond_c
    sget v0, Lezg$h;->cell_manage_mail:I

    if-ne v9, v0, :cond_d

    .line 9161
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "org_management_cofiguremail_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 9162
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "org_management_mail_set_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 9164
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->showLoadingDialog()V

    .line 9165
    new-instance v0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$3;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)V

    .line 9191
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 9192
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->b(JLcma;)V

    goto/16 :goto_1

    .line 951
    :cond_d
    sget v0, Lezg$h;->cell_oa_settings:I

    if-ne v9, v0, :cond_e

    .line 9278
    const-string/jumbo v0, "org_management_workspace_set_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 9279
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/manager_org_workspace.html"

    new-instance v2, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$7;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$7;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_1

    .line 955
    :cond_e
    sget v0, Lezg$h;->cell_org_homepage:I

    if-ne v9, v0, :cond_f

    .line 10196
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "org_management_homepage_set_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 10197
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 10198
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    const-string/jumbo v2, "https://h5.dingtalk.com/home/manage.html?corpId=%s#/home"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 959
    :cond_f
    sget v0, Lezg$h;->cell_master_verify:I

    if-ne v9, v0, :cond_10

    .line 10202
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const-string/jumbo v1, "https://h5.dingtalk.com/h5-bethebest/index.html?dd_func_rt=true&dd_rt_type=1&from=orgManager"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 963
    :cond_10
    sget v0, Lezg$h;->cell_manage_verify:I

    if-ne v9, v0, :cond_12

    .line 10207
    const-string/jumbo v0, "org_auth_click"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "status="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a:Lfll;

    .line 11104
    iget v2, v2, Lfll;->d:I

    .line 10207
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 11315
    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10208
    const-string/jumbo v0, "org_management_certification_set_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 10210
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    invoke-static {v2, v3}, Lfwz;->a(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10212
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a:Lfll;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a:Lfll;

    .line 12090
    iget v0, v0, Lfll;->a:I

    .line 10212
    if-nez v0, :cond_11

    .line 10213
    invoke-static {}, Lfls;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 10218
    :goto_4
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "action_org_manager_update_reddot"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_1

    .line 10215
    :cond_11
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    invoke-static {v0, v1}, Lfls;->d(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    goto :goto_4

    .line 967
    :cond_12
    sget v0, Lezg$h;->cell_manage_security:I

    if-ne v9, v0, :cond_13

    .line 12223
    const-string/jumbo v0, "org_management_safecenter_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 12224
    const-string/jumbo v0, "org_management_safe_set_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 12226
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/security_center.html"

    new-instance v2, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$4;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_1

    .line 971
    :cond_13
    sget v0, Lezg$h;->cell_manage_service:I

    if-ne v9, v0, :cond_14

    .line 12237
    const-string/jumbo v0, "org_management_service_set_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 12238
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const-string/jumbo v1, "https://h5.dingtalk.com/40plan/appoint-custom/index.html"

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    sget v1, Lezg$l;->setting_service_center_title:I

    .line 12239
    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    .line 12238
    invoke-virtual/range {v0 .. v5}, Lgvm;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 975
    :cond_14
    sget v0, Lezg$h;->cell_manage_biz_suite:I

    if-ne v9, v0, :cond_16

    .line 12243
    const-string/jumbo v0, "crop_admin_dsuite"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 12245
    const-string/jumbo v2, "https://dsuite.dingtalk.com/?corpId="

    .line 12247
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 12249
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 12250
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12253
    :cond_15
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    sget v1, Lezg$l;->dt_contact_org_manager_biz_suite_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lgvm;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 979
    :cond_16
    sget v0, Lezg$h;->cell_org_logo:I

    if-ne v9, v0, :cond_17

    .line 12267
    const-string/jumbo v0, "crop_admin_customization_logo"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 12268
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/manager_org_customize.html"

    new-instance v2, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$6;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_1

    .line 983
    :cond_17
    sget v0, Lezg$h;->cell_org_launcher_page:I

    if-ne v9, v0, :cond_18

    .line 985
    const-string/jumbo v0, "crop_admin_customization_launch_screen"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 986
    const-string/jumbo v0, "https://h5.dingtalk.com/org-customization/launchImg.html?orgId=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 987
    .local v10, "url":Ljava/lang/String;
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v10, v1}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 989
    .end local v10    # "url":Ljava/lang/String;
    :cond_18
    sget v0, Lezg$h;->cell_org_exclusive_skin:I

    if-ne v9, v0, :cond_19

    .line 991
    const-string/jumbo v0, "crop_admin_customization_theme"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 992
    const-string/jumbo v0, "https://h5.dingtalk.com/org-customization/skin.html?orgId=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 993
    .restart local v10    # "url":Ljava/lang/String;
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v10, v1}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 995
    .end local v10    # "url":Ljava/lang/String;
    :cond_19
    sget v0, Lezg$h;->cell_manage_more:I

    if-ne v9, v0, :cond_1a

    .line 12290
    const-string/jumbo v0, "org_management_more_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 12291
    const-string/jumbo v0, "org_management_more_set_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 12293
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/manager_org_setting.html"

    new-instance v2, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$8;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$8;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_1

    .line 999
    :cond_1a
    sget v0, Lezg$h;->tv_knowledge_tip:I

    if-ne v9, v0, :cond_1b

    .line 12314
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    invoke-static {}, Lfll;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1002
    :cond_1b
    sget v0, Lezg$h;->tv_org_info:I

    if-ne v9, v0, :cond_1c

    .line 12318
    const-string/jumbo v0, "contact_org_profile_auth_click"

    const-string/jumbo v1, "org_auth_level =%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a:Lfll;

    .line 13090
    iget v4, v4, Lfll;->a:I

    .line 12318
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 13315
    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12319
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    invoke-static {p0, v0, v1}, Lfls;->a(Landroid/content/Context;J)V

    goto/16 :goto_1

    .line 1005
    :cond_1c
    sget v0, Lezg$h;->v_dashbaord:I

    if-ne v9, v0, :cond_1f

    .line 1006
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v6

    .line 1008
    .local v6, "corpId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    const-string/jumbo v1, "ding_index_url"

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1010
    .local v8, "fastconfigUrl":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1011
    move-object v10, v8

    .line 1017
    .restart local v10    # "url":Ljava/lang/String;
    :goto_5
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v10, v1}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1012
    .end local v10    # "url":Ljava/lang/String;
    :cond_1d
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "contact_dingindex_new_url"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1013
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "https://h5.dingtalk.com/ding-index-v4/index.html?showmenu=false&dd_progress=false&corpId="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v6, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "url":Ljava/lang/String;
    goto :goto_5

    .line 1015
    .end local v10    # "url":Ljava/lang/String;
    :cond_1e
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "https://h5.dingtalk.com/ding-index/index.html?dd_nav_bgcolor=FF47BAFF#/index?corpId="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v6, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "url":Ljava/lang/String;
    goto :goto_5

    .line 1018
    .end local v6    # "corpId":Ljava/lang/String;
    .end local v8    # "fastconfigUrl":Ljava/lang/String;
    .end local v10    # "url":Ljava/lang/String;
    :cond_1f
    sget v0, Lezg$h;->cell_manage_manager_setting:I

    if-ne v9, v0, :cond_20

    .line 14257
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/manager_setting.html"

    new-instance v2, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$5;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_1

    .line 1021
    :cond_20
    sget v0, Lezg$h;->cell_cloud_msg_search:I

    if-ne v9, v0, :cond_21

    .line 1022
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const-string/jumbo v1, "https://h5.dingtalk.com/search-charge/index.html#/introduction"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1023
    :cond_21
    sget v0, Lezg$h;->cell_union_orgs_from_me:I

    if-ne v9, v0, :cond_22

    .line 1025
    const-string/jumbo v0, "https://h5.dingtalk.com/linked-org/main.html?orgId=%s#/list/my"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1026
    .restart local v10    # "url":Ljava/lang/String;
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v10, v1}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1028
    .end local v10    # "url":Ljava/lang/String;
    :cond_22
    sget v0, Lezg$h;->cell_union_orgs_to_me:I

    if-ne v9, v0, :cond_23

    .line 1030
    const-string/jumbo v0, "https://h5.dingtalk.com/linked-org/main.html?orgId=%s#/list/other"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1031
    .restart local v10    # "url":Ljava/lang/String;
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v10, v1}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1033
    .end local v10    # "url":Ljava/lang/String;
    :cond_23
    sget v0, Lezg$h;->cell_union_orgs:I

    if-ne v9, v0, :cond_0

    .line 1035
    const-string/jumbo v0, "https://h5.dingtalk.com/linked-org/main.html?orgId=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1036
    .restart local v10    # "url":Ljava/lang/String;
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v10, v1}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v10    # "url":Ljava/lang/String;
    :cond_24
    move-object v0, v1

    goto/16 :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 153
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    sget v0, Lezg$j;->activity_manager_org:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->setContentView(I)V

    .line 155
    sget v0, Lezg$l;->dt_org_manage_backstage:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->setTitle(I)V

    .line 156
    new-instance v0, Lfll;

    invoke-direct {v0}, Lfll;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a:Lfll;

    .line 157
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a:Lfll;

    .line 2077
    iput-object p0, v0, Lfll;->e:Lflk;

    .line 2177
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2178
    if-nez v0, :cond_6

    .line 2179
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->finish()V

    .line 3200
    :goto_0
    sget v0, Lezg$h;->v_dashbaord:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/widget/DashboardView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->u:Lcom/alibaba/android/user/widget/DashboardView;

    .line 3202
    sget v0, Lezg$h;->v_dashbaord:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3203
    sget v0, Lezg$h;->tv_ding_index_label:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3205
    invoke-static {}, Lcms;->h()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3206
    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3233
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3234
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    invoke-static {v0, v1}, Lfll;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->f:Ljava/lang/String;

    .line 3236
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3237
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->finish()V

    .line 3244
    :cond_1
    sget v0, Lezg$h;->cell_manage_org_add_employee:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->l:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    .line 3245
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->l:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    sget v1, Lezg$l;->icon_addperson_fill:I

    sget v4, Lezg$e;->ui_common_orange1_color:I

    invoke-direct {p0, v0, v1, v4}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;II)V

    .line 3248
    sget v0, Lezg$h;->cell_manage_org_contact:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->k:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    .line 3249
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->k:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    sget v1, Lezg$l;->icon_addresslist_fill:I

    sget v4, Lezg$e;->ui_common_theme_icon_bg_color:I

    invoke-direct {p0, v0, v1, v4}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;II)V

    .line 3252
    sget v0, Lezg$h;->cell_manage_external_contact:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->m:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    .line 3253
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->m:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    sget v1, Lezg$l;->icon_shakehands_fill:I

    sget v4, Lezg$e;->ui_common_theme_icon_bg_color:I

    invoke-direct {p0, v0, v1, v4}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;II)V

    .line 3256
    sget v0, Lezg$h;->tc_staff_usage_data:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    .line 3257
    sget v1, Lezg$l;->icon_statistics_fill:I

    sget v4, Lezg$e;->ui_common_orange_icon_bg_color:I

    invoke-direct {p0, v0, v1, v4}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;II)V

    .line 3260
    sget v0, Lezg$h;->cell_hr_manage:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->q:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    .line 3261
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->q:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    sget v1, Lezg$l;->icon_hrm_fill:I

    sget v4, Lezg$e;->ui_common_orange_icon_bg_color:I

    invoke-direct {p0, v0, v1, v4}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;II)V

    .line 3264
    sget v0, Lezg$h;->cell_customize_org_apply_form:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    .line 3265
    sget v1, Lezg$l;->icon_setting:I

    sget v4, Lezg$e;->ui_common_blue1_color:I

    invoke-direct {p0, v0, v1, v4}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;II)V

    .line 3266
    sget v1, Lezg$l;->dt_custom_form_efficient:I

    invoke-static {v1}, Leda;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setContent(Ljava/lang/String;)V

    .line 3268
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v4, "contact_org_custom_form"

    iget-wide v6, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    invoke-virtual {v1, v4, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3269
    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 3275
    :goto_2
    sget v0, Lezg$h;->cell_union_orgs:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    .line 3276
    sget v1, Lezg$l;->icon_affiliations:I

    sget v4, Lezg$e;->ui_common_blue1_color:I

    invoke-direct {p0, v0, v1, v4}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;II)V

    .line 3278
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v4, "contact_related_org_v2"

    iget-wide v6, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    invoke-virtual {v1, v4, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    .line 3279
    invoke-static {v4, v5}, Lfls;->b(J)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3280
    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 3286
    :goto_3
    sget v0, Lezg$h;->cell_union_orgs_from_me:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    .line 3287
    sget v1, Lezg$l;->icon_connection:I

    sget v4, Lezg$e;->ui_common_theme_text_color:I

    invoke-direct {p0, v0, v1, v4}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;II)V

    .line 3290
    sget v1, Lezg$h;->cell_union_orgs_to_me:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    .line 3291
    sget v4, Lezg$l;->icon_connection:I

    sget v5, Lezg$e;->ui_common_theme_text_color:I

    invoke-direct {p0, v1, v4, v5}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;II)V

    .line 3293
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    const-string/jumbo v5, "contact_related_org_v2"

    iget-wide v6, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;J)Z

    move-result v4

    if-nez v4, :cond_b

    .line 3294
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    const-string/jumbo v5, "contact_related_org"

    iget-wide v6, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    .line 3295
    invoke-static {v4, v5}, Lfls;->b(J)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3296
    sget v4, Lezg$h;->tv_union_org_title:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 3297
    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 3298
    invoke-static {v1, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 3306
    :goto_4
    sget v0, Lezg$h;->cell_manage_mail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    .line 3307
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    sget v1, Lezg$l;->icon_cmail:I

    sget v4, Lezg$e;->ui_common_alert_icon_bg_color:I

    invoke-direct {p0, v0, v1, v4}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;II)V

    .line 3308
    iget v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->g:I

    if-ne v8, v0, :cond_c

    invoke-static {}, Lcms;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3309
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setVisibility(I)V

    .line 3315
    :goto_5
    sget v0, Lezg$h;->tv_knowledge_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->p:Landroid/widget/TextView;

    .line 3318
    sget v0, Lezg$h;->org_number_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->x:Landroid/view/View;

    .line 3319
    sget v0, Lezg$h;->tv_org_number:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->r:Landroid/widget/TextView;

    .line 3320
    sget v0, Lezg$h;->tv_open_org_number:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->s:Landroid/widget/TextView;

    .line 3321
    sget v0, Lezg$h;->iv_right_arrow:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->w:Landroid/view/View;

    .line 3322
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a:Lfll;

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    invoke-virtual {v0, v4, v5}, Lfll;->b(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->v:Ljava/lang/String;

    .line 3323
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->v:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d(Ljava/lang/String;)V

    .line 3326
    sget v0, Lezg$h;->cell_oa_settings:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    .line 3327
    sget v1, Lezg$l;->icon_work_fill:I

    sget v4, Lezg$e;->ui_common_theme_icon_bg_color:I

    invoke-direct {p0, v0, v1, v4}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;II)V

    .line 3331
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setVisibility(I)V

    .line 3334
    sget v0, Lezg$h;->cell_org_homepage:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    .line 3335
    sget v1, Lezg$l;->icon_homepage_fill:I

    sget v4, Lezg$e;->ui_common_green_icon_bg_color:I

    invoke-direct {p0, v0, v1, v4}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;II)V

    .line 3336
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->t:Z

    if-eqz v1, :cond_d

    move v1, v2

    :goto_6
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setVisibility(I)V

    .line 3338
    sget v0, Lezg$h;->tv_knowledge_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->t:Z

    if-eqz v0, :cond_e

    move v0, v2

    :goto_7
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3340
    sget v0, Lezg$h;->cell_master_verify:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->i:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    .line 3341
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->i:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    sget v1, Lezg$l;->icon_certificate_fill:I

    sget v4, Lezg$e;->ui_common_alert_icon_bg_color:I

    invoke-direct {p0, v0, v1, v4}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;II)V

    .line 3342
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->i:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    invoke-static {}, Lcms;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    :goto_8
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setVisibility(I)V

    .line 3345
    sget v0, Lezg$h;->cell_manage_verify:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    .line 3346
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    sget v1, Lezg$l;->icon_certification_f:I

    sget v4, Lezg$e;->ui_common_orange_icon_bg_color:I

    invoke-direct {p0, v0, v1, v4}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;II)V

    .line 3347
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->g()V

    .line 3350
    sget v0, Lezg$h;->cell_manage_security:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->n:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    .line 3351
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->n:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    sget v1, Lezg$l;->icon_safe_fill:I

    sget v4, Lezg$e;->ui_common_green_icon_bg_color:I

    invoke-direct {p0, v0, v1, v4}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;II)V

    .line 3364
    sget v0, Lezg$h;->cell_cloud_msg_search:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->o:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    .line 3365
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->o:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    sget v1, Lezg$l;->icon_cloud_history_fill:I

    sget v4, Lezg$e;->ui_common_theme_icon_bg_color:I

    invoke-direct {p0, v0, v1, v4}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;II)V

    .line 3368
    sget v0, Lezg$h;->cell_manage_service:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    .line 3369
    sget v1, Lezg$l;->icon_service_fill:I

    sget v4, Lezg$e;->ui_common_theme_icon_bg_color:I

    invoke-direct {p0, v0, v1, v4}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;II)V

    .line 3372
    sget v0, Lezg$h;->cell_manage_biz_suite:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    .line 3373
    sget v1, Lezg$l;->icon_sketch_fill:I

    sget v4, Lezg$e;->ui_common_orange_icon_bg_color:I

    invoke-direct {p0, v0, v1, v4}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;II)V

    .line 3375
    iget-wide v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    invoke-static {v4, v5, v2}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(JZ)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3376
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setVisibility(I)V

    .line 3380
    :cond_2
    sget v0, Lezg$h;->cell_manage_manager_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    .line 3381
    sget v1, Lezg$l;->icon_gm_fill:I

    sget v4, Lezg$e;->ui_common_green_icon_bg_color:I

    invoke-direct {p0, v0, v1, v4}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;II)V

    .line 3382
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v4, "f_user_sub_manager"

    .line 4083
    invoke-virtual {v1, v4, v8}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 3382
    if-eqz v1, :cond_10

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    .line 3383
    invoke-static {v4, v5}, Lfls;->b(J)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3384
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setVisibility(I)V

    .line 3388
    :goto_9
    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4397
    sget v0, Lezg$h;->item_org_logo:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 4399
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 4401
    sget v0, Lezg$h;->cell_org_logo:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    .line 4402
    sget v4, Lezg$l;->icon_star_fill:I

    sget v5, Lezg$e;->ui_common_orange_icon_bg_color:I

    invoke-direct {p0, v0, v4, v5}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;II)V

    .line 4403
    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4405
    sget v0, Lezg$h;->cell_org_launcher_page:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    .line 4406
    sget v4, Lezg$h;->cell_org_exclusive_skin:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    .line 4407
    sget v4, Lezg$l;->icon_launch_page_fil:I

    sget v5, Lezg$e;->ui_common_theme_icon_bg_color:I

    invoke-direct {p0, v0, v4, v5}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;II)V

    .line 4408
    sget v4, Lezg$l;->icon_skin_fill:I

    sget v5, Lezg$e;->ui_common_alert_icon_bg_color:I

    invoke-direct {p0, v1, v4, v5}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;II)V

    .line 4410
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    const-string/jumbo v5, "enterprise_exclusive"

    invoke-virtual {v4, v5, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 4411
    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4412
    invoke-virtual {v1, p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4414
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setVisibility(I)V

    .line 4415
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->t:Z

    if-eqz v0, :cond_11

    .line 4416
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setVisibility(I)V

    .line 3214
    :goto_a
    invoke-virtual {p0, v9}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;)V

    .line 3215
    invoke-virtual {p0, v9}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/user/model/OrgScoreDataObject;)V

    .line 4431
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->c:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_3

    .line 4435
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4436
    const-string/jumbo v1, "com.workapp.hide.mobile.switch"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4437
    const-string/jumbo v1, "com.workapp.org_employee_change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4438
    const-string/jumbo v1, "com.workapp.ACTION_MANAGE_ORG_UPDATE_VERIFY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4439
    const-string/jumbo v1, "com.workapp.ACTION_HAS_CREATE_ALL_ORG_GROUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4440
    const-string/jumbo v1, "mail_config_update_sucess"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4441
    const-string/jumbo v1, "action_org_manager_update_reddot"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4442
    const-string/jumbo v1, "action_key_org_disband_status_change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4444
    new-instance v1, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$1;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->c:Landroid/content/BroadcastReceiver;

    .line 4497
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 4501
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a:Lfll;

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    .line 5308
    cmp-long v0, v2, v10

    if-lez v0, :cond_4

    .line 5310
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lfll$3;

    invoke-direct {v4, v1}, Lfll$3;-><init>(Lfll;)V

    const-class v5, Lcma;

    iget-object v1, v1, Lfll;->e:Lflk;

    .line 5336
    invoke-interface {v1}, Lflk;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 5310
    invoke-interface {v0, v4, v5, v1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 5337
    invoke-static {}, Lfay;->a()Lezx;

    move-result-object v1

    invoke-interface {v1, v2, v3, v0}, Lezx;->a(JLcma;)V

    .line 4502
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a:Lfll;

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    invoke-virtual {v0, v2, v3}, Lfll;->c(J)V

    .line 4503
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a:Lfll;

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    .line 5341
    cmp-long v0, v4, v10

    if-ltz v0, :cond_5

    iget-object v0, v1, Lfll;->e:Lflk;

    if-nez v0, :cond_13

    .line 4504
    :cond_5
    :goto_b
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a:Lfll;

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    .line 5485
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    new-instance v4, Lfll$5;

    invoke-direct {v4, v0}, Lfll$5;-><init>(Lfll;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(JLcma;)V

    .line 163
    return-void

    .line 2183
    :cond_6
    const-string/jumbo v1, "display_enterprise_oid"

    invoke-virtual {v0, v1, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    .line 2184
    const-string/jumbo v1, "bread_node_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->f:Ljava/lang/String;

    .line 2185
    const-string/jumbo v1, "display_department_oid"

    invoke-virtual {v0, v1, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->e:J

    .line 2187
    const-string/jumbo v1, "key_org_auth_level"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2188
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a:Lfll;

    .line 3086
    iput v1, v4, Lfll;->a:I

    .line 2190
    const-string/jumbo v1, "key_org_role"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2191
    const-string/jumbo v1, "key_org_role"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->g:I

    .line 2196
    :goto_c
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/utils/UserUtils;->b(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->t:Z

    goto/16 :goto_0

    .line 2193
    :cond_7
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->d:J

    invoke-static {v0, v1}, Lfls;->a(J)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->g:I

    goto :goto_c

    .line 3208
    :cond_8
    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_1

    .line 3271
    :cond_9
    invoke-static {v0, v3}, Lfxp;->a(Landroid/view/View;I)V

    goto/16 :goto_2

    .line 3282
    :cond_a
    invoke-static {v0, v3}, Lfxp;->a(Landroid/view/View;I)V

    goto/16 :goto_3

    .line 3300
    :cond_b
    sget v4, Lezg$h;->tv_union_org_title:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v3}, Lfxp;->a(Landroid/view/View;I)V

    .line 3301
    invoke-static {v0, v3}, Lfxp;->a(Landroid/view/View;I)V

    .line 3302
    invoke-static {v1, v3}, Lfxp;->a(Landroid/view/View;I)V

    goto/16 :goto_4

    .line 3311
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setVisibility(I)V

    goto/16 :goto_5

    :cond_d
    move v1, v3

    .line 3336
    goto/16 :goto_6

    :cond_e
    move v0, v3

    .line 3338
    goto/16 :goto_7

    :cond_f
    move v0, v3

    .line 3342
    goto/16 :goto_8

    .line 3386
    :cond_10
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setVisibility(I)V

    goto/16 :goto_9

    .line 4418
    :cond_11
    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setVisibility(I)V

    goto/16 :goto_a

    .line 4421
    :cond_12
    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4422
    invoke-virtual {v1, v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4424
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setVisibility(I)V

    .line 4425
    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I2ImageCell;->setVisibility(I)V

    goto/16 :goto_a

    .line 5344
    :cond_13
    new-instance v2, Lfll$4;

    invoke-direct {v2, v1}, Lfll$4;-><init>(Lfll;)V

    .line 5368
    iget-object v0, v1, Lfll;->e:Lflk;

    invoke-interface {v0}, Lflk;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 5369
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v3, Lcma;

    iget-object v1, v1, Lfll;->e:Lflk;

    .line 5370
    invoke-interface {v1}, Lflk;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 5369
    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 5372
    :goto_d
    invoke-static {}, Lfay;->a()Lezx;

    move-result-object v1

    invoke-interface {v1, v0, v4, v5}, Lezx;->a(Lcma;J)V

    goto/16 :goto_b

    :cond_14
    move-object v0, v2

    goto :goto_d
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->c:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 169
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->c:Landroid/content/BroadcastReceiver;

    .line 172
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 173
    return-void
.end method
