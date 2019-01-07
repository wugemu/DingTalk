.class public final Laxj;
.super Lawz;
.source "ShowEventHolder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lawz;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 31
    invoke-super {p0}, Lawz;->c()V

    .line 33
    iget-object v0, p0, Laxj;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Laxj;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Laxj;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, -0x11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 35
    iget-object v0, p0, Laxj;->f:Landroid/widget/TextView;

    sget v1, Laow$a;->ui_common_level1_base_color:I

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    :cond_0
    iget-object v0, p0, Laxj;->d:Lawv;

    instance-of v0, v0, Lawx;

    if-nez v0, :cond_1

    .line 38
    iget-object v0, p0, Laxj;->f:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Laxj;->g:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Laxj;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 5208
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v9, p0, Laxj;->d:Lawv;

    check-cast v9, Lawx;

    .line 1058
    .local v9, "event":Lawx;
    iget-object v11, v9, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 47
    .local v11, "instanceShowObject":Lcom/alibaba/android/calendar/data/object/InstanceShowObject;
    if-nez v11, :cond_2

    .line 48
    iget-object v0, p0, Laxj;->f:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Laxj;->g:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Laxj;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_0

    .line 54
    :cond_2
    invoke-static {v11}, Lawc;->e(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 55
    invoke-static {v11}, Lawc;->f(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    :cond_3
    iget-object v0, p0, Laxj;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 57
    iget-object v0, p0, Laxj;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Laxj;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 58
    iget-object v0, p0, Laxj;->f:Landroid/widget/TextView;

    sget v1, Laow$a;->ui_common_level3_text_color:I

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    :cond_4
    invoke-static {v11}, Lawc;->l(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v11}, Lawc;->i(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1170
    iget-object v0, p0, Laxj;->k:Landroid/widget/TextView;

    invoke-virtual {v11}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getInstanceStartTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lavl;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2093
    if-eqz v11, :cond_8

    .line 2094
    invoke-virtual {v11}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getSelfStatus()I

    move-result v0

    sget-object v1, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;->CONFIRMED:Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    .line 1171
    :goto_1
    if-eqz v0, :cond_9

    .line 1172
    invoke-static {v11}, Lawc;->a(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1173
    iget-object v0, p0, Laxj;->l:Landroid/widget/TextView;

    sget v1, Laow$f;->dt_calendar_notification_confirmed:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 75
    :cond_5
    :goto_2
    invoke-virtual {v11}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 76
    iget-object v0, p0, Laxj;->f:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :goto_3
    iget-object v0, p0, Laxj;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 81
    .local v13, "title":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 82
    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    .line 83
    .local v14, "titleArray":[C
    const/4 v12, 0x1

    .line 84
    .local v12, "isSpecialChars":Z
    array-length v1, v14

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_6

    aget-char v8, v14, v0

    .line 85
    .local v8, "c":C
    const/16 v2, 0x2a

    if-eq v2, v8, :cond_11

    .line 86
    const/4 v12, 0x0

    .line 90
    .end local v8    # "c":C
    :cond_6
    if-eqz v12, :cond_12

    .line 91
    iget-object v0, p0, Laxj;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v2, p0, Laxj;->b:Landroid/app/Activity;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 97
    .end local v12    # "isSpecialChars":Z
    .end local v14    # "titleArray":[C
    :cond_7
    :goto_5
    invoke-static {v11}, Lawc;->o(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 98
    iget-object v0, p0, Laxj;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Laxj;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :goto_6
    iget-object v0, p0, Laxj;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v11}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getColor()I

    move-result v1

    .line 112
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    .line 111
    invoke-static {v1, v2}, Lavn;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    invoke-virtual {v9}, Lawx;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 115
    iget-object v0, p0, Laxj;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Laxj;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Laxj;->i:Landroid/widget/TextView;

    invoke-virtual {v9}, Lawx;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5204
    :goto_7
    invoke-static {v11}, Lawc;->l(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 5205
    invoke-static {v11}, Lawc;->i(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 5206
    invoke-static {v11}, Lawc;->j(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 5207
    invoke-static {v11}, Lawc;->a(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 5208
    iget-object v0, p0, Laxj;->a:Landroid/view/View;

    sget v1, Laow$c;->calendar_bg_yellow_selector:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2094
    .end local v13    # "title":Ljava/lang/String;
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1174
    :cond_9
    invoke-static {v11}, Lawc;->j(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1175
    invoke-static {v11}, Lawc;->a(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1176
    iget-object v0, p0, Laxj;->l:Landroid/widget/TextView;

    sget v1, Laow$f;->dt_calendar_notification_uncofirmed:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1177
    iget-object v0, p0, Laxj;->l:Landroid/widget/TextView;

    iget-object v1, p0, Laxj;->b:Landroid/app/Activity;

    sget v2, Laow$a;->ui_common_theme_bg_color:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 1179
    :cond_a
    iget-object v0, p0, Laxj;->l:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 64
    :cond_b
    invoke-static {v11}, Lawc;->l(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {v11}, Lawc;->c(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2184
    iget-object v0, p0, Laxj;->k:Landroid/widget/TextView;

    invoke-virtual {v11}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getInstanceEndTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lavl;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2185
    iget-object v0, p0, Laxj;->l:Landroid/widget/TextView;

    sget v1, Laow$f;->dt_ding_deadline_suffix:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 66
    :cond_c
    invoke-static {v11}, Lawc;->l(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {v11}, Lawc;->d(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2189
    invoke-virtual {v11}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->isAllDayEvent()Z

    move-result v1

    invoke-virtual {v11}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getInstanceStartTimeMillis()J

    move-result-wide v2

    .line 2190
    invoke-virtual {v11}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getInstanceEndTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Laxj;->d:Lawv;

    check-cast v0, Lawx;

    .line 3054
    iget-wide v6, v0, Lawx;->a:J

    move-object v0, p0

    .line 2189
    invoke-virtual/range {v0 .. v7}, Laxj;->a(ZJJJ)V

    goto/16 :goto_2

    .line 3126
    :cond_d
    if-eqz v11, :cond_e

    .line 3127
    invoke-virtual {v11}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getSource()I

    move-result v0

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->IM:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_e

    invoke-static {v11}, Lawc;->i(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    .line 68
    :goto_8
    if-eqz v0, :cond_f

    .line 3195
    if-eqz v11, :cond_5

    .line 3199
    iget-object v0, p0, Laxj;->k:Landroid/widget/TextView;

    invoke-virtual {v11}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getInstanceStartTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lavl;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3200
    iget-object v0, p0, Laxj;->l:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3127
    :cond_e
    const/4 v0, 0x0

    goto :goto_8

    .line 71
    :cond_f
    invoke-virtual {v11}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->isAllDayEvent()Z

    move-result v1

    invoke-virtual {v11}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getInstanceStartTimeMillis()J

    move-result-wide v2

    .line 72
    invoke-virtual {v11}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getInstanceEndTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Laxj;->d:Lawv;

    check-cast v0, Lawx;

    .line 4054
    iget-wide v6, v0, Lawx;->a:J

    move-object v0, p0

    .line 71
    invoke-virtual/range {v0 .. v7}, Laxj;->a(ZJJJ)V

    goto/16 :goto_2

    .line 78
    :cond_10
    iget-object v0, p0, Laxj;->f:Landroid/widget/TextView;

    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v1

    iget-object v2, p0, Laxj;->b:Landroid/app/Activity;

    invoke-virtual {v11}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Laxj;->b:Landroid/app/Activity;

    iget-object v5, p0, Laxj;->f:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    invoke-static {v4, v5}, Lcms;->d(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    .line 5050
    invoke-virtual {v1, v2, v3, v4}, Lcok;->a(Landroid/content/Context;Ljava/lang/CharSequence;F)Landroid/text/SpannableString;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 84
    .restart local v8    # "c":C
    .restart local v12    # "isSpecialChars":Z
    .restart local v13    # "title":Ljava/lang/String;
    .restart local v14    # "titleArray":[C
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 93
    .end local v8    # "c":C
    :cond_12
    iget-object v0, p0, Laxj;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_5

    .line 101
    .end local v12    # "isSpecialChars":Z
    .end local v14    # "titleArray":[C
    :cond_13
    invoke-virtual {v11}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getFolderName()Ljava/lang/String;

    move-result-object v10

    .line 102
    .local v10, "folderName":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 103
    iget-object v0, p0, Laxj;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Laxj;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 106
    :cond_14
    iget-object v0, p0, Laxj;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Laxj;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Laxj;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Laow$f;->icon_share_new_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    goto/16 :goto_6

    .line 119
    .end local v10    # "folderName":Ljava/lang/String;
    :cond_15
    iget-object v0, p0, Laxj;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Laxj;->i:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 5210
    :cond_16
    iget-object v0, p0, Laxj;->a:Landroid/view/View;

    sget v1, Laow$c;->common_white_cell_selector:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 127
    iget-object v0, p0, Laxj;->d:Lawv;

    instance-of v0, v0, Lawx;

    if-nez v0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v7, p0, Laxj;->d:Lawv;

    check-cast v7, Lawx;

    .line 6058
    .local v7, "event":Lawx;
    iget-object v8, v7, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 132
    .local v8, "instanceShowObject":Lcom/alibaba/android/calendar/data/object/InstanceShowObject;
    if-eqz v8, :cond_0

    .line 136
    invoke-static {v8}, Lawc;->o(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    invoke-virtual {v8}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getOwnerId()J

    move-result-wide v10

    .line 138
    .local v10, "ownerId":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v6

    .line 139
    .local v6, "alias":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Laxj;->b:Landroid/app/Activity;

    sget v1, Laow$f;->dt_ding_calendar_shared_schedule_no_privilege_tip:I

    .line 140
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    :goto_1
    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[ShowEvent] navToDetail no privilege. folderId="

    aput-object v1, v0, v3

    invoke-virtual {v8}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getFolderId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string/jumbo v2, ", calendarId="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {v8}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getCalendarId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v0, p0, Laxj;->b:Landroid/app/Activity;

    sget v1, Laow$f;->dt_calendar_shared_schedule_no_privilege_tip_at:I

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v6, v2, v3

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 146
    .end local v6    # "alias":Ljava/lang/String;
    .end local v10    # "ownerId":J
    :cond_3
    invoke-virtual {v8}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getNavUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 147
    invoke-virtual {v8}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getNavUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Laxj;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lavr;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 152
    :cond_4
    :goto_2
    invoke-static {v8}, Lawc;->l(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 153
    invoke-static {v8}, Lawc;->i(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6209
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6210
    const-string/jumbo v1, "ding_calendar_date_check_arrangement_click"

    invoke-static {v1, v0}, Lavw;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 148
    :cond_5
    invoke-static {v8}, Lawc;->k(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 149
    iget-object v0, p0, Laxj;->b:Landroid/app/Activity;

    invoke-virtual {v8}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getCalendarId()J

    move-result-wide v1

    invoke-virtual {v8}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getFolderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getInstanceStartTimeMillis()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lavr;->a(Landroid/content/Context;JLjava/lang/String;J)V

    goto :goto_2

    .line 155
    :cond_6
    invoke-static {v8}, Lawc;->c(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6222
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6223
    const-string/jumbo v1, "ding_calendar_date_check_arrangement_click"

    invoke-static {v1, v0}, Lavw;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 157
    :cond_7
    invoke-static {v8}, Lawc;->d(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v7}, Lawx;->isRepeatEvent()Z

    move-result v0

    .line 7214
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 7215
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "2"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7216
    const-string/jumbo v2, "repeat"

    if-eqz v0, :cond_8

    const-string/jumbo v0, "1"

    :goto_3
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7217
    const-string/jumbo v0, "ding_calendar_date_check_arrangement_click"

    invoke-static {v0, v1}, Lavw;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 7216
    :cond_8
    const-string/jumbo v0, "0"

    goto :goto_3

    .line 160
    :cond_9
    invoke-static {v8}, Lawc;->k(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7228
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7229
    const-string/jumbo v1, "ding_calendar_date_check_arrangement_click"

    invoke-static {v1, v0}, Lavw;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 162
    :cond_a
    invoke-static {v8}, Lawc;->m(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7246
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7247
    const-string/jumbo v1, "ding_calendar_date_check_arrangement_click"

    invoke-static {v1, v0}, Lavw;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 164
    :cond_b
    invoke-static {v8}, Lawc;->n(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7252
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7253
    const-string/jumbo v1, "ding_calendar_date_check_arrangement_click"

    invoke-static {v1, v0}, Lavw;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method
