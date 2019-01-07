.class final Lapw$10$1$1;
.super Ljava/lang/Object;
.source "CalendarDataCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapw$10$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lasc;

.field final synthetic b:Lapw$10$1;


# direct methods
.method constructor <init>(Lapw$10$1;Lasc;)V
    .locals 0
    .param p1, "this$2"    # Lapw$10$1;

    .prologue
    .line 610
    iput-object p1, p0, Lapw$10$1$1;->b:Lapw$10$1;

    iput-object p2, p0, Lapw$10$1$1;->a:Lasc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .prologue
    .line 613
    move-object/from16 v0, p0

    iget-object v2, v0, Lapw$10$1$1;->b:Lapw$10$1;

    iget-object v2, v2, Lapw$10$1;->a:Lapw$10;

    iget-object v8, v2, Lapw$10;->a:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;

    move-object/from16 v0, p0

    iget-object v9, v0, Lapw$10$1$1;->a:Lasc;

    .line 1018
    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    .line 1019
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[CalendarWindowUtil] calendarAlertObjectId :"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 1063
    iget-wide v4, v8, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->a:J

    .line 1019
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", calendarObjectId :"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 1020
    invoke-virtual {v9}, Lasc;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1019
    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 1022
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[CalendarWindowUtil] isFloatEnable: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lawa;->a()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 1023
    invoke-static {}, Lawa;->a()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 2023
    if-eqz v8, :cond_1

    if-nez v9, :cond_5

    .line 2024
    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[CalendarFloatWindowUtil] showCalendarAlertPopupWindow calendarAlertObject is null or calendarObject is null"

    aput-object v4, v2, v3

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 615
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lapw$10$1$1;->b:Lapw$10$1;

    iget-object v2, v2, Lapw$10$1;->a:Lapw$10;

    iget-boolean v2, v2, Lapw$10;->b:Z

    if-eqz v2, :cond_4

    .line 616
    invoke-static {}, Laul;->a()Laul;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lapw$10$1$1;->b:Lapw$10$1;

    iget-object v3, v3, Lapw$10$1;->a:Lapw$10;

    iget-object v4, v3, Lapw$10;->a:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;

    move-object/from16 v0, p0

    iget-object v5, v0, Lapw$10$1$1;->a:Lasc;

    .line 40072
    if-eqz v4, :cond_3

    if-nez v5, :cond_2f

    .line 40073
    :cond_3
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[CalendarNotificationManager] showNotificationIfBackground calendarAlertObject is null or calendarObject is null"

    aput-object v4, v2, v3

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 40143
    :cond_4
    :goto_1
    return-void

    .line 2028
    :cond_5
    new-instance v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;-><init>(Landroid/content/Context;)V

    .line 2029
    new-instance v10, Lcjs$a;

    const/16 v3, 0x9

    .line 3063
    iget-wide v4, v8, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->a:J

    .line 2029
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v3, v4, v2}, Lcjs$a;-><init>(ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;)V

    .line 2030
    new-instance v2, Lavp$1;

    invoke-direct {v2, v8, v9}, Lavp$1;-><init>(Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;Lasc;)V

    .line 3081
    iput-object v2, v10, Lcjs$a;->a:Lcjs$b;

    .line 4051
    if-nez v8, :cond_8

    .line 4052
    const/4 v2, 0x0

    .line 35086
    :cond_6
    :goto_2
    iput-object v2, v10, Lcjs$a;->b:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    .line 2058
    invoke-static {v9}, Lavs;->b(Lasc;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2059
    const/4 v2, 0x1

    invoke-static {v2}, Lavw;->b(Z)V

    .line 2062
    :cond_7
    invoke-static {}, Lcjq;->a()Lcjq;

    move-result-object v2

    invoke-virtual {v10}, Lcjs$a;->a()Lcjs;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcjq;->a(Lcjs;)V

    goto :goto_0

    .line 4055
    :cond_8
    new-instance v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;-><init>()V

    .line 5075
    iget v3, v8, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->e:I

    .line 4056
    sget-object v4, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;->CALENDAR:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;

    invoke-virtual {v4}, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_16

    .line 4057
    invoke-static {v9}, Lavs;->b(Lasc;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 4058
    sget v3, Laow$f;->icon_remind_fill:I

    sget v4, Laow$a;->ui_common_warming_text_color:I

    sget v5, Laow$f;->dt_calendar_journal_alert_title:I

    sget v6, Laow$a;->ui_common_warming_text_color:I

    .line 4063
    invoke-static {}, Lavq;->b()Z

    move-result v7

    if-nez v7, :cond_a

    const/4 v7, 0x1

    .line 4058
    :goto_3
    invoke-static/range {v2 .. v7}, Lawb;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;IIIIZ)V

    .line 5348
    if-eqz v8, :cond_9

    if-nez v9, :cond_b

    .line 9167
    :cond_9
    :goto_4
    if-eqz v8, :cond_6

    .line 9170
    new-instance v3, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;-><init>()V

    .line 9171
    invoke-static {v3}, Lawb;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v4

    .line 10051
    iput-object v4, v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;->c:Lcrm;

    .line 9172
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 10168
    iput-object v4, v3, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;->a:Ljava/util/List;

    .line 9175
    invoke-static {}, Lawb;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 9177
    new-instance v5, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;-><init>()V

    .line 9178
    new-instance v6, Landroid/text/SpannableString;

    sget v7, Laow$f;->dt_calendar_journal_write_right_now:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 10191
    iput-object v6, v5, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 9179
    sget-object v6, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;->BLUE_BUTTON:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 10207
    iput-object v6, v5, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 9180
    new-instance v6, Lawb$4;

    invoke-direct {v6, v8}, Lawb$4;-><init>(Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;)V

    .line 11199
    iput-object v6, v5, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 9188
    new-instance v6, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;

    invoke-direct {v6}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;-><init>()V

    .line 9189
    new-instance v7, Landroid/text/SpannableString;

    sget v11, Laow$f;->dt_calendar_journal_write_later:I

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 12191
    iput-object v7, v6, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 9190
    sget-object v7, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;->WHITE_BUTTON:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 12207
    iput-object v7, v6, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 9191
    new-instance v7, Lawb$5;

    invoke-direct {v7, v8, v3}, Lawb$5;-><init>(Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;Landroid/content/res/Resources;)V

    .line 13199
    iput-object v7, v6, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 9202
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9203
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 4063
    :cond_a
    const/4 v7, 0x0

    goto :goto_3

    .line 5351
    :cond_b
    new-instance v4, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;-><init>()V

    .line 5352
    invoke-static {v4}, Lawb;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v3

    .line 6043
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;->b:Lcrm;

    .line 5354
    const/4 v3, 0x0

    .line 6091
    iget-object v5, v8, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->i:Ljava/lang/String;

    .line 5356
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 7091
    iget-object v3, v8, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->i:Ljava/lang/String;

    .line 5359
    :cond_c
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 5360
    invoke-virtual {v9}, Lasc;->a()Lary;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 5361
    invoke-virtual {v9}, Lasc;->a()Lary;

    move-result-object v5

    .line 8052
    iget-object v5, v5, Lary;->c:Ljava/lang/String;

    .line 5361
    if-eqz v5, :cond_d

    .line 5362
    invoke-virtual {v9}, Lasc;->a()Lary;

    move-result-object v3

    .line 9052
    iget-object v3, v3, Lary;->c:Ljava/lang/String;

    .line 5364
    :cond_d
    if-nez v3, :cond_e

    .line 5365
    const-string/jumbo v3, ""

    .line 5367
    :cond_e
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 9131
    iput-object v5, v4, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->b:Landroid/text/SpannableString;

    .line 5369
    new-instance v3, Lawb$11;

    invoke-direct {v3, v8}, Lawb$11;-><init>(Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;)V

    .line 9155
    iput-object v3, v4, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->e:Landroid/view/View$OnClickListener;

    goto/16 :goto_4

    .line 14125
    :cond_f
    if-eqz v8, :cond_11

    .line 14128
    new-instance v3, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;-><init>()V

    .line 14129
    invoke-static {v3}, Lawb;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v4

    .line 15035
    iput-object v4, v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;->a:Lcrm;

    .line 15083
    iget-object v4, v8, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->g:Ljava/lang/String;

    .line 14130
    if-eqz v4, :cond_10

    .line 16083
    iget-object v4, v8, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->g:Ljava/lang/String;

    .line 17067
    iput-object v4, v3, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->a:Ljava/lang/String;

    .line 17079
    :cond_10
    iget-object v4, v8, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->f:Ljava/lang/String;

    .line 14133
    if-eqz v4, :cond_11

    .line 14134
    new-instance v4, Landroid/text/SpannableString;

    .line 18079
    iget-object v5, v8, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->f:Ljava/lang/String;

    .line 14134
    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 18091
    iput-object v4, v3, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->d:Landroid/text/SpannableString;

    .line 18441
    :cond_11
    if-eqz v8, :cond_14

    .line 18444
    new-instance v3, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;-><init>()V

    .line 18445
    invoke-static {v3}, Lawb;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v4

    .line 19043
    iput-object v4, v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;->b:Lcrm;

    .line 19087
    iget-object v4, v8, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->h:Ljava/lang/String;

    .line 18446
    if-eqz v4, :cond_12

    .line 18447
    new-instance v4, Landroid/text/SpannableString;

    .line 20087
    iget-object v5, v8, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->h:Ljava/lang/String;

    .line 18447
    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 20131
    iput-object v4, v3, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->b:Landroid/text/SpannableString;

    .line 21091
    :cond_12
    iget-object v4, v8, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->i:Ljava/lang/String;

    .line 18449
    if-eqz v4, :cond_13

    .line 18450
    new-instance v4, Landroid/text/SpannableString;

    .line 22091
    iget-object v5, v8, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->i:Ljava/lang/String;

    .line 18450
    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 22139
    iput-object v4, v3, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->c:Landroid/text/SpannableString;

    .line 18453
    :cond_13
    new-instance v4, Lawb$3;

    invoke-direct {v4, v8}, Lawb$3;-><init>(Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;)V

    .line 22155
    iput-object v4, v3, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->e:Landroid/view/View$OnClickListener;

    .line 22208
    :cond_14
    if-eqz v8, :cond_6

    .line 22211
    new-instance v3, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;-><init>()V

    .line 22212
    invoke-static {v3}, Lawb;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v4

    .line 23051
    iput-object v4, v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;->c:Lcrm;

    .line 22213
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 23168
    iput-object v4, v3, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;->a:Ljava/util/List;

    .line 22216
    new-instance v3, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;-><init>()V

    .line 24095
    iget-object v5, v8, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->j:Ljava/lang/String;

    .line 22217
    if-eqz v5, :cond_15

    .line 22218
    new-instance v5, Landroid/text/SpannableString;

    .line 25095
    iget-object v6, v8, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->j:Ljava/lang/String;

    .line 22218
    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 25191
    iput-object v5, v3, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 22220
    :cond_15
    sget-object v5, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;->LINK:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 25207
    iput-object v5, v3, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 22221
    new-instance v5, Lawb$6;

    invoke-direct {v5, v8}, Lawb$6;-><init>(Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;)V

    .line 26199
    iput-object v5, v3, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 22229
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 27075
    :cond_16
    iget v3, v8, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->e:I

    .line 4071
    sget-object v4, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;->CALENDAR_REMIND:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;

    invoke-virtual {v4}, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_2a

    .line 4072
    invoke-static {v9}, Lavs;->d(Lasc;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 4073
    sget v3, Laow$f;->icon_remind_fill:I

    sget v4, Laow$a;->ui_common_theme_text_color:I

    sget v5, Laow$f;->dt_common_remind:I

    sget v6, Laow$a;->ui_common_theme_text_color:I

    .line 4078
    invoke-static {}, Lavq;->b()Z

    move-result v7

    if-nez v7, :cond_18

    const/4 v7, 0x1

    .line 4073
    :goto_5
    invoke-static/range {v2 .. v7}, Lawb;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;IIIIZ)V

    .line 27316
    if-eqz v8, :cond_17

    if-nez v9, :cond_19

    .line 4080
    :cond_17
    :goto_6
    invoke-static {v2, v8}, Lawb;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;)V

    goto/16 :goto_2

    .line 4078
    :cond_18
    const/4 v7, 0x0

    goto :goto_5

    .line 27319
    :cond_19
    new-instance v4, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;-><init>()V

    .line 27320
    invoke-static {v4}, Lawb;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v3

    .line 28043
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;->b:Lcrm;

    .line 27322
    const/4 v3, 0x0

    .line 27323
    invoke-virtual {v9}, Lasc;->a()Lary;

    move-result-object v5

    if-eqz v5, :cond_1a

    invoke-virtual {v9}, Lasc;->a()Lary;

    move-result-object v5

    .line 28052
    iget-object v5, v5, Lary;->c:Ljava/lang/String;

    .line 27323
    if-eqz v5, :cond_1a

    .line 27324
    invoke-virtual {v9}, Lasc;->a()Lary;

    move-result-object v3

    .line 29052
    iget-object v3, v3, Lary;->c:Ljava/lang/String;

    .line 27326
    :cond_1a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 29091
    iget-object v5, v8, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->i:Ljava/lang/String;

    .line 27326
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 30091
    iget-object v3, v8, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->i:Ljava/lang/String;

    .line 27329
    :cond_1b
    if-nez v3, :cond_1c

    .line 27330
    const-string/jumbo v3, ""

    .line 27332
    :cond_1c
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 30131
    iput-object v5, v4, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->b:Landroid/text/SpannableString;

    .line 27334
    new-instance v3, Lawb$10;

    invoke-direct {v3, v8}, Lawb$10;-><init>(Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;)V

    .line 30155
    iput-object v3, v4, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->e:Landroid/view/View$OnClickListener;

    goto :goto_6

    .line 4082
    :cond_1d
    sget v3, Laow$f;->icon_calendar_fill:I

    sget v4, Laow$a;->ui_common_warming_text_color:I

    sget v5, Laow$f;->dt_calendar_common_alert_title:I

    sget v6, Laow$a;->ui_common_warming_text_color:I

    .line 4087
    invoke-static {}, Lavq;->b()Z

    move-result v7

    if-nez v7, :cond_1f

    const/4 v7, 0x1

    .line 4082
    :goto_7
    invoke-static/range {v2 .. v7}, Lawb;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;IIIIZ)V

    .line 30383
    if-eqz v8, :cond_1e

    if-nez v9, :cond_20

    .line 4089
    :cond_1e
    :goto_8
    invoke-static {v2, v8}, Lawb;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;)V

    goto/16 :goto_2

    .line 4087
    :cond_1f
    const/4 v7, 0x0

    goto :goto_7

    .line 30386
    :cond_20
    new-instance v4, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;-><init>()V

    .line 30387
    invoke-static {v4}, Lawb;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v3

    .line 31043
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;->b:Lcrm;

    .line 30389
    const/4 v3, 0x0

    .line 30390
    invoke-virtual {v9}, Lasc;->a()Lary;

    move-result-object v5

    if-eqz v5, :cond_21

    invoke-virtual {v9}, Lasc;->a()Lary;

    move-result-object v5

    invoke-virtual {v5}, Lary;->a()Lcom/alibaba/android/calendar/data/object/AlarmObject;

    move-result-object v5

    if-eqz v5, :cond_21

    .line 30391
    invoke-virtual {v9}, Lasc;->a()Lary;

    move-result-object v3

    invoke-virtual {v3}, Lary;->a()Lcom/alibaba/android/calendar/data/object/AlarmObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/calendar/data/object/AlarmObject;->getTime()J

    move-result-wide v6

    .line 30392
    const-wide/16 v12, 0x0

    cmp-long v3, v6, v12

    if-gtz v3, :cond_27

    .line 30393
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v5, Laow$f;->dt_ding_alert_right_now:I

    invoke-virtual {v3, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 30406
    :cond_21
    :goto_9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 31087
    iget-object v3, v8, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->h:Ljava/lang/String;

    .line 30409
    :cond_22
    if-nez v3, :cond_23

    .line 30410
    const-string/jumbo v3, ""

    .line 30413
    :cond_23
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 31131
    iput-object v5, v4, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->b:Landroid/text/SpannableString;

    .line 30415
    const/4 v3, 0x0

    .line 30416
    invoke-virtual {v9}, Lasc;->a()Lary;

    move-result-object v5

    if-eqz v5, :cond_24

    invoke-virtual {v9}, Lasc;->a()Lary;

    move-result-object v5

    .line 32052
    iget-object v5, v5, Lary;->c:Ljava/lang/String;

    .line 30416
    if-eqz v5, :cond_24

    .line 30417
    invoke-virtual {v9}, Lasc;->a()Lary;

    move-result-object v3

    .line 33052
    iget-object v3, v3, Lary;->c:Ljava/lang/String;

    .line 30419
    :cond_24
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 33091
    iget-object v5, v8, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->i:Ljava/lang/String;

    .line 30419
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_25

    .line 34091
    iget-object v3, v8, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->i:Ljava/lang/String;

    .line 30422
    :cond_25
    if-nez v3, :cond_26

    .line 30423
    const-string/jumbo v3, ""

    .line 30425
    :cond_26
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 34139
    iput-object v5, v4, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->c:Landroid/text/SpannableString;

    .line 30427
    new-instance v3, Lawb$2;

    invoke-direct {v3, v9}, Lawb$2;-><init>(Lasc;)V

    .line 34155
    iput-object v3, v4, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->e:Landroid/view/View$OnClickListener;

    goto/16 :goto_8

    .line 30395
    :cond_27
    const-wide/16 v12, 0x3c

    div-long v12, v6, v12

    .line 30396
    const-wide/16 v14, 0x18

    div-long v14, v12, v14

    .line 30397
    const-wide/16 v16, 0x0

    cmp-long v3, v14, v16

    if-lez v3, :cond_28

    .line 30398
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v5, Laow$f;->dt_ding_calendar_alert_upcoming_day_at:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 30399
    :cond_28
    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-lez v3, :cond_29

    .line 30400
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v5, Laow$f;->dt_ding_calendar_alert_upcoming_hour_at:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_9

    .line 30402
    :cond_29
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v5, Laow$f;->dt_ding_calendar_alert_upcoming_fmt:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v11, v12

    invoke-virtual {v3, v5, v11}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_9

    .line 4092
    :cond_2a
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 36024
    :cond_2b
    if-eqz v8, :cond_2c

    if-nez v9, :cond_2d

    .line 36025
    :cond_2c
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[CalendarPopupWindowUtil] showCalendarAlertPopupWindow calendarAlertObject is null or calendarObject is null "

    aput-object v4, v2, v3

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 36026
    if-nez v9, :cond_2

    .line 36027
    const-string/jumbo v2, "show calendar alert failed"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "calendar is null"

    invoke-static {v2, v3, v4}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 36032
    :cond_2d
    new-instance v2, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;-><init>()V

    .line 36033
    sget-object v3, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;->CALENDAR_ALERT:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    .line 37033
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->c:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    .line 37063
    iget-wide v4, v8, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->a:J

    .line 36034
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 38045
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->e:Ljava/lang/String;

    .line 39041
    iput-object v8, v2, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->d:Ljava/lang/Object;

    .line 36036
    new-instance v3, Lavt$1;

    invoke-direct {v3, v8, v9}, Lavt$1;-><init>(Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;Lasc;)V

    .line 40037
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;

    .line 36081
    invoke-static {v9}, Lavs;->b(Lasc;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 36082
    const/4 v3, 0x0

    invoke-static {v3}, Lavw;->b(Z)V

    .line 36085
    :cond_2e
    invoke-static {}, Lcmw;->a()Lcmv;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcmv;->a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)V

    goto/16 :goto_0

    .line 40076
    :cond_2f
    iget-boolean v3, v2, Laul;->a:Z

    if-eqz v3, :cond_30

    .line 40077
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[CalendarNotificationManager] showNotificationIfBackground mIsForeground:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-boolean v2, v2, Laul;->a:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 40080
    :cond_30
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 40081
    const/4 v3, 0x0

    .line 40082
    const/4 v2, 0x0

    .line 41075
    iget v7, v4, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->e:I

    .line 40083
    sget-object v8, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;->CALENDAR:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;

    invoke-virtual {v8}, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;->getValue()I

    move-result v8

    if-ne v7, v8, :cond_34

    .line 40084
    invoke-static {v5}, Lavs;->b(Lasc;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 40085
    sget v3, Laow$f;->dt_calendar_journal_alert_title:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 41091
    iget-object v6, v4, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->i:Ljava/lang/String;

    .line 40087
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_31

    .line 42091
    iget-object v2, v4, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->i:Ljava/lang/String;

    .line 40090
    :cond_31
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 40091
    invoke-virtual {v5}, Lasc;->a()Lary;

    move-result-object v6

    if-eqz v6, :cond_32

    .line 40092
    invoke-virtual {v5}, Lasc;->a()Lary;

    move-result-object v6

    .line 43052
    iget-object v6, v6, Lary;->c:Ljava/lang/String;

    .line 40092
    if-eqz v6, :cond_32

    .line 40093
    invoke-virtual {v5}, Lasc;->a()Lary;

    move-result-object v2

    .line 44052
    iget-object v2, v2, Lary;->c:Ljava/lang/String;

    .line 40141
    :cond_32
    :goto_a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 40142
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[CalendarNotificationManager] showNotificationIfBackground title isEmpty."

    aput-object v4, v2, v3

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 44087
    :cond_33
    iget-object v3, v4, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->h:Ljava/lang/String;

    .line 44091
    iget-object v2, v4, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->i:Ljava/lang/String;

    goto :goto_a

    .line 45075
    :cond_34
    iget v7, v4, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->e:I

    .line 40099
    sget-object v8, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;->CALENDAR_REMIND:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;

    invoke-virtual {v8}, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;->getValue()I

    move-result v8

    if-ne v7, v8, :cond_4

    .line 40100
    invoke-static {v5}, Lavs;->d(Lasc;)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 40101
    sget v3, Laow$f;->dt_common_remind:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 40103
    invoke-virtual {v5}, Lasc;->a()Lary;

    move-result-object v6

    if-eqz v6, :cond_35

    invoke-virtual {v5}, Lasc;->a()Lary;

    move-result-object v6

    .line 46052
    iget-object v6, v6, Lary;->c:Ljava/lang/String;

    .line 40103
    if-eqz v6, :cond_35

    .line 40104
    invoke-virtual {v5}, Lasc;->a()Lary;

    move-result-object v2

    .line 47052
    iget-object v2, v2, Lary;->c:Ljava/lang/String;

    .line 40106
    :cond_35
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 47091
    iget-object v5, v4, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->i:Ljava/lang/String;

    .line 40106
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 48091
    iget-object v2, v4, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->i:Ljava/lang/String;

    goto :goto_a

    .line 40110
    :cond_36
    invoke-virtual {v5}, Lasc;->a()Lary;

    move-result-object v6

    if-eqz v6, :cond_37

    invoke-virtual {v5}, Lasc;->a()Lary;

    move-result-object v6

    invoke-virtual {v6}, Lary;->a()Lcom/alibaba/android/calendar/data/object/AlarmObject;

    move-result-object v6

    if-eqz v6, :cond_37

    .line 40111
    invoke-virtual {v5}, Lasc;->a()Lary;

    move-result-object v3

    invoke-virtual {v3}, Lary;->a()Lcom/alibaba/android/calendar/data/object/AlarmObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/calendar/data/object/AlarmObject;->getTime()J

    move-result-wide v6

    .line 40112
    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gtz v3, :cond_3a

    .line 40113
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v6, Laow$f;->dt_ding_alert_right_now:I

    invoke-virtual {v3, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 40126
    :cond_37
    :goto_b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 49087
    iget-object v3, v4, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->h:Ljava/lang/String;

    .line 40131
    :cond_38
    invoke-virtual {v5}, Lasc;->a()Lary;

    move-result-object v6

    if-eqz v6, :cond_39

    invoke-virtual {v5}, Lasc;->a()Lary;

    move-result-object v6

    .line 50052
    iget-object v6, v6, Lary;->c:Ljava/lang/String;

    .line 40131
    if-eqz v6, :cond_39

    .line 40132
    invoke-virtual {v5}, Lasc;->a()Lary;

    move-result-object v2

    .line 50053
    iget-object v2, v2, Lary;->c:Ljava/lang/String;

    .line 40134
    :cond_39
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 50054
    iget-object v5, v4, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->i:Ljava/lang/String;

    .line 40134
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 50055
    iget-object v2, v4, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->i:Ljava/lang/String;

    goto/16 :goto_a

    .line 40115
    :cond_3a
    const-wide/16 v8, 0x3c

    div-long v8, v6, v8

    .line 40116
    const-wide/16 v10, 0x18

    div-long v10, v8, v10

    .line 40117
    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-lez v3, :cond_3b

    .line 40118
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v6, Laow$f;->dt_ding_calendar_alert_upcoming_day_at:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    .line 40119
    :cond_3b
    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-lez v3, :cond_3c

    .line 40120
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v6, Laow$f;->dt_ding_calendar_alert_upcoming_hour_at:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v3, v6, v7}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    .line 40122
    :cond_3c
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v8, Laow$f;->dt_ding_calendar_alert_upcoming_fmt:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v10

    invoke-virtual {v3, v8, v9}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_b

    .line 40145
    :cond_3d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 40146
    const-string/jumbo v2, ""

    .line 40148
    :cond_3e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_3f

    .line 40149
    const/4 v5, 0x0

    const/16 v6, 0x14

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 40151
    :cond_3f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_40

    .line 40152
    const/4 v5, 0x0

    const/16 v6, 0x14

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 40154
    :cond_40
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v5

    .line 50056
    iget-object v4, v4, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->d:Ljava/lang/String;

    .line 40154
    invoke-virtual {v5, v3, v2, v4}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
