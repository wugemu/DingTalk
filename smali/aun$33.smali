.class final Laun$33;
.super Ljava/lang/Object;
.source "CalendarDrawerContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laun;


# direct methods
.method constructor <init>(Laun;)V
    .locals 0
    .param p1, "this$0"    # Laun;

    .prologue
    .line 242
    iput-object p1, p0, Laun$33;->a:Laun;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 246
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_ding_calendar_share_tips_enable"

    invoke-virtual {v0, v1, v7}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "[CalendarDrawerContainer] calendar show tips close."

    aput-object v1, v0, v2

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1717
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-static {}, Lavq;->p()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 254
    const-string/jumbo v0, "pref_key_calendar_ali_mail_not_login_tips_2"

    invoke-static {v0, v7}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lavi;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 256
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "[CalendarDrawerContainer] calendar ali mail not login tips."

    aput-object v1, v0, v2

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 257
    iget-object v3, p0, Laun$33;->a:Laun;

    .line 1694
    iget-object v0, v3, Laun;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1698
    iget-object v0, v3, Laun;->n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    if-eqz v0, :cond_2

    iget-object v0, v3, Laun;->n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1702
    :cond_2
    iget-object v0, v3, Laun;->q:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    .line 2631
    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, v3, Laun;->s:Ljava/util/List;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2632
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    move v1, v2

    .line 2634
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 2635
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lauz;

    .line 2636
    instance-of v0, v0, Lavb;

    if-eqz v0, :cond_3

    .line 1703
    :goto_2
    iget-object v0, v3, Laun;->q:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, v1

    .line 1704
    sub-int v1, v0, v4

    if-lez v1, :cond_0

    .line 1708
    iget-object v1, v3, Laun;->q:Landroid/widget/ListView;

    sub-int/2addr v0, v4

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1709
    if-nez v0, :cond_5

    .line 1710
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "[CalendarDrawerContainer] showAliMailNotLoginTips  rootview is null"

    aput-object v1, v0, v2

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 2634
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2641
    :cond_4
    const/4 v1, -0x1

    goto :goto_2

    .line 1714
    :cond_5
    sget v1, Laow$d;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1715
    if-nez v0, :cond_6

    .line 1716
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "[CalendarDrawerContainer] showAliMailNotLoginTips tvShare is null"

    aput-object v1, v0, v2

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1720
    :cond_6
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    iget-object v4, v3, Laun;->a:Landroid/app/Activity;

    sget-object v5, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;->Down:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;

    sget v6, Laow$f;->dt_ding_login_ali_mail_tips:I

    invoke-direct {v1, v4, v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;I)V

    iput-object v1, v3, Laun;->n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    .line 1721
    iget-object v1, v3, Laun;->n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    invoke-virtual {v1, v7}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->setOutsideTouchable(Z)V

    .line 1722
    iget-object v1, v3, Laun;->n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    new-instance v4, Laun$10;

    invoke-direct {v4, v3}, Laun$10;-><init>(Laun;)V

    .line 3122
    iput-object v4, v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$a;

    .line 1730
    invoke-static {}, Lcms;->c()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1731
    iget-object v1, v3, Laun;->n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    sget v4, Laow$b;->ding_calendar_popup_max_width:I

    invoke-static {v4}, Leda;->d(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->a(I)V

    .line 1734
    :cond_7
    iget-object v1, v3, Laun;->n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->getHeight()I

    move-result v1

    .line 1735
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1736
    div-int/lit8 v4, v4, 0x2

    neg-int v4, v4

    .line 1737
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v1, v5

    neg-int v1, v1

    .line 1738
    iget-object v3, v3, Laun;->n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    invoke-virtual {v3, v0, v4, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->a(Landroid/view/View;II)V

    .line 1739
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "[CalendarDrawerContainer] showAliMailNotLoginTips show"

    aput-object v1, v0, v2

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 261
    :cond_8
    const-string/jumbo v0, "pref_key_calendar_setting_ali_mail_not_open_tips_2"

    invoke-static {v0, v7}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "[CalendarDrawerContainer] calendar setting ali mail not open tips."

    aput-object v1, v0, v2

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Laun$33;->a:Laun;

    invoke-static {v0}, Laun;->a(Laun;)V

    goto/16 :goto_0

    .line 270
    :cond_9
    const-string/jumbo v0, "pref_key_calendar_shared_calendar_hint"

    invoke-static {v0, v7}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "[CalendarDrawerContainer] calendar share tips."

    aput-object v1, v0, v2

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Laun$33;->a:Laun;

    invoke-static {v0}, Laun;->b(Laun;)V

    goto/16 :goto_0
.end method
