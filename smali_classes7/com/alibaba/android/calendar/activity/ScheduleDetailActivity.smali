.class public Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "ScheduleDetailActivity.java"

# interfaces
.implements Lapr$b;


# instance fields
.field private a:Landroid/widget/ListPopupWindow;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laoz$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lapr$a;

.field private d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/ViewGroup;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;)Lapr$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->c:Lapr$a;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;Landroid/view/View;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 52
    .line 8322
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->a:Landroid/widget/ListPopupWindow;

    if-nez v0, :cond_2

    .line 8323
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->a:Landroid/widget/ListPopupWindow;

    .line 8360
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->a:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_1

    .line 8361
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8362
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->b:Ljava/util/List;

    .line 8369
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8370
    iget-object v2, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->c:Lapr$a;

    invoke-interface {v2}, Lapr$a;->k()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8371
    new-instance v2, Laoz$a;

    sget v3, Laow$f;->dt_alter_schedule:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Laoz$a;-><init>(ILjava/lang/CharSequence;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 8372
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "<font color=\"#F25643\">"

    aput-object v4, v2, v3

    sget v3, Laow$f;->dt_delete_schedule:I

    .line 8373
    invoke-virtual {p0, v3}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string/jumbo v3, "</font>"

    aput-object v3, v2, v6

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8372
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 8375
    new-instance v3, Laoz$a;

    invoke-direct {v3, v6, v2}, Laoz$a;-><init>(ILjava/lang/CharSequence;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 8362
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8363
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->a:Landroid/widget/ListPopupWindow;

    new-instance v1, Laoz;

    iget-object v2, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->b:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Laoz;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8325
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laow$b;->calendar_more_menu_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 8326
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->a:Landroid/widget/ListPopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 8327
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 8328
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->a:Landroid/widget/ListPopupWindow;

    new-instance v1, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity$4;-><init>(Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 8349
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 8352
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8356
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 52
    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;)Landroid/widget/ListPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->a:Landroid/widget/ListPopupWindow;

    return-object v0
.end method


# virtual methods
.method public final H_()V
    .locals 1

    .prologue
    .line 293
    .line 6311
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 293
    if-nez v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->finish()V

    .line 275
    return-void
.end method

.method public final a(Lary;)V
    .locals 14
    .param p1, "calendarEventObject"    # Lary;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 158
    .line 2311
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v6

    .line 158
    if-nez v6, :cond_0

    .line 249
    :goto_0
    return-void

    .line 162
    :cond_0
    if-nez p1, :cond_1

    .line 163
    iget-object v6, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->f:Landroid/view/ViewGroup;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 167
    :cond_1
    iget-object v6, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->f:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 168
    iget-object v6, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->g:Landroid/widget/TextView;

    .line 3052
    iget-object v7, p1, Lary;->c:Ljava/lang/String;

    .line 168
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 173
    .local v5, "resources":Landroid/content/res/Resources;
    invoke-virtual {p1}, Lary;->e()J

    move-result-wide v6

    invoke-virtual {p1}, Lary;->f()J

    move-result-wide v8

    invoke-virtual {p1}, Lary;->d()Z

    move-result v10

    invoke-static {v6, v7, v8, v9, v10}, Lawj;->a(JJZ)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 174
    iget-object v6, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->h:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    invoke-virtual {p1}, Lary;->d()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 176
    iget-object v6, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->i:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object v6, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lary;->e()J

    move-result-wide v8

    const/4 v7, 0x1

    invoke-static {v8, v9, v7}, Lawj;->a(JZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :goto_1
    invoke-virtual {p1}, Lary;->d()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 202
    iget-object v6, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->j:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    :goto_2
    new-instance v1, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;

    invoke-direct {v1}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;-><init>()V

    .line 209
    .local v1, "eventRecurrence":Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;
    invoke-virtual {p1}, Lary;->i()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 211
    :try_start_0
    invoke-virtual {p1}, Lary;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :cond_2
    :goto_3
    invoke-static {v1}, Lawf;->a(Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;)Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    move-result-object v4

    .line 217
    .local v4, "repeatFrequency":Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;
    sget-object v6, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->NO_REPEAT:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    if-ne v4, v6, :cond_7

    .line 218
    iget-object v6, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->k:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    :goto_4
    sget-object v3, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 227
    .local v3, "remindType":Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;
    invoke-virtual {p1}, Lary;->a()Lcom/alibaba/android/calendar/data/object/AlarmObject;

    move-result-object v6

    if-nez v6, :cond_9

    .line 228
    invoke-virtual {p1}, Lary;->d()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 229
    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->NONE:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    .line 236
    .local v2, "eventRemindMode":Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;
    :goto_5
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->a(Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)V

    .line 3089
    iget-object v6, p1, Lary;->h:Ljava/lang/String;

    .line 239
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 240
    iget-object v6, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->m:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    iget-object v6, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->o:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v6, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->n:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 179
    .end local v1    # "eventRecurrence":Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;
    .end local v2    # "eventRemindMode":Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;
    .end local v3    # "remindType":Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;
    .end local v4    # "repeatFrequency":Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;
    :cond_3
    iget-object v6, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->i:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v6, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lary;->e()J

    move-result-wide v8

    const/4 v7, 0x0

    invoke-static {v8, v9, v7}, Lawj;->a(JZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v6, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->i:Landroid/widget/TextView;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {p1}, Lary;->e()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcog;->c(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "~"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {p1}, Lary;->f()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcog;->c(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 185
    :cond_4
    iget-object v6, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->h:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    iget-object v6, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->i:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    invoke-virtual {p1}, Lary;->d()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 188
    iget-object v6, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->h:Landroid/widget/TextView;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    sget v9, Laow$f;->dt_calendar_start_time_prefix:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 189
    invoke-virtual {p1}, Lary;->e()J

    move-result-wide v10

    const/4 v9, 0x1

    invoke-static {v10, v11, v9}, Lawj;->a(JZ)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 188
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v6, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->i:Landroid/widget/TextView;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    sget v9, Laow$f;->dt_calendar_end_time_prefix:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 191
    invoke-virtual {p1}, Lary;->f()J

    move-result-wide v10

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    const/4 v9, 0x1

    invoke-static {v10, v11, v9}, Lawj;->a(JZ)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 190
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 193
    :cond_5
    iget-object v6, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->h:Landroid/widget/TextView;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    sget v9, Laow$f;->dt_calendar_start_time_prefix:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 194
    invoke-virtual {p1}, Lary;->e()J

    move-result-wide v10

    invoke-static {v10, v11}, Lawj;->e(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 193
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v6, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->i:Landroid/widget/TextView;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    sget v9, Laow$f;->dt_calendar_end_time_prefix:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 196
    invoke-virtual {p1}, Lary;->f()J

    move-result-wide v10

    invoke-static {v10, v11}, Lawj;->e(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 195
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 204
    :cond_6
    iget-object v6, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->j:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 212
    .restart local v1    # "eventRecurrence":Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "parse recurrence failed"

    invoke-static {v6, v0}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 220
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "repeatFrequency":Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;
    :cond_7
    iget-object v6, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->k:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    iget-object v6, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->k:Landroid/widget/TextView;

    sget v7, Laow$f;->dt_ding_repeat_AT:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v4}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->getTextResId()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 231
    .restart local v3    # "remindType":Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;
    :cond_8
    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->HAPPEN:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    .restart local v2    # "eventRemindMode":Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;
    goto/16 :goto_5

    .line 234
    .end local v2    # "eventRemindMode":Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;
    :cond_9
    invoke-virtual {p1}, Lary;->a()Lcom/alibaba/android/calendar/data/object/AlarmObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/calendar/data/object/AlarmObject;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->fromValue(J)Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    move-result-object v2

    .restart local v2    # "eventRemindMode":Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;
    goto/16 :goto_5

    .line 244
    :cond_a
    iget-object v6, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->m:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    iget-object v6, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->o:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    iget-object v6, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->n:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object v6, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->o:Landroid/widget/TextView;

    .line 4089
    iget-object v7, p1, Lary;->h:Ljava/lang/String;

    .line 247
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)V
    .locals 5
    .param p1, "eventRemindMode"    # Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;
    .param p2, "remindType"    # Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 254
    .line 4311
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 254
    if-nez v0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->getDescId()I

    move-result v0

    if-nez v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->l:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 260
    :cond_1
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->NONE:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    if-ne p1, v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->getDescId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 263
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->l:Landroid/widget/TextView;

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 264
    invoke-virtual {p1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->getDescId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    .line 265
    invoke-static {}, Lcms;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, " "

    :goto_1
    aput-object v0, v2, v3

    const/4 v3, 0x2

    .line 5017
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->CALL:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    if-ne p2, v0, :cond_4

    .line 5018
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v4, Laow$f;->ding_remind_type_phone:I

    invoke-virtual {v0, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 266
    :goto_2
    aput-object v0, v2, v3

    const/4 v0, 0x3

    .line 267
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Laow$f;->dt_ding_remind_pick_title:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 263
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 265
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_1

    .line 5019
    :cond_4
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->SMS:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    if-ne p2, v0, :cond_5

    .line 5020
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v4, Laow$f;->ding_remind_type_sms:I

    invoke-virtual {v0, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 5022
    :cond_5
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v4, Laow$f;->ding_remind_type_app:I

    invoke-virtual {v0, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 302
    .line 7311
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 302
    if-nez v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 284
    .line 5311
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 284
    if-nez v0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->showLoadingDialog()V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 311
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x2

    .line 383
    .line 8311
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    .line 383
    if-nez v3, :cond_0

    .line 418
    :goto_0
    return-void

    .line 387
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;-><init>(Landroid/content/Context;)V

    .line 388
    .local v0, "adapter":Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 389
    .local v2, "menuObjectList":Ljava/util/List;, "Ljava/util/List<Lcng;>;"
    new-instance v3, Lcng;

    const/4 v4, 0x1

    sget v5, Laow$f;->dt_delete_this_time_schedule:I

    invoke-direct {v3, v4, v5}, Lcng;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    new-instance v3, Lcng;

    sget v4, Laow$f;->dt_delete_all_relative_schedule:I

    invoke-direct {v3, v6, v4}, Lcng;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Ljava/util/List;)V

    .line 392
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 393
    .local v1, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laow$f;->dt_repeat_schedule_desc:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity$5;

    invoke-direct {v4, p0, v2, v0}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity$5;-><init>(Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;Ljava/util/List;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;)V

    .line 394
    invoke-virtual {v3, v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 417
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    sget v0, Laow$e;->calendar_activity_ding_common_schedule_detail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->setContentView(I)V

    .line 1096
    sget v0, Laow$d;->iv_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1097
    sget v0, Laow$d;->ll_more:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->e:Landroid/view/View;

    .line 1099
    sget v0, Laow$d;->ll_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->f:Landroid/view/ViewGroup;

    .line 1100
    sget v0, Laow$d;->tv_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->g:Landroid/widget/TextView;

    .line 1101
    sget v0, Laow$d;->tv_time_tips1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->h:Landroid/widget/TextView;

    .line 1102
    sget v0, Laow$d;->tv_time_tips2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->i:Landroid/widget/TextView;

    .line 1103
    sget v0, Laow$d;->tv_all_day_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->j:Landroid/widget/TextView;

    .line 1104
    sget v0, Laow$d;->tv_repeat_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->k:Landroid/widget/TextView;

    .line 1105
    sget v0, Laow$d;->tv_remind_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->l:Landroid/widget/TextView;

    .line 1106
    sget v0, Laow$d;->iv_remark_splitter:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->m:Landroid/widget/ImageView;

    .line 1107
    sget v0, Laow$d;->tv_remark_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->n:Landroid/view/View;

    .line 1108
    sget v0, Laow$d;->tv_remark_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->o:Landroid/widget/TextView;

    .line 1110
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->l:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity$1;-><init>(Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1152
    new-instance v0, Laps;

    invoke-direct {v0, p0, p0}, Laps;-><init>(Landroid/app/Activity;Lapr$b;)V

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->c:Lapr$a;

    .line 1153
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->c:Lapr$a;

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lapr$a;->a(Landroid/content/Intent;)V

    .line 2136
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v1, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity$2;-><init>(Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2143
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->e:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity$3;-><init>(Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2306
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2307
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2308
    const-string/jumbo v1, "ding_event_detail"

    invoke-static {v1, v0}, Lavw;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 92
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->c:Lapr$a;

    invoke-interface {v0}, Lapr$a;->i()V

    .line 317
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 318
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onPause()V

    .line 121
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->c:Lapr$a;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->c:Lapr$a;

    invoke-interface {v0}, Lapr$a;->a()V

    .line 124
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 129
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->c:Lapr$a;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->c:Lapr$a;

    invoke-interface {v0}, Lapr$a;->b()V

    .line 132
    :cond_0
    return-void
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method
