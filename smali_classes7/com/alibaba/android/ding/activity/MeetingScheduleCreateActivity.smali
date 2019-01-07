.class public Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;
.super Lcom/alibaba/android/ding/activity/EMiniBaseActivity;
.source "MeetingScheduleCreateActivity.java"


# instance fields
.field private d:J

.field private e:I

.field private f:I

.field private g:J

.field private h:J

.field private i:J

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:J

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Landroid/content/BroadcastReceiver;

.field private u:Lhll;

.field private v:Lhll;

.field private w:Lhll;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;-><init>()V

    .line 114
    const-string/jumbo v0, "meeting"

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->s:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;Landroid/content/Intent;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 57
    .line 3392
    const-string/jumbo v0, "activity_identify"

    invoke-static {p1, v0}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3393
    const-string/jumbo v1, "MeetingScheduleCreateActivity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3394
    const-string/jumbo v0, "choose_user_identities"

    invoke-static {p1, v0}, Lcoy;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3395
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 3396
    if-eqz v0, :cond_1

    .line 3397
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3398
    if-eqz v0, :cond_0

    .line 3401
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 3402
    const-string/jumbo v4, "uid"

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3403
    const-string/jumbo v4, "name"

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->toUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3404
    const-string/jumbo v4, "mediaUrl"

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-static {v0}, Lbke;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3405
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3408
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->u:Lhll;

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->a(Lhll;Lgxl;)V

    .line 57
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;Lcom/alibaba/fastjson/JSONObject;Lhll;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "x2"    # Lhll;

    .prologue
    .line 57
    .line 2321
    if-nez p1, :cond_0

    .line 2322
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "MeetingScheduleCreateActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "jsCallGetUserInfos jsonObject is null"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 2332
    :goto_0
    return-void

    .line 2326
    :cond_0
    const-string/jumbo v0, "uids"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 2327
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/Long;

    invoke-static {v0, v1}, Lcoo;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 2329
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 2330
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2331
    :cond_1
    invoke-static {p2, v0}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->a(Lhll;Lgxl;)V

    goto :goto_0

    .line 2335
    :cond_2
    new-instance v2, Lbhu;

    new-instance v3, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$7;

    invoke-direct {v3, p0, v0, p2}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$7;-><init>(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;Lcom/alibaba/fastjson/JSONArray;Lhll;)V

    const-class v0, Lbhu$a;

    invoke-static {v3, v0, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhu$a;

    invoke-direct {v2, v1, v0}, Lbhu;-><init>(Ljava/util/List;Lbhu$a;)V

    .line 2358
    invoke-virtual {v2}, Lbhu;->a()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;Lhll;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;
    .param p1, "x1"    # Lhll;

    .prologue
    .line 57
    .line 2309
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    .line 2310
    if-eqz v0, :cond_0

    .line 2313
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2314
    const-string/jumbo v2, "uid"

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2315
    const-string/jumbo v2, "name"

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2316
    const-string/jumbo v2, "mediaUrl"

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v0}, Lbke;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2317
    invoke-static {p1, v1}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->a(Lhll;Lgxl;)V

    .line 57
    :cond_0
    return-void
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 524
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->s:Ljava/lang/String;

    const-string/jumbo v1, "meeting"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 526
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->m:Landroid/widget/TextView;

    sget v1, Laxp$c;->pure_white:I

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 527
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 528
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->n:Landroid/widget/TextView;

    sget v1, Laxp$c;->ui_common_level1_button_bg_color:I

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 535
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 531
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->m:Landroid/widget/TextView;

    sget v1, Laxp$c;->ui_common_level1_button_bg_color:I

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 532
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 533
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->n:Landroid/widget/TextView;

    sget v1, Laxp$c;->pure_white:I

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;

    .prologue
    .line 57
    .line 1538
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1539
    const-string/jumbo v1, "segment"

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    const-string/jumbo v1, "namespace_meeting_schedule"

    const-string/jumbo v2, "onTitleSegmentChanged"

    invoke-virtual {p0, v1, v2, v0}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 57
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;Landroid/content/Intent;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 57
    .line 3456
    const-string/jumbo v0, "intent_key_remind_mode_index"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v2

    .line 3457
    const-wide/16 v0, 0x0

    .line 3458
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->q:Ljava/lang/String;

    const-string/jumbo v4, "meeting"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3459
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->NOT_ALL_DAY_VALUES:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->getMinutes()J

    move-result-wide v0

    .line 3466
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->q:Ljava/lang/String;

    const-string/jumbo v3, "meeting"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->q:Ljava/lang/String;

    const-string/jumbo v3, "schedule"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3467
    :cond_1
    const-string/jumbo v2, "intent_key_remind_type_value"

    sget-object v3, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v3

    invoke-static {p1, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v2

    .line 3468
    invoke-static {v2}, Lbkh;->h(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->getValue()I

    move-result v2

    .line 3470
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 3471
    const-string/jumbo v4, "remindMinutes"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3472
    const-string/jumbo v0, "remindSendType"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3473
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->v:Lhll;

    invoke-static {v0, v3}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->a(Lhll;Lgxl;)V

    .line 57
    :cond_2
    return-void

    .line 3460
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->q:Ljava/lang/String;

    const-string/jumbo v4, "schedule"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3461
    iget-boolean v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->r:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->ALL_DAY_VALUES:Ljava/util/ArrayList;

    .line 3462
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->getMinutes()J

    move-result-wide v0

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->NOT_ALL_DAY_VALUES:Ljava/util/ArrayList;

    .line 3463
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->getMinutes()J

    move-result-wide v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;Lcom/alibaba/fastjson/JSONObject;Lhll;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "x2"    # Lhll;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 57
    .line 2362
    if-nez p1, :cond_0

    .line 2363
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "MeetingScheduleCreateActivity"

    aput-object v1, v0, v6

    const-string/jumbo v1, "jsCallChooseContact jsonObject is null"

    aput-object v1, v0, v5

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 2364
    :goto_0
    return-void

    .line 2366
    :cond_0
    iput-object p2, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->u:Lhll;

    .line 2367
    const-string/jumbo v0, "tag"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2368
    const-string/jumbo v1, "selectedUids"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/Long;

    invoke-static {v1, v2}, Lcoo;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 2369
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2370
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2371
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2372
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2373
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2376
    :cond_1
    new-instance v1, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-direct {v1}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;-><init>()V

    .line 2377
    const-string/jumbo v4, "MeetingScheduleCreateActivity"

    invoke-virtual {v1, v4}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->setIdentityFlag(Ljava/lang/String;)V

    .line 2378
    invoke-virtual {v1, v7}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->setBizType(I)V

    .line 2379
    invoke-virtual {v1, v6}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->setFromSpaceFileUnread(Z)V

    .line 2380
    invoke-virtual {v1, v5}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->setCanSendToAll(Z)V

    .line 2381
    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->setUserIdentityObjectUids(Ljava/util/ArrayList;)V

    .line 2382
    invoke-virtual {v1, v3}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->setDisplayIdentityObjectUids(Ljava/util/ArrayList;)V

    .line 2383
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->setDisabledIdentityObjectUids(Ljava/util/ArrayList;)V

    .line 2384
    invoke-virtual {v1, v5}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->setHasSendToMe(Z)V

    .line 2385
    invoke-virtual {v1, v5}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->setModifySelectedUser(Z)V

    .line 2386
    const-string/jumbo v2, "organizers"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->setSingleChooseMode(Z)V

    .line 2387
    invoke-virtual {v1, v6}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->setHasRecentDing(Z)V

    .line 2388
    invoke-static {p0, v1}, Lbjv;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;

    .prologue
    .line 57
    .line 1544
    const-string/jumbo v0, "namespace_meeting_schedule"

    const-string/jumbo v1, "onSendClick"

    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 57
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;Landroid/content/Intent;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 57
    .line 3501
    const-string/jumbo v0, "intent_key_repeat_mode_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 3502
    const-string/jumbo v1, "intent_key_menu_seed"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3503
    iget-wide v4, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->p:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    if-nez v1, :cond_1

    .line 3504
    :cond_0
    :goto_0
    return-void

    .line 3507
    :cond_1
    check-cast v0, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    .line 3508
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->genRepeatRemindInfo(Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;)Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;

    move-result-object v2

    .line 3510
    sget-object v0, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;->DAILY:Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;->getTipsString()Ljava/lang/String;

    move-result-object v1

    .line 3511
    const/4 v0, 0x0

    .line 3512
    if-eqz v2, :cond_2

    .line 3513
    iget-object v1, v2, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->freq:Ljava/lang/String;

    .line 3514
    iget v0, v2, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->interval:I

    .line 3517
    :cond_2
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 3518
    const-string/jumbo v3, "freq"

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3519
    const-string/jumbo v1, "interval"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3520
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->w:Lhll;

    invoke-static {v0, v2}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->a(Lhll;Lgxl;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;Lcom/alibaba/fastjson/JSONObject;Lhll;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "x2"    # Lhll;

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 57
    .line 2413
    if-nez p1, :cond_1

    .line 2414
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "MeetingScheduleCreateActivity"

    aput-object v1, v0, v8

    const-string/jumbo v1, "jsCallSelectRemind jsonObject is null"

    aput-object v1, v0, v3

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 2433
    :cond_0
    :goto_0
    return-void

    .line 2417
    :cond_1
    iput-object p2, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->v:Lhll;

    .line 2418
    const-string/jumbo v0, "tag"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->q:Ljava/lang/String;

    .line 2419
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->q:Ljava/lang/String;

    const-string/jumbo v1, "meeting"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2420
    const-string/jumbo v0, "remindMinutes"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 2421
    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->NOT_ALL_DAY_VALUES:Ljava/util/ArrayList;

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->fromValue(J)Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2423
    const-string/jumbo v0, "remindSendType"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->APP:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->getValue()I

    move-result v2

    invoke-static {v0, v2}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 2424
    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v0

    invoke-static {v0}, Lbkh;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;)I

    move-result v2

    .line 2426
    sget-object v4, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->NOT_ALL_DAY_DES_RES_IDS:Ljava/util/ArrayList;

    sget v0, Laxp$i;->dt_event_remind_type:I

    .line 2431
    invoke-static {v0}, Leda;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 2432
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v0, p0

    .line 2426
    invoke-static/range {v0 .. v7}, Lbjv;->a(Landroid/app/Activity;IIZLjava/util/ArrayList;Ljava/lang/String;J)V

    goto :goto_0

    .line 2433
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->q:Ljava/lang/String;

    const-string/jumbo v1, "schedule"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2434
    const-string/jumbo v0, "allDay"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->r:Z

    .line 2436
    const-string/jumbo v0, "remindMinutes"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 2438
    iget-boolean v1, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->r:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->ALL_DAY_VALUES:Ljava/util/ArrayList;

    int-to-long v2, v0

    .line 2439
    invoke-static {v2, v3}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->fromValue(J)Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2442
    :goto_1
    const-string/jumbo v0, "remindSendType"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->APP:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->getValue()I

    move-result v2

    invoke-static {v0, v2}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 2443
    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v0

    invoke-static {v0}, Lbkh;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;)I

    move-result v2

    .line 2445
    iget-boolean v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->r:Z

    .line 2449
    invoke-static {v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->getResIdList(Z)Ljava/util/ArrayList;

    move-result-object v4

    sget v0, Laxp$i;->dt_common_remind:I

    .line 2450
    invoke-static {v0}, Leda;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 2451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v0, p0

    move v3, v8

    .line 2445
    invoke-static/range {v0 .. v7}, Lbjv;->a(Landroid/app/Activity;IIZLjava/util/ArrayList;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 2439
    :cond_3
    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->NOT_ALL_DAY_VALUES:Ljava/util/ArrayList;

    int-to-long v2, v0

    .line 2440
    invoke-static {v2, v3}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;->fromValue(J)Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$SCHEDULE_EVENT_DAY_REMIND_MODE;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    goto :goto_1
.end method

.method static synthetic d(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;Lcom/alibaba/fastjson/JSONObject;Lhll;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "x2"    # Lhll;

    .prologue
    .line 57
    .line 2478
    iput-object p2, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->w:Lhll;

    .line 2480
    const/4 v0, 0x0

    .line 2481
    if-eqz p1, :cond_0

    .line 2482
    const-string/jumbo v1, "recurRule"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 2483
    if-eqz v1, :cond_0

    .line 2484
    const-string/jumbo v2, "freq"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2485
    const-string/jumbo v3, "interval"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 3033
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 2486
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-lez v1, :cond_0

    .line 2487
    new-instance v0, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;-><init>()V

    .line 2488
    iput-object v2, v0, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->freq:Ljava/lang/String;

    .line 2489
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->interval:Ljava/lang/Integer;

    .line 2493
    :cond_0
    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->fromRecurRuleModel(Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;)Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;

    move-result-object v0

    .line 2495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->p:J

    .line 2497
    invoke-static {v0}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->convertToFrequency(Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;)Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->p:J

    invoke-static {p0, v0, v2, v3}, Lbjv;->a(Landroid/app/Activity;Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;J)V

    .line 57
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 126
    sget v0, Laxp$g;->ding_activity_meeting_schedule_create:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v3, 0x8

    const-wide/16 v6, -0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    .line 131
    invoke-super {p0, p1}, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1149
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_ding_id"

    invoke-static {v0, v1, v6, v7}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->d:J

    .line 1150
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_ding_biz_type"

    invoke-static {v0, v1, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->e:I

    .line 1151
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "scope"

    invoke-static {v0, v1, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->f:I

    .line 1152
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_selected_time"

    invoke-static {v0, v1, v6, v7}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->g:J

    .line 1153
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_start_time"

    invoke-static {v0, v1, v6, v7}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->h:J

    .line 1154
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_end_time"

    invoke-static {v0, v1, v6, v7}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->i:J

    .line 1158
    sget v0, Laxp$f;->rl_close:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->j:Landroid/widget/RelativeLayout;

    .line 1159
    sget v0, Laxp$f;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->k:Landroid/widget/TextView;

    .line 1160
    sget v0, Laxp$f;->ll_segment:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->l:Landroid/widget/LinearLayout;

    .line 1161
    sget v0, Laxp$f;->tv_segment_meeting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->m:Landroid/widget/TextView;

    .line 1162
    sget v0, Laxp$f;->tv_segment_schedule:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->n:Landroid/widget/TextView;

    .line 1163
    sget v0, Laxp$f;->tv_send:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->o:Landroid/widget/TextView;

    .line 1165
    iget-wide v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->d:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    .line 1166
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1167
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1168
    iget v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->e:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->e:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    .line 1171
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->k:Landroid/widget/TextView;

    sget v1, Laxp$i;->dt_ding_motify_task:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1177
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->o:Landroid/widget/TextView;

    sget v1, Laxp$i;->dt_modify_event_op_modify:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1182
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1183
    iget-wide v2, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->d:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_5

    .line 1184
    const-string/jumbo v1, "dingId"

    iget-wide v2, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->d:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1185
    const-string/jumbo v1, "bizType"

    iget v2, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1186
    const-string/jumbo v1, "meetingScope"

    iget v2, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1198
    :cond_1
    :goto_2
    const-string/jumbo v1, "2018091961408528"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "pages/index/index"

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1205
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->j:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$1;-><init>(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1212
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->m:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$2;-><init>(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1221
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->n:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$3;-><init>(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1230
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->o:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$4;-><init>(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1238
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1239
    const-string/jumbo v2, "close"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1240
    const-string/jumbo v2, "getMyUserInfo"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1241
    const-string/jumbo v2, "getUserInfos"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1242
    const-string/jumbo v2, "chooseConferenceParticipants"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1243
    const-string/jumbo v2, "selectRemind"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1244
    const-string/jumbo v2, "selectRepeat"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1245
    const-string/jumbo v2, "namespace_meeting_schedule"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    new-instance v1, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$5;-><init>(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->a(Ljava/util/Map;Lhlk;)V

    .line 1280
    invoke-direct {p0}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->b()V

    .line 1284
    new-instance v0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$6;-><init>(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->t:Landroid/content/BroadcastReceiver;

    .line 1299
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1300
    const-string/jumbo v1, "com.workapp.choose.people.from.group.member"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1301
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1302
    const-string/jumbo v1, "com.workapp.ding.choose.myself"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1303
    const-string/jumbo v1, "com.workapp.ding.choose.event.remind.mode"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1304
    const-string/jumbo v1, "com.workapp.ding.choose.repeat.mode"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1305
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 137
    return-void

    .line 1172
    :cond_2
    iget v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1173
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->k:Landroid/widget/TextView;

    sget v1, Laxp$i;->dt_ding_activity_title_modify_event:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 1175
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->k:Landroid/widget/TextView;

    sget v1, Laxp$i;->dt_ding_common_modify:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 1179
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1180
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 1188
    :cond_5
    iget-wide v2, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->g:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_6

    .line 1189
    const-string/jumbo v1, "curSelectedMillis"

    iget-wide v2, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1191
    :cond_6
    iget-wide v2, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->h:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_7

    .line 1192
    const-string/jumbo v1, "curSelectedStartMillis"

    iget-wide v2, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->h:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1194
    :cond_7
    iget-wide v2, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->i:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 1195
    const-string/jumbo v1, "curSelectedEndMillis"

    iget-wide v2, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->i:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->t:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 142
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->t:Landroid/content/BroadcastReceiver;

    .line 145
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->onDestroy()V

    .line 146
    return-void
.end method
