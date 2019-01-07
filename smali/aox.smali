.class public final Laox;
.super Ljava/lang/Object;
.source "CalendarDayViewAdapter.java"

# interfaces
.implements Lcsa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laox$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lckr;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/calendar/data/object/HOLIDAY_MODE;",
            ">;"
        }
    .end annotation
.end field

.field private d:Laox$a;

.field private e:Ljava/util/Calendar;

.field private f:Z

.field private g:Laoy$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLaoy$a;Laox$a;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isWeek"    # Z
    .param p3, "dayEventDelegate"    # Laoy$a;
    .param p4, "onSelectedDayChangeListener"    # Laox$a;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laox;->b:Ljava/util/Map;

    .line 37
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Laox;->e:Ljava/util/Calendar;

    .line 46
    iput-object p1, p0, Laox;->a:Landroid/content/Context;

    .line 47
    iput-boolean p2, p0, Laox;->f:Z

    .line 48
    iput-object p3, p0, Laox;->g:Laoy$a;

    .line 49
    iput-object p4, p0, Laox;->d:Laox$a;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laox;->c:Ljava/util/HashMap;

    .line 51
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;ILckq;Lckq;Z)Landroid/view/View;
    .locals 20
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parentView"    # Landroid/view/ViewGroup;
    .param p3, "currentMonth"    # I
    .param p4, "bean"    # Lckq;
    .param p5, "selectedBean"    # Lckq;
    .param p6, "isCurrentPage"    # Z

    .prologue
    .line 63
    if-nez p1, :cond_1

    .line 64
    move-object/from16 v0, p0

    iget-object v2, v0, Laox;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Laow$e;->calendar_item_day:I

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 65
    new-instance v10, Laoy;

    move-object/from16 v0, p0

    iget-object v2, v0, Laox;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Laox;->g:Laoy$a;

    move-object/from16 v0, p1

    invoke-direct {v10, v2, v0, v3}, Laoy;-><init>(Landroid/content/Context;Landroid/view/View;Laoy$a;)V

    .line 66
    .local v10, "calendarDayViewHolder":Laoy;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    :goto_0
    if-nez p4, :cond_2

    .line 85
    :cond_0
    :goto_1
    return-object p1

    .line 68
    .end local v10    # "calendarDayViewHolder":Laoy;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoy;

    .restart local v10    # "calendarDayViewHolder":Laoy;
    goto :goto_0

    .line 1094
    :cond_2
    const/4 v13, 0x0

    .line 1095
    if-eqz p4, :cond_3

    .line 1096
    move-object/from16 v0, p0

    iget-object v2, v0, Laox;->e:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1097
    move-object/from16 v0, p0

    iget-object v2, v0, Laox;->e:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2050
    move-object/from16 v0, p4

    iget v3, v0, Lckq;->a:I

    .line 1097
    if-ne v2, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Laox;->e:Ljava/util/Calendar;

    const/4 v3, 0x2

    .line 1098
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2054
    move-object/from16 v0, p4

    iget v3, v0, Lckq;->b:I

    .line 1098
    if-ne v2, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Laox;->e:Ljava/util/Calendar;

    const/4 v3, 0x5

    .line 1099
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2058
    move-object/from16 v0, p4

    iget v3, v0, Lckq;->c:I

    .line 1099
    if-ne v2, v3, :cond_d

    const/4 v2, 0x1

    :goto_2
    move v13, v2

    .line 76
    .local v13, "isToday":Z
    :cond_3
    invoke-static/range {p4 .. p5}, Lcqd;->a(Lckq;Lckq;)Z

    move-result v12

    .line 77
    .local v12, "isSelected":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Laox;->d:Laox$a;

    if-eqz v2, :cond_4

    if-eqz v12, :cond_4

    if-eqz p6, :cond_4

    .line 80
    move-object/from16 v0, p0

    iget-object v2, v0, Laox;->d:Laox$a;

    invoke-virtual/range {p4 .. p4}, Lckq;->a()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Laox$a;->a(J)V

    .line 2105
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Laox;->b:Ljava/util/Map;

    .line 3050
    move-object/from16 v0, p4

    iget v3, v0, Lckq;->a:I

    .line 2106
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lckr;

    .line 2107
    if-nez v2, :cond_e

    .line 2108
    sget-object v11, Lcom/alibaba/android/calendar/data/object/HOLIDAY_MODE;->NONE:Lcom/alibaba/android/calendar/data/object/HOLIDAY_MODE;

    .line 84
    .local v11, "holidayMode":Lcom/alibaba/android/calendar/data/object/HOLIDAY_MODE;
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Laox;->f:Z

    .line 7070
    if-eqz p4, :cond_6

    .line 7074
    iget-object v2, v10, Laoy;->c:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 8054
    move-object/from16 v0, p4

    iget v2, v0, Lckq;->b:I

    .line 7078
    move/from16 v0, p3

    if-ne v0, v2, :cond_14

    const/4 v2, 0x1

    .line 7079
    :goto_4
    iget-object v3, v10, Laoy;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 7080
    if-eqz v13, :cond_16

    .line 7081
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 7082
    iget-object v4, v10, Laoy;->c:Landroid/widget/TextView;

    invoke-static {}, Lcms;->c()Z

    move-result v3

    if-eqz v3, :cond_15

    sget v3, Laow$f;->dt_calendar_home_cell_today_title:I

    .line 7083
    invoke-static {v3}, Leda;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 7082
    :goto_5
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7089
    :goto_6
    iget-object v3, v10, Laoy;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 7090
    iget-object v3, v10, Laoy;->c:Landroid/widget/TextView;

    if-nez v15, :cond_5

    if-eqz v2, :cond_17

    :cond_5
    const/4 v2, 0x1

    :goto_7
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 7092
    iget-object v3, v10, Laoy;->b:Landroid/view/View;

    if-eqz v13, :cond_18

    sget v2, Laow$c;->calendar_bg_calendar_item_today:I

    :goto_8
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 9183
    :cond_6
    if-eqz p4, :cond_7

    .line 9187
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 9188
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lckq;->b(Ljava/util/Calendar;)V

    .line 9189
    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 9190
    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 9191
    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 9192
    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 9193
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 9195
    iget-object v4, v10, Laoy;->g:Laoy$a;

    invoke-interface {v4, v2, v3}, Laoy$a;->a(J)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 9196
    iget-object v2, v10, Laoy;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 9197
    iget-object v3, v10, Laoy;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v13, :cond_1a

    sget v2, Laow$a;->ui_common_white_icon_bg_color:I

    :goto_9
    invoke-static {v2}, Leda;->b(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 10098
    :cond_7
    :goto_a
    if-eqz p4, :cond_9

    .line 10102
    iget-object v2, v10, Laoy;->d:Landroid/widget/TextView;

    if-eqz v2, :cond_9

    .line 10106
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->g()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 10107
    invoke-static {}, Lcms;->c()Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-static {}, Lcms;->f()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 10108
    :cond_8
    iget-object v2, v10, Laoy;->d:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10136
    :cond_9
    :goto_b
    if-eqz p4, :cond_0

    .line 10140
    iget-object v2, v10, Laoy;->e:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 11054
    move-object/from16 v0, p4

    iget v2, v0, Lckq;->b:I

    .line 10144
    move/from16 v0, p3

    if-ne v0, v2, :cond_21

    const/4 v2, 0x1

    move v14, v2

    .line 10146
    :goto_c
    invoke-static {}, Lcku;->a()Lcku;

    move-result-object v16

    .line 12038
    if-nez p4, :cond_22

    .line 12039
    const/4 v2, 0x0

    .line 10148
    :cond_a
    :goto_d
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    .line 18240
    iget-object v4, v3, Lccr;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-nez v4, :cond_25

    .line 18241
    const/4 v3, 0x0

    .line 10148
    :goto_e
    if-nez v3, :cond_2b

    .line 10151
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    .line 18247
    iget-object v4, v3, Lccr;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-nez v4, :cond_26

    .line 18248
    const/4 v3, 0x0

    .line 10151
    :goto_f
    if-nez v3, :cond_2b

    .line 10154
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->g()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 10157
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->g()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-static {}, Lcms;->c()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-static {}, Lcms;->f()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 19039
    :cond_b
    iget-object v3, v2, Lcks;->a:Ljava/lang/String;

    .line 10158
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 10160
    iget-object v3, v10, Laoy;->e:Landroid/widget/TextView;

    .line 20039
    iget-object v2, v2, Lcks;->a:Ljava/lang/String;

    .line 10160
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10177
    :goto_10
    iget-object v2, v10, Laoy;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 10178
    iget-object v2, v10, Laoy;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 10179
    iget-object v3, v10, Laoy;->e:Landroid/widget/TextView;

    if-nez v15, :cond_c

    if-eqz v14, :cond_2c

    :cond_c
    const/4 v2, 0x1

    :goto_11
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setActivated(Z)V

    goto/16 :goto_1

    .line 1099
    .end local v11    # "holidayMode":Lcom/alibaba/android/calendar/data/object/HOLIDAY_MODE;
    .end local v12    # "isSelected":Z
    .end local v13    # "isToday":Z
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 4054
    .restart local v12    # "isSelected":Z
    .restart local v13    # "isToday":Z
    :cond_e
    move-object/from16 v0, p4

    iget v3, v0, Lckq;->b:I

    .line 3131
    add-int/lit8 v3, v3, 0x1

    .line 4058
    move-object/from16 v0, p4

    iget v4, v0, Lckq;->c:I

    .line 3133
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    .line 3134
    const/16 v6, 0xa

    if-ge v3, v6, :cond_f

    .line 3135
    const-string/jumbo v6, "0"

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3137
    :cond_f
    invoke-virtual {v5, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v6, "/"

    invoke-virtual {v3, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3138
    const/16 v3, 0xa

    if-ge v4, v3, :cond_10

    .line 3139
    const-string/jumbo v3, "0"

    invoke-virtual {v5, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3141
    :cond_10
    invoke-virtual {v5, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3142
    invoke-virtual {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2112
    move-object/from16 v0, p0

    iget-object v3, v0, Laox;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/calendar/data/object/HOLIDAY_MODE;

    .line 2113
    if-eqz v3, :cond_11

    move-object v11, v3

    .line 2114
    goto/16 :goto_3

    .line 5042
    :cond_11
    iget-object v5, v2, Lckr;->b:Ljava/util/ArrayList;

    .line 2116
    if-eqz v5, :cond_13

    .line 6042
    iget-object v5, v2, Lckr;->b:Ljava/util/ArrayList;

    .line 2117
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2118
    sget-object v3, Lcom/alibaba/android/calendar/data/object/HOLIDAY_MODE;->WORK:Lcom/alibaba/android/calendar/data/object/HOLIDAY_MODE;

    move-object v2, v3

    .line 2123
    :goto_12
    if-nez v2, :cond_12

    .line 2124
    sget-object v2, Lcom/alibaba/android/calendar/data/object/HOLIDAY_MODE;->NONE:Lcom/alibaba/android/calendar/data/object/HOLIDAY_MODE;

    .line 2126
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Laox;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v2

    .line 2127
    goto/16 :goto_3

    .line 6046
    :cond_13
    iget-object v5, v2, Lckr;->c:Ljava/util/ArrayList;

    .line 2119
    if-eqz v5, :cond_2d

    .line 7046
    iget-object v2, v2, Lckr;->c:Ljava/util/ArrayList;

    .line 2120
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 2121
    sget-object v3, Lcom/alibaba/android/calendar/data/object/HOLIDAY_MODE;->REST:Lcom/alibaba/android/calendar/data/object/HOLIDAY_MODE;

    move-object v2, v3

    goto :goto_12

    .line 7078
    .restart local v11    # "holidayMode":Lcom/alibaba/android/calendar/data/object/HOLIDAY_MODE;
    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 8058
    :cond_15
    move-object/from16 v0, p4

    iget v3, v0, Lckq;->c:I

    .line 7084
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    .line 7086
    :cond_16
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 7087
    iget-object v3, v10, Laoy;->c:Landroid/widget/TextView;

    .line 9058
    move-object/from16 v0, p4

    iget v4, v0, Lckq;->c:I

    .line 7087
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 7090
    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 7092
    :cond_18
    if-eqz v12, :cond_19

    sget v2, Laow$c;->calendar_bg_calendar_item_selected:I

    goto/16 :goto_8

    :cond_19
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 9197
    :cond_1a
    sget v2, Laow$a;->ui_common_level4_text_color:I

    goto/16 :goto_9

    .line 9201
    :cond_1b
    iget-object v2, v10, Laoy;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto/16 :goto_a

    .line 10111
    :cond_1c
    sget-object v2, Lcom/alibaba/android/calendar/data/object/HOLIDAY_MODE;->WORK:Lcom/alibaba/android/calendar/data/object/HOLIDAY_MODE;

    if-ne v11, v2, :cond_1d

    .line 10112
    invoke-virtual {v11}, Lcom/alibaba/android/calendar/data/object/HOLIDAY_MODE;->getDesId()I

    move-result v2

    if-eqz v2, :cond_1e

    .line 10115
    iget-object v2, v10, Laoy;->d:Landroid/widget/TextView;

    invoke-virtual {v11}, Lcom/alibaba/android/calendar/data/object/HOLIDAY_MODE;->getDesId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 10126
    :goto_13
    if-eqz v13, :cond_1f

    .line 10127
    iget-object v2, v10, Laoy;->d:Landroid/widget/TextView;

    iget-object v3, v10, Laoy;->a:Landroid/content/Context;

    sget v4, Laow$a;->ui_common_level1_white_text_color:I

    invoke-static {v3, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_b

    .line 10117
    :cond_1d
    sget-object v2, Lcom/alibaba/android/calendar/data/object/HOLIDAY_MODE;->REST:Lcom/alibaba/android/calendar/data/object/HOLIDAY_MODE;

    if-ne v11, v2, :cond_1e

    .line 10118
    invoke-virtual {v11}, Lcom/alibaba/android/calendar/data/object/HOLIDAY_MODE;->getDesId()I

    move-result v2

    if-eqz v2, :cond_1e

    .line 10121
    iget-object v2, v10, Laoy;->d:Landroid/widget/TextView;

    invoke-virtual {v11}, Lcom/alibaba/android/calendar/data/object/HOLIDAY_MODE;->getDesId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_13

    .line 10124
    :cond_1e
    iget-object v2, v10, Laoy;->d:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 10128
    :cond_1f
    sget-object v2, Lcom/alibaba/android/calendar/data/object/HOLIDAY_MODE;->WORK:Lcom/alibaba/android/calendar/data/object/HOLIDAY_MODE;

    if-ne v11, v2, :cond_20

    .line 10129
    iget-object v2, v10, Laoy;->d:Landroid/widget/TextView;

    iget-object v3, v10, Laoy;->a:Landroid/content/Context;

    sget v4, Laow$a;->uidic_global_color_c11_3:I

    invoke-static {v3, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_b

    .line 10130
    :cond_20
    sget-object v2, Lcom/alibaba/android/calendar/data/object/HOLIDAY_MODE;->REST:Lcom/alibaba/android/calendar/data/object/HOLIDAY_MODE;

    if-ne v11, v2, :cond_9

    .line 10131
    iget-object v2, v10, Laoy;->d:Landroid/widget/TextView;

    iget-object v3, v10, Laoy;->a:Landroid/content/Context;

    sget v4, Laow$a;->uidic_global_color_c11_1:I

    invoke-static {v3, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_b

    .line 10144
    :cond_21
    const/4 v2, 0x0

    move v14, v2

    goto/16 :goto_c

    .line 12041
    :cond_22
    move-object/from16 v0, v16

    iget-object v2, v0, Lcku;->b:Lckt;

    if-eqz v2, :cond_23

    move-object/from16 v0, v16

    iget-object v2, v0, Lcku;->a:Ljava/lang/String;

    invoke-static {}, Lcms;->n()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 12042
    :cond_23
    invoke-static {}, Lcms;->n()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcku;->a:Ljava/lang/String;

    .line 12043
    new-instance v2, Lckt;

    invoke-direct {v2}, Lckt;-><init>()V

    move-object/from16 v0, v16

    iput-object v2, v0, Lcku;->b:Lckt;

    .line 12045
    :cond_24
    move-object/from16 v0, v16

    iget-object v2, v0, Lcku;->b:Lckt;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lckt;->a(Lckq;)Lcks;

    move-result-object v2

    .line 12046
    if-nez v2, :cond_a

    .line 13054
    move-object/from16 v0, p4

    iget v2, v0, Lckq;->b:I

    .line 13058
    move-object/from16 v0, p4

    iget v3, v0, Lckq;->c:I

    .line 12049
    invoke-static {v2, v3}, Lcqf;->a(II)Ljava/lang/String;

    move-result-object v3

    .line 14054
    move-object/from16 v0, p4

    iget v2, v0, Lckq;->b:I

    .line 14058
    move-object/from16 v0, p4

    iget v4, v0, Lckq;->c:I

    .line 12050
    invoke-static {v2, v4}, Lcqf;->b(II)Ljava/lang/String;

    move-result-object v4

    .line 15054
    move-object/from16 v0, p4

    iget v2, v0, Lckq;->b:I

    .line 15058
    move-object/from16 v0, p4

    iget v5, v0, Lckq;->c:I

    .line 12051
    invoke-static {v2, v5}, Lcqf;->c(II)Ljava/lang/String;

    move-result-object v5

    .line 16054
    move-object/from16 v0, p4

    iget v2, v0, Lckq;->b:I

    .line 16058
    move-object/from16 v0, p4

    iget v6, v0, Lckq;->c:I

    .line 12052
    invoke-static {v2, v6}, Lcqf;->d(II)Ljava/lang/String;

    move-result-object v6

    .line 17050
    move-object/from16 v0, p4

    iget v2, v0, Lckq;->a:I

    .line 17054
    move-object/from16 v0, p4

    iget v7, v0, Lckq;->b:I

    .line 17058
    move-object/from16 v0, p4

    iget v8, v0, Lckq;->c:I

    .line 12053
    invoke-static {v2, v7, v8}, Lcom/alibaba/android/dingtalkbase/utils/calendar/SolarTermUtil;->a(III)Ljava/lang/String;

    move-result-object v7

    .line 18050
    move-object/from16 v0, p4

    iget v2, v0, Lckq;->a:I

    .line 18054
    move-object/from16 v0, p4

    iget v8, v0, Lckq;->b:I

    .line 18058
    move-object/from16 v0, p4

    iget v9, v0, Lckq;->c:I

    .line 12054
    invoke-static {v2, v8, v9}, Lcqg;->a(III)[J

    move-result-object v2

    .line 12055
    const/4 v8, 0x1

    aget-wide v8, v2, v8

    long-to-int v8, v8

    const/4 v9, 0x2

    aget-wide v18, v2, v9

    move-wide/from16 v0, v18

    long-to-int v9, v0

    invoke-static {v8, v9}, Lcqg;->a(II)Ljava/lang/String;

    move-result-object v8

    .line 12056
    const/4 v9, 0x0

    aget-wide v18, v2, v9

    move-wide/from16 v0, v18

    long-to-int v9, v0

    const/16 v17, 0x1

    aget-wide v18, v2, v17

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    const/16 v18, 0x2

    aget-wide v18, v2, v18

    move-wide/from16 v0, v18

    long-to-int v2, v0

    move/from16 v0, v17

    invoke-static {v9, v0, v2}, Lcqf;->a(III)Ljava/lang/String;

    move-result-object v9

    .line 12057
    new-instance v2, Lcks;

    invoke-direct/range {v2 .. v9}, Lcks;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12064
    move-object/from16 v0, v16

    iget-object v3, v0, Lcku;->b:Lckt;

    move-object/from16 v0, p4

    invoke-virtual {v3, v0, v2}, Lckt;->a(Lckq;Lcks;)V

    goto/16 :goto_d

    .line 18243
    :cond_25
    iget-object v3, v3, Lccr;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    const-string/jumbo v4, "91"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    goto/16 :goto_e

    .line 18250
    :cond_26
    iget-object v3, v3, Lccr;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    const-string/jumbo v4, "60"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    goto/16 :goto_f

    .line 20059
    :cond_27
    iget-object v3, v2, Lcks;->d:Ljava/lang/String;

    .line 10161
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 10163
    iget-object v3, v10, Laoy;->e:Landroid/widget/TextView;

    .line 21059
    iget-object v2, v2, Lcks;->d:Ljava/lang/String;

    .line 10163
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 22051
    :cond_28
    iget-object v3, v2, Lcks;->b:Ljava/lang/String;

    .line 10164
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 10166
    iget-object v3, v10, Laoy;->e:Landroid/widget/TextView;

    .line 23051
    iget-object v2, v2, Lcks;->b:Ljava/lang/String;

    .line 10166
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 23055
    :cond_29
    iget-object v3, v2, Lcks;->c:Ljava/lang/String;

    .line 10167
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 10169
    iget-object v3, v10, Laoy;->e:Landroid/widget/TextView;

    .line 24055
    iget-object v2, v2, Lcks;->c:Ljava/lang/String;

    .line 10169
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 10171
    :cond_2a
    iget-object v2, v10, Laoy;->e:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 10174
    :cond_2b
    iget-object v2, v10, Laoy;->e:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 10179
    :cond_2c
    const/4 v2, 0x0

    goto/16 :goto_11

    .end local v11    # "holidayMode":Lcom/alibaba/android/calendar/data/object/HOLIDAY_MODE;
    :cond_2d
    move-object v2, v3

    goto/16 :goto_12
.end method

.method public final a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lckr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "yearHolidayArrangementObjectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lckr;>;"
    iget-object v0, p0, Laox;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 55
    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Laox;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 58
    :cond_0
    return-void
.end method
