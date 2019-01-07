.class public final Lavt$1;
.super Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;
.source "CalendarPopupWindowUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lavt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;

.field final synthetic b:Lasc;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;Lasc;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lavt$1;->a:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;

    iput-object p2, p0, Lavt$1;->b:Lasc;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    .locals 18
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cachedPopupWindow"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    .prologue
    .line 53
    move-object/from16 v0, p2

    instance-of v2, v0, Lcrn;

    if-nez v2, :cond_0

    .line 54
    new-instance p2, Lcrn;

    .end local p2    # "cachedPopupWindow":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcrn;-><init>(Landroid/app/Activity;)V

    .restart local p2    # "cachedPopupWindow":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    :cond_0
    move-object/from16 v2, p2

    .line 57
    check-cast v2, Lcrn;

    .line 3028
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcri;->b:Z

    move-object/from16 v8, p2

    .line 59
    check-cast v8, Lcrn;

    move-object/from16 v0, p0

    iget-object v9, v0, Lavt$1;->a:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;

    move-object/from16 v0, p0

    iget-object v10, v0, Lavt$1;->b:Lasc;

    .line 3049
    if-eqz p1, :cond_1

    if-nez v9, :cond_4

    .line 3050
    :cond_1
    const/4 v2, 0x0

    .line 59
    :cond_2
    :goto_0
    invoke-virtual {v8, v2}, Lcrn;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;)V

    .line 62
    move-object/from16 v0, p0

    iget-object v2, v0, Lavt$1;->b:Lasc;

    invoke-static {v2}, Lavs;->c(Lasc;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 63
    const/4 v2, 0x0

    invoke-static {v2}, Lavw;->d(Z)V

    .line 69
    :cond_3
    :goto_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[CalendarPopupWindowUtil] onShow."

    aput-object v4, v2, v3

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 70
    return-object p2

    .line 3053
    :cond_4
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;-><init>()V

    .line 4075
    iget v3, v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->e:I

    .line 3054
    sget-object v4, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;->CALENDAR:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;

    invoke-virtual {v4}, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_12

    .line 3055
    invoke-static {v10}, Lavs;->b(Lasc;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3056
    sget v3, Laow$f;->icon_remind_fill:I

    sget v4, Laow$a;->ui_common_warming_text_color:I

    sget v5, Laow$f;->dt_calendar_journal_alert_title:I

    sget v6, Laow$a;->ui_common_warming_text_color:I

    .line 3061
    invoke-static {}, Lavq;->b()Z

    move-result v7

    if-nez v7, :cond_6

    const/4 v7, 0x1

    .line 3056
    :goto_2
    invoke-static/range {v2 .. v7}, Lawe;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;IIIIZ)V

    .line 4348
    if-eqz v9, :cond_5

    if-nez v10, :cond_7

    .line 8166
    :cond_5
    :goto_3
    if-eqz v9, :cond_2

    .line 8169
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;-><init>()V

    .line 8170
    invoke-static {v3}, Lawe;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v4

    .line 9048
    iput-object v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;->c:Lcrm;

    .line 8171
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 9173
    iput-object v4, v3, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;->a:Ljava/util/List;

    .line 8174
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 8176
    new-instance v5, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;-><init>()V

    .line 8177
    new-instance v6, Landroid/text/SpannableString;

    sget v7, Laow$f;->dt_calendar_journal_write_right_now:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 9196
    iput-object v6, v5, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 8178
    sget-object v6, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;->BLUE_BUTTON:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    .line 9212
    iput-object v6, v5, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    .line 8179
    new-instance v6, Lawe$4;

    invoke-direct {v6, v9}, Lawe$4;-><init>(Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;)V

    .line 10204
    iput-object v6, v5, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 8187
    new-instance v6, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;

    invoke-direct {v6}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;-><init>()V

    .line 8188
    new-instance v7, Landroid/text/SpannableString;

    sget v10, Laow$f;->dt_calendar_journal_write_later:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 11196
    iput-object v7, v6, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 8189
    sget-object v7, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;->WHITE_BUTTON:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    .line 11212
    iput-object v7, v6, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    .line 8190
    new-instance v7, Lawe$5;

    invoke-direct {v7, v9, v3}, Lawe$5;-><init>(Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;Landroid/content/res/Resources;)V

    .line 12204
    iput-object v7, v6, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 8201
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8202
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3061
    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    .line 4351
    :cond_7
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;-><init>()V

    .line 4352
    invoke-static {v4}, Lawe;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v3

    .line 5040
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;->b:Lcrm;

    .line 4354
    const/4 v3, 0x0

    .line 5091
    iget-object v5, v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->i:Ljava/lang/String;

    .line 4356
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 6091
    iget-object v3, v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->i:Ljava/lang/String;

    .line 4359
    :cond_8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 4360
    invoke-virtual {v10}, Lasc;->a()Lary;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 4361
    invoke-virtual {v10}, Lasc;->a()Lary;

    move-result-object v5

    .line 7052
    iget-object v5, v5, Lary;->c:Ljava/lang/String;

    .line 4361
    if-eqz v5, :cond_9

    .line 4362
    invoke-virtual {v10}, Lasc;->a()Lary;

    move-result-object v3

    .line 8052
    iget-object v3, v3, Lary;->c:Ljava/lang/String;

    .line 4364
    :cond_9
    if-nez v3, :cond_a

    .line 4365
    const-string/jumbo v3, ""

    .line 4367
    :cond_a
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 8136
    iput-object v5, v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->b:Landroid/text/SpannableString;

    .line 4369
    new-instance v3, Lawe$11;

    invoke-direct {v3, v9}, Lawe$11;-><init>(Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;)V

    .line 8160
    iput-object v3, v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->e:Landroid/view/View$OnClickListener;

    goto/16 :goto_3

    .line 13123
    :cond_b
    if-eqz v9, :cond_d

    .line 13126
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;-><init>()V

    .line 13127
    invoke-static {v3}, Lawe;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v4

    .line 14032
    iput-object v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;->a:Lcrm;

    .line 14083
    iget-object v4, v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->g:Ljava/lang/String;

    .line 13128
    if-eqz v4, :cond_c

    .line 15083
    iget-object v4, v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->g:Ljava/lang/String;

    .line 16067
    iput-object v4, v3, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->a:Ljava/lang/String;

    .line 16079
    :cond_c
    iget-object v4, v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->f:Ljava/lang/String;

    .line 13131
    if-eqz v4, :cond_d

    .line 13132
    new-instance v4, Landroid/text/SpannableString;

    .line 17079
    iget-object v5, v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->f:Ljava/lang/String;

    .line 13132
    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 17096
    iput-object v4, v3, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->d:Landroid/text/SpannableString;

    .line 17442
    :cond_d
    if-eqz v9, :cond_10

    .line 17445
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;-><init>()V

    .line 17446
    invoke-static {v3}, Lawe;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v4

    .line 18040
    iput-object v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;->b:Lcrm;

    .line 18087
    iget-object v4, v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->h:Ljava/lang/String;

    .line 17447
    if-eqz v4, :cond_e

    .line 17448
    new-instance v4, Landroid/text/SpannableString;

    .line 19087
    iget-object v5, v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->h:Ljava/lang/String;

    .line 17448
    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 19136
    iput-object v4, v3, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->b:Landroid/text/SpannableString;

    .line 20091
    :cond_e
    iget-object v4, v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->i:Ljava/lang/String;

    .line 17450
    if-eqz v4, :cond_f

    .line 17451
    new-instance v4, Landroid/text/SpannableString;

    .line 21091
    iget-object v5, v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->i:Ljava/lang/String;

    .line 17451
    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 21144
    iput-object v4, v3, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->c:Landroid/text/SpannableString;

    .line 17454
    :cond_f
    new-instance v4, Lawe$3;

    invoke-direct {v4, v9}, Lawe$3;-><init>(Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;)V

    .line 21160
    iput-object v4, v3, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->e:Landroid/view/View$OnClickListener;

    .line 21207
    :cond_10
    if-eqz v9, :cond_2

    .line 21210
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;-><init>()V

    .line 21211
    invoke-static {v3}, Lawe;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v4

    .line 22048
    iput-object v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;->c:Lcrm;

    .line 21212
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 22173
    iput-object v4, v3, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;->a:Ljava/util/List;

    .line 21215
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;-><init>()V

    .line 23095
    iget-object v5, v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->j:Ljava/lang/String;

    .line 21216
    if-eqz v5, :cond_11

    .line 21217
    new-instance v5, Landroid/text/SpannableString;

    .line 24095
    iget-object v6, v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->j:Ljava/lang/String;

    .line 21217
    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 24196
    iput-object v5, v3, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 21219
    :cond_11
    sget-object v5, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;->LINK:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    .line 24212
    iput-object v5, v3, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    .line 21220
    new-instance v5, Lawe$6;

    invoke-direct {v5, v9}, Lawe$6;-><init>(Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;)V

    .line 25204
    iput-object v5, v3, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 21228
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 26075
    :cond_12
    iget v3, v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->e:I

    .line 3069
    sget-object v4, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;->CALENDAR_REMIND:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;

    invoke-virtual {v4}, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_26

    .line 3070
    invoke-static {v10}, Lavs;->d(Lasc;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 3071
    sget v3, Laow$f;->icon_remind_fill:I

    sget v4, Laow$a;->ui_common_theme_text_color:I

    sget v5, Laow$f;->dt_common_remind:I

    sget v6, Laow$a;->ui_common_theme_text_color:I

    .line 3076
    invoke-static {}, Lavq;->b()Z

    move-result v7

    if-nez v7, :cond_14

    const/4 v7, 0x1

    .line 3071
    :goto_4
    invoke-static/range {v2 .. v7}, Lawe;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;IIIIZ)V

    .line 26316
    if-eqz v9, :cond_13

    if-nez v10, :cond_15

    .line 3078
    :cond_13
    :goto_5
    invoke-static {v2, v9}, Lawe;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;)V

    goto/16 :goto_0

    .line 3076
    :cond_14
    const/4 v7, 0x0

    goto :goto_4

    .line 26319
    :cond_15
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;-><init>()V

    .line 26320
    invoke-static {v4}, Lawe;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v3

    .line 27040
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;->b:Lcrm;

    .line 26322
    const/4 v3, 0x0

    .line 26323
    invoke-virtual {v10}, Lasc;->a()Lary;

    move-result-object v5

    if-eqz v5, :cond_16

    invoke-virtual {v10}, Lasc;->a()Lary;

    move-result-object v5

    .line 27052
    iget-object v5, v5, Lary;->c:Ljava/lang/String;

    .line 26323
    if-eqz v5, :cond_16

    .line 26324
    invoke-virtual {v10}, Lasc;->a()Lary;

    move-result-object v3

    .line 28052
    iget-object v3, v3, Lary;->c:Ljava/lang/String;

    .line 26326
    :cond_16
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 28091
    iget-object v5, v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->i:Ljava/lang/String;

    .line 26326
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 29091
    iget-object v3, v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->i:Ljava/lang/String;

    .line 26329
    :cond_17
    if-nez v3, :cond_18

    .line 26330
    const-string/jumbo v3, ""

    .line 26332
    :cond_18
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 29136
    iput-object v5, v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->b:Landroid/text/SpannableString;

    .line 26334
    new-instance v3, Lawe$10;

    invoke-direct {v3, v9}, Lawe$10;-><init>(Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;)V

    .line 29160
    iput-object v3, v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->e:Landroid/view/View$OnClickListener;

    goto :goto_5

    .line 3080
    :cond_19
    sget v3, Laow$f;->icon_calendar_fill:I

    sget v4, Laow$a;->ui_common_warming_text_color:I

    sget v5, Laow$f;->dt_calendar_common_alert_title:I

    sget v6, Laow$a;->ui_common_warming_text_color:I

    .line 3085
    invoke-static {}, Lavq;->b()Z

    move-result v7

    if-nez v7, :cond_1b

    const/4 v7, 0x1

    .line 3080
    :goto_6
    invoke-static/range {v2 .. v7}, Lawe;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;IIIIZ)V

    .line 29384
    if-eqz v9, :cond_1a

    if-nez v10, :cond_1c

    .line 3087
    :cond_1a
    :goto_7
    invoke-static {v2, v9}, Lawe;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;)V

    goto/16 :goto_0

    .line 3085
    :cond_1b
    const/4 v7, 0x0

    goto :goto_6

    .line 29387
    :cond_1c
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;-><init>()V

    .line 29388
    invoke-static {v4}, Lawe;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v3

    .line 30040
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;->b:Lcrm;

    .line 29390
    const/4 v3, 0x0

    .line 29391
    invoke-virtual {v10}, Lasc;->a()Lary;

    move-result-object v5

    if-eqz v5, :cond_1d

    invoke-virtual {v10}, Lasc;->a()Lary;

    move-result-object v5

    invoke-virtual {v5}, Lary;->a()Lcom/alibaba/android/calendar/data/object/AlarmObject;

    move-result-object v5

    if-eqz v5, :cond_1d

    .line 29392
    invoke-virtual {v10}, Lasc;->a()Lary;

    move-result-object v3

    invoke-virtual {v3}, Lary;->a()Lcom/alibaba/android/calendar/data/object/AlarmObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/calendar/data/object/AlarmObject;->getTime()J

    move-result-wide v6

    .line 29393
    const-wide/16 v12, 0x0

    cmp-long v3, v6, v12

    if-gtz v3, :cond_23

    .line 29394
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v5, Laow$f;->dt_ding_alert_right_now:I

    invoke-virtual {v3, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 29407
    :cond_1d
    :goto_8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 30087
    iget-object v3, v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->h:Ljava/lang/String;

    .line 29410
    :cond_1e
    if-nez v3, :cond_1f

    .line 29411
    const-string/jumbo v3, ""

    .line 29414
    :cond_1f
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 30136
    iput-object v5, v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->b:Landroid/text/SpannableString;

    .line 29416
    const/4 v3, 0x0

    .line 29417
    invoke-virtual {v10}, Lasc;->a()Lary;

    move-result-object v5

    if-eqz v5, :cond_20

    invoke-virtual {v10}, Lasc;->a()Lary;

    move-result-object v5

    .line 31052
    iget-object v5, v5, Lary;->c:Ljava/lang/String;

    .line 29417
    if-eqz v5, :cond_20

    .line 29418
    invoke-virtual {v10}, Lasc;->a()Lary;

    move-result-object v3

    .line 32052
    iget-object v3, v3, Lary;->c:Ljava/lang/String;

    .line 29420
    :cond_20
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 32091
    iget-object v5, v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->i:Ljava/lang/String;

    .line 29420
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_21

    .line 33091
    iget-object v3, v9, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->i:Ljava/lang/String;

    .line 29423
    :cond_21
    if-nez v3, :cond_22

    .line 29424
    const-string/jumbo v3, ""

    .line 29426
    :cond_22
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 33144
    iput-object v5, v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->c:Landroid/text/SpannableString;

    .line 29428
    new-instance v3, Lawe$2;

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v10}, Lawe$2;-><init>(Landroid/app/Activity;Lasc;)V

    .line 33160
    iput-object v3, v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->e:Landroid/view/View$OnClickListener;

    goto/16 :goto_7

    .line 29396
    :cond_23
    const-wide/16 v12, 0x3c

    div-long v12, v6, v12

    .line 29397
    const-wide/16 v14, 0x18

    div-long v14, v12, v14

    .line 29398
    const-wide/16 v16, 0x0

    cmp-long v3, v14, v16

    if-lez v3, :cond_24

    .line 29399
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

    goto :goto_8

    .line 29400
    :cond_24
    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-lez v3, :cond_25

    .line 29401
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

    goto/16 :goto_8

    .line 29403
    :cond_25
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

    goto/16 :goto_8

    .line 3090
    :cond_26
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 64
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lavt$1;->b:Lasc;

    invoke-static {v2}, Lavs;->b(Lasc;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 65
    const/4 v2, 0x0

    invoke-static {v2}, Lavw;->c(Z)V

    goto/16 :goto_1

    .line 66
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lavt$1;->b:Lasc;

    invoke-static {v2}, Lavs;->a(Lasc;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 67
    const/4 v2, 0x0

    invoke-static {v2}, Lavw;->e(Z)V

    goto/16 :goto_1
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)V
    .locals 0
    .param p1, "ddPopupWindow"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->dismiss()V

    .line 78
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    invoke-static {}, Laps;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lavt$1;->a:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;

    .line 1063
    iget-wide v4, v4, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->a:J

    .line 44
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 45
    .local v0, "shouldShow":Z
    :goto_0
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "[CalendarFloatWindowUtil] shouldShow:"

    aput-object v4, v3, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", currenteCalendarId: "

    aput-object v2, v3, v1

    const/4 v1, 0x3

    .line 46
    invoke-static {}, Laps;->l()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string/jumbo v2, ", calendarAlertObjectId: "

    aput-object v2, v3, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lavt$1;->a:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;

    .line 2063
    iget-wide v4, v2, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->a:J

    .line 47
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 45
    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    .line 48
    return v0

    .end local v0    # "shouldShow":Z
    :cond_0
    move v0, v2

    .line 44
    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)Z
    .locals 1
    .param p1, "popWindow"    # Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method
