.class public final Lhem;
.super Ljava/lang/Object;
.source "CalendarWidgetDayViewAdapter.java"

# interfaces
.implements Lcsa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhem$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lhfn;

.field private c:Lhem$a;

.field private d:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lhfn;Lhem$a;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "oACalDailyItemCache"    # Lhfn;
    .param p3, "onSelectedDayChangeListener"    # Lhem$a;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/alibaba/doraemon/performance/CalendarProxy;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lhem;->d:Ljava/util/Calendar;

    .line 32
    iput-object p1, p0, Lhem;->a:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lhem;->b:Lhfn;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lhem;->c:Lhem$a;

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;ILckq;Lckq;Z)Landroid/view/View;
    .locals 9
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parentView"    # Landroid/view/ViewGroup;
    .param p3, "month"    # I
    .param p4, "bean"    # Lckq;
    .param p5, "selectedBean"    # Lckq;
    .param p6, "isCurrentPage"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 40
    if-nez p1, :cond_3

    .line 41
    iget-object v4, p0, Lhem;->a:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lhdn$i;->item_sw_calendar_day:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 42
    new-instance v0, Lhel;

    iget-object v4, p0, Lhem;->a:Landroid/content/Context;

    iget-object v5, p0, Lhem;->b:Lhfn;

    invoke-direct {v0, v4, p1, v5}, Lhel;-><init>(Landroid/content/Context;Landroid/view/View;Lhfn;)V

    .line 45
    .local v0, "calendarDayViewHolder":Lhel;
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1067
    :goto_0
    const/4 v3, 0x0

    .line 1069
    if-eqz p4, :cond_0

    .line 1070
    iget-object v4, p0, Lhem;->d:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1071
    iget-object v4, p0, Lhem;->d:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2050
    iget v5, p4, Lckq;->a:I

    .line 1071
    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lhem;->d:Ljava/util/Calendar;

    const/4 v5, 0x2

    .line 1072
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2054
    iget v5, p4, Lckq;->b:I

    .line 1072
    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lhem;->d:Ljava/util/Calendar;

    const/4 v5, 0x5

    .line 1073
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2058
    iget v5, p4, Lckq;->c:I

    .line 1073
    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    :goto_1
    move v3, v4

    .line 51
    .local v3, "isToday":Z
    :cond_0
    invoke-static {p4, p5}, Lcqd;->a(Lckq;Lckq;)Z

    move-result v2

    .line 3054
    .local v2, "isSelected":Z
    iget v4, p4, Lckq;->b:I

    .line 56
    if-ne p3, v4, :cond_5

    const/4 v1, 0x1

    .line 3070
    .local v1, "isCurrentMonth":Z
    :goto_2
    if-eqz p4, :cond_1

    .line 3074
    if-eqz v1, :cond_10

    .line 3075
    const/4 v4, 0x1

    .line 4058
    iget v5, p4, Lckq;->c:I

    .line 3075
    if-ne v4, v5, :cond_9

    .line 3076
    invoke-virtual {p4}, Lckq;->a()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 4150
    iget-object v6, v0, Lhel;->b:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4152
    if-eqz v2, :cond_6

    .line 4153
    iget-object v6, v0, Lhel;->b:Landroid/widget/TextView;

    iget-object v7, v0, Lhel;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lhdn$e;->white:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4154
    iget-object v6, v0, Lhel;->b:Landroid/widget/TextView;

    sget v7, Lhdn$g;->lightapp_bg_calendar_item_selected:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4162
    :goto_3
    iget-object v6, v0, Lhel;->b:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    .line 4163
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 4165
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    const v7, 0x80028

    invoke-static {v6, v4, v5, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    .line 4168
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4169
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 4170
    const/4 v6, 0x2

    if-lt v5, v6, :cond_8

    .line 4171
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4172
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v7, 0x1a

    invoke-direct {v4, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    add-int/lit8 v7, v5, -0x1

    const/16 v8, 0x12

    invoke-interface {v6, v4, v7, v5, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 4174
    iget-object v4, v0, Lhel;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8103
    :cond_1
    :goto_4
    iget-object v4, v0, Lhel;->c:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8104
    iget-object v4, v0, Lhel;->g:Lhfn;

    if-eqz v4, :cond_2

    if-nez p4, :cond_11

    .line 59
    :cond_2
    :goto_5
    return-object p1

    .line 47
    .end local v0    # "calendarDayViewHolder":Lhel;
    .end local v1    # "isCurrentMonth":Z
    .end local v2    # "isSelected":Z
    .end local v3    # "isToday":Z
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhel;

    .restart local v0    # "calendarDayViewHolder":Lhel;
    goto/16 :goto_0

    .line 1073
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 56
    .restart local v2    # "isSelected":Z
    .restart local v3    # "isToday":Z
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 4155
    .restart local v1    # "isCurrentMonth":Z
    :cond_6
    if-eqz v3, :cond_7

    .line 4156
    iget-object v6, v0, Lhel;->b:Landroid/widget/TextView;

    iget-object v7, v0, Lhel;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lhdn$e;->uidic_global_color_c11_11:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4157
    iget-object v6, v0, Lhel;->b:Landroid/widget/TextView;

    sget v7, Lhdn$g;->lightapp_bg_calendar_item_today:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    .line 4159
    :cond_7
    iget-object v6, v0, Lhel;->b:Landroid/widget/TextView;

    iget-object v7, v0, Lhel;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lhdn$e;->uidic_global_color_c11_11:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 4176
    :cond_8
    iget-object v5, v0, Lhel;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 3081
    :cond_9
    const/4 v4, 0x1

    .line 3082
    iget-object v5, v0, Lhel;->g:Lhfn;

    if-eqz v5, :cond_a

    if-eqz p4, :cond_a

    .line 3083
    iget-object v5, v0, Lhel;->g:Lhfn;

    invoke-virtual {v5, p4}, Lhfn;->a(Lckq;)Lhkm;

    move-result-object v5

    .line 3084
    if-eqz v5, :cond_a

    .line 3085
    iget v5, v5, Lhkm;->f:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a

    .line 3086
    const/4 v4, 0x0

    .line 3091
    :cond_a
    if-eqz v4, :cond_d

    .line 5058
    iget v4, p4, Lckq;->c:I

    .line 3092
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 5182
    iget-object v5, v0, Lhel;->b:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 5184
    if-eqz v2, :cond_b

    .line 5185
    iget-object v5, v0, Lhel;->b:Landroid/widget/TextView;

    iget-object v6, v0, Lhel;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lhdn$e;->white:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5186
    iget-object v5, v0, Lhel;->b:Landroid/widget/TextView;

    sget v6, Lhdn$g;->lightapp_bg_calendar_item_selected:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 5194
    :goto_6
    iget-object v5, v0, Lhel;->b:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 5195
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 5197
    iget-object v5, v0, Lhel;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 5187
    :cond_b
    if-eqz v3, :cond_c

    .line 5188
    iget-object v5, v0, Lhel;->b:Landroid/widget/TextView;

    iget-object v6, v0, Lhel;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lhdn$e;->uidic_global_color_c11_11:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5189
    iget-object v5, v0, Lhel;->b:Landroid/widget/TextView;

    sget v6, Lhdn$g;->lightapp_bg_calendar_item_today:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_6

    .line 5191
    :cond_c
    iget-object v5, v0, Lhel;->b:Landroid/widget/TextView;

    iget-object v6, v0, Lhel;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lhdn$e;->calendar_widget_work_day_c:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 6058
    :cond_d
    iget v4, p4, Lckq;->c:I

    .line 3094
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 6202
    iget-object v5, v0, Lhel;->b:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 6204
    if-eqz v2, :cond_e

    .line 6205
    iget-object v5, v0, Lhel;->b:Landroid/widget/TextView;

    iget-object v6, v0, Lhel;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lhdn$e;->white:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6206
    iget-object v5, v0, Lhel;->b:Landroid/widget/TextView;

    sget v6, Lhdn$g;->lightapp_bg_calendar_item_selected:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 6214
    :goto_7
    iget-object v5, v0, Lhel;->b:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 6215
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 6217
    iget-object v5, v0, Lhel;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 6207
    :cond_e
    if-eqz v3, :cond_f

    .line 6208
    iget-object v5, v0, Lhel;->b:Landroid/widget/TextView;

    iget-object v6, v0, Lhel;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lhdn$e;->uidic_global_color_c11_11:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6209
    iget-object v5, v0, Lhel;->b:Landroid/widget/TextView;

    sget v6, Lhdn$g;->lightapp_bg_calendar_item_today:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_7

    .line 6211
    :cond_f
    iget-object v5, v0, Lhel;->b:Landroid/widget/TextView;

    iget-object v6, v0, Lhel;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lhdn$e;->uidic_global_color_9_1:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    .line 7058
    :cond_10
    iget v4, p4, Lckq;->c:I

    .line 3097
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 7221
    iget-object v5, v0, Lhel;->b:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 7222
    iget-object v5, v0, Lhel;->b:Landroid/widget/TextView;

    iget-object v6, v0, Lhel;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lhdn$e;->uidic_global_color_c11_9:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7223
    iget-object v5, v0, Lhel;->b:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 7224
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 7226
    iget-object v5, v0, Lhel;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 8108
    :cond_11
    iget-object v4, v0, Lhel;->g:Lhfn;

    invoke-virtual {v4, p4}, Lhfn;->a(Lckq;)Lhkm;

    move-result-object v5

    .line 8110
    if-eqz v5, :cond_2

    .line 8114
    const/4 v4, 0x1

    iget v6, v5, Lhkm;->b:I

    if-ne v4, v6, :cond_1b

    .line 8115
    iget-object v4, v5, Lhkm;->d:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 8117
    iget-object v4, v0, Lhel;->c:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8120
    if-eqz v1, :cond_1a

    .line 8121
    const/4 v4, 0x1

    .line 9058
    iget v6, p4, Lckq;->c:I

    .line 8121
    if-ne v4, v6, :cond_13

    .line 8122
    iget-object v4, v5, Lhkm;->d:Ljava/lang/String;

    .line 9230
    if-eqz v2, :cond_12

    .line 9231
    iget-object v5, v0, Lhel;->c:Landroid/widget/TextView;

    iget-object v6, v0, Lhel;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lhdn$e;->white:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9238
    :goto_8
    iget-object v5, v0, Lhel;->b:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 9239
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 9241
    iget-object v5, v0, Lhel;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 9235
    :cond_12
    iget-object v5, v0, Lhel;->c:Landroid/widget/TextView;

    iget-object v6, v0, Lhel;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lhdn$e;->uidic_global_color_c11_11:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    .line 8127
    :cond_13
    const/4 v4, 0x1

    .line 8128
    const/4 v6, 0x2

    iget v7, v5, Lhkm;->f:I

    if-ne v6, v7, :cond_14

    .line 8129
    const/4 v4, 0x0

    .line 8132
    :cond_14
    if-eqz v4, :cond_17

    .line 8133
    iget-object v4, v5, Lhkm;->d:Ljava/lang/String;

    .line 9245
    if-eqz v2, :cond_15

    .line 9246
    iget-object v5, v0, Lhel;->c:Landroid/widget/TextView;

    iget-object v6, v0, Lhel;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lhdn$e;->white:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9253
    :goto_9
    iget-object v5, v0, Lhel;->c:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 9254
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 9256
    iget-object v5, v0, Lhel;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 9247
    :cond_15
    if-eqz v3, :cond_16

    .line 9248
    iget-object v5, v0, Lhel;->c:Landroid/widget/TextView;

    iget-object v6, v0, Lhel;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lhdn$e;->uidic_global_color_c11_11:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9

    .line 9250
    :cond_16
    iget-object v5, v0, Lhel;->c:Landroid/widget/TextView;

    iget-object v6, v0, Lhel;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lhdn$e;->uidic_global_color_6_1:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9

    .line 8135
    :cond_17
    iget-object v4, v5, Lhkm;->d:Ljava/lang/String;

    .line 9261
    if-eqz v2, :cond_18

    .line 9262
    iget-object v5, v0, Lhel;->c:Landroid/widget/TextView;

    iget-object v6, v0, Lhel;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lhdn$e;->white:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9269
    :goto_a
    iget-object v5, v0, Lhel;->c:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 9270
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 9272
    iget-object v5, v0, Lhel;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 9263
    :cond_18
    if-eqz v3, :cond_19

    .line 9264
    iget-object v5, v0, Lhel;->c:Landroid/widget/TextView;

    iget-object v6, v0, Lhel;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lhdn$e;->uidic_global_color_c11_11:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_a

    .line 9266
    :cond_19
    iget-object v5, v0, Lhel;->c:Landroid/widget/TextView;

    iget-object v6, v0, Lhel;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lhdn$e;->uidic_global_color_c11_9:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_a

    .line 8139
    :cond_1a
    iget-object v4, v5, Lhkm;->d:Ljava/lang/String;

    .line 9276
    iget-object v5, v0, Lhel;->c:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 9277
    iget-object v5, v0, Lhel;->c:Landroid/widget/TextView;

    iget-object v6, v0, Lhel;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lhdn$e;->uidic_global_color_c11_9:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9278
    iget-object v5, v0, Lhel;->c:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 9279
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 9281
    iget-object v5, v0, Lhel;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 8142
    :cond_1b
    const/4 v4, 0x2

    iget v6, v5, Lhkm;->b:I

    if-ne v4, v6, :cond_2

    .line 8143
    iget-object v6, v0, Lhel;->d:Landroid/widget/ImageView;

    iget v4, v5, Lhkm;->c:I

    if-lez v4, :cond_1c

    const/4 v4, 0x0

    :goto_b
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8144
    iget-object v6, v0, Lhel;->e:Landroid/widget/ImageView;

    iget v4, v5, Lhkm;->c:I

    const/4 v7, 0x2

    if-lt v4, v7, :cond_1d

    const/4 v4, 0x0

    :goto_c
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8145
    iget-object v6, v0, Lhel;->f:Landroid/widget/ImageView;

    iget v4, v5, Lhkm;->c:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_1e

    const/4 v4, 0x0

    :goto_d
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 8143
    :cond_1c
    const/16 v4, 0x8

    goto :goto_b

    .line 8144
    :cond_1d
    const/16 v4, 0x8

    goto :goto_c

    .line 8145
    :cond_1e
    const/16 v4, 0x8

    goto :goto_d
.end method
