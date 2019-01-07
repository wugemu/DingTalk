.class abstract Lbab;
.super Ljava/lang/Object;
.source "BaseCreateEventActivityPresenter.java"

# interfaces
.implements Lbac$a;


# instance fields
.field a:Lbac$b;

.field b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

.field c:I

.field d:Z

.field e:J

.field f:J

.field g:J

.field h:J

.field i:J

.field j:J

.field k:I

.field l:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

.field m:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

.field n:Lcom/alibaba/android/ding/data/object/DingMeetingLocation;

.field protected o:Lcom/amap/api/services/core/PoiItem;

.field protected p:Lcom/amap/api/services/core/PoiItem;

.field protected q:J

.field protected r:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

.field protected s:J

.field private t:Landroid/content/BroadcastReceiver;

.field private u:Lcom/amap/api/services/core/PoiItem;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->NOT_ALL_DAY_VALUES:Ljava/util/ArrayList;

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->FIFTEEN_MINUTES:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lbab;->k:I

    .line 95
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    iput-object v0, p0, Lbab;->l:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 97
    sget-object v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;->MEETING:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    iput-object v0, p0, Lbab;->m:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    .line 108
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    iput-wide v0, p0, Lbab;->q:J

    .line 111
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->NO_REPEAT:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    iput-object v0, p0, Lbab;->r:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public a(J)V
    .locals 7
    .param p1, "startTime"    # J

    .prologue
    .line 177
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 178
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 179
    invoke-static {v0}, Lcog;->a(Ljava/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    sget v1, Laxp$i;->ding_invalid_date_too_later_1_year:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 192
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-boolean v1, p0, Lbab;->d:Z

    if-eqz v1, :cond_1

    .line 184
    iget-wide v2, p0, Lbab;->j:J

    iget-wide v4, p0, Lbab;->i:J

    sub-long v4, p1, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lbab;->j:J

    .line 185
    iput-wide p1, p0, Lbab;->i:J

    .line 190
    :goto_1
    invoke-virtual {p0}, Lbab;->f()V

    .line 191
    invoke-virtual {p0}, Lbab;->j()V

    goto :goto_0

    .line 187
    :cond_1
    iget-wide v2, p0, Lbab;->f:J

    iget-wide v4, p0, Lbab;->e:J

    sub-long v4, p1, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lbab;->f:J

    .line 188
    iput-wide p1, p0, Lbab;->e:J

    goto :goto_1
.end method

.method protected final a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 12
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 518
    if-eqz p1, :cond_0

    .line 3824
    iget-object v10, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J:Lckm;

    invoke-virtual {v10}, Lckm;->a()Ljava/lang/Object;

    move-result-object v10

    .line 518
    instance-of v10, v10, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    if-nez v10, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 4824
    :cond_1
    iget-object v10, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J:Lckm;

    invoke-virtual {v10}, Lckm;->a()Ljava/lang/Object;

    move-result-object v1

    .line 522
    check-cast v1, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    .line 523
    .local v1, "eventsWrapperModel":Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;
    iget-object v10, v1, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;->eventModels:Ljava/util/List;

    if-eqz v10, :cond_0

    iget-object v10, v1, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;->eventModels:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 524
    iget-object v10, v1, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;->eventModels:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;

    .line 525
    .local v0, "eventModel":Lcom/alibaba/android/ding/base/objects/idl/EventModel;
    if-eqz v0, :cond_0

    iget-object v10, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->extension:Ljava/util/Map;

    if-eqz v10, :cond_0

    .line 527
    iget-object v2, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->extension:Ljava/util/Map;

    .line 528
    .local v2, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v10, "m_latitude"

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcoc;->b(Ljava/lang/String;)D

    move-result-wide v4

    .line 529
    .local v4, "latitude":D
    const-string/jumbo v10, "m_longitude"

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcoc;->b(Ljava/lang/String;)D

    move-result-wide v6

    .line 530
    .local v6, "longitude":D
    const-string/jumbo v10, "m_title"

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 531
    .local v9, "title":Ljava/lang/String;
    const-string/jumbo v10, "m_id"

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 533
    .local v8, "poiId":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 537
    new-instance v3, Lcom/amap/api/services/core/LatLonPoint;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    .line 538
    .local v3, "latLonPoint":Lcom/amap/api/services/core/LatLonPoint;
    new-instance v10, Lcom/amap/api/services/core/PoiItem;

    const/4 v11, 0x0

    invoke-direct {v10, v8, v3, v9, v11}, Lcom/amap/api/services/core/PoiItem;-><init>(Ljava/lang/String;Lcom/amap/api/services/core/LatLonPoint;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, p0, Lbab;->o:Lcom/amap/api/services/core/PoiItem;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1, "location"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 481
    const-string/jumbo v0, ""

    .line 482
    .local v0, "locationCode":Ljava/lang/String;
    iget-object v1, p0, Lbab;->n:Lcom/alibaba/android/ding/data/object/DingMeetingLocation;

    if-eqz v1, :cond_0

    .line 483
    iget-object v1, p0, Lbab;->n:Lcom/alibaba/android/ding/data/object/DingMeetingLocation;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;->getLocationCode()Ljava/lang/String;

    move-result-object v0

    .line 487
    :cond_0
    iget-object v1, p0, Lbab;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->g()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lbab;->u:Lcom/amap/api/services/core/PoiItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbab;->a:Lbac$b;

    .line 489
    invoke-interface {v1}, Lbac$b;->g()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lbab;->u:Lcom/amap/api/services/core/PoiItem;

    invoke-virtual {v2}, Lcom/amap/api/services/core/PoiItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 490
    iget-object v1, p0, Lbab;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->g()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 493
    :cond_1
    iget-object v1, p0, Lbab;->a:Lbac$b;

    invoke-interface {v1, p1, v0}, Lbac$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v1, p0, Lbab;->o:Lcom/amap/api/services/core/PoiItem;

    iput-object v1, p0, Lbab;->u:Lcom/amap/api/services/core/PoiItem;

    .line 495
    return-void
.end method

.method public a(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 143
    iput-boolean p1, p0, Lbab;->d:Z

    .line 144
    iget-object v1, p0, Lbab;->a:Lbac$b;

    iget-boolean v0, p0, Lbab;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lbac$b;->a(Z)V

    .line 145
    iget-boolean v0, p0, Lbab;->d:Z

    if-eqz v0, :cond_1

    .line 146
    iget-wide v0, p0, Lbab;->e:J

    invoke-static {v0, v1}, Lbkq;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lbab;->i:J

    .line 147
    iget-wide v0, p0, Lbab;->f:J

    invoke-static {v0, v1}, Lbkq;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lbab;->j:J

    .line 152
    :goto_1
    iget-boolean v0, p0, Lbab;->d:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->ALL_DAY_VALUES:Ljava/util/ArrayList;

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->NONE:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;

    .line 153
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 154
    :goto_2
    iput v0, p0, Lbab;->k:I

    .line 155
    invoke-virtual {p0}, Lbab;->f()V

    .line 156
    invoke-virtual {p0}, Lbab;->j()V

    .line 157
    invoke-virtual {p0}, Lbab;->k()V

    .line 158
    return-void

    .line 144
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 149
    :cond_1
    iget-wide v0, p0, Lbab;->i:J

    iput-wide v0, p0, Lbab;->e:J

    .line 150
    iget-wide v0, p0, Lbab;->j:J

    iput-wide v0, p0, Lbab;->f:J

    goto :goto_1

    .line 153
    :cond_2
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->NOT_ALL_DAY_VALUES:Ljava/util/ArrayList;

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->FIVE_MINUTES:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;

    .line 154
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_2
.end method

.method public b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 162
    iget-object v0, p0, Lbab;->a:Lbac$b;

    iget-boolean v1, p0, Lbab;->d:Z

    iget-wide v2, p0, Lbab;->i:J

    iget-wide v4, p0, Lbab;->e:J

    invoke-interface/range {v0 .. v5}, Lbac$b;->a(ZJJ)V

    .line 163
    return-void
.end method

.method public b(J)V
    .locals 5
    .param p1, "endTime"    # J

    .prologue
    .line 196
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 197
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 198
    invoke-static {v0}, Lcog;->a(Ljava/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    sget v1, Laxp$i;->ding_invalid_date_too_later_1_year:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 216
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-boolean v1, p0, Lbab;->d:Z

    if-eqz v1, :cond_2

    .line 203
    iget-wide v2, p0, Lbab;->i:J

    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    .line 204
    iget-object v1, p0, Lbab;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v1

    sget v2, Laxp$i;->dt_create_event_start_time_after_end_time_tip:I

    invoke-static {v1, v2}, Lcms;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 207
    :cond_1
    iput-wide p1, p0, Lbab;->j:J

    .line 215
    :goto_1
    invoke-virtual {p0}, Lbab;->j()V

    goto :goto_0

    .line 209
    :cond_2
    iget-wide v2, p0, Lbab;->e:J

    cmp-long v1, p1, v2

    if-gez v1, :cond_3

    .line 210
    iget-object v1, p0, Lbab;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v1

    sget v2, Laxp$i;->dt_create_event_start_time_after_end_time_tip:I

    invoke-static {v1, v2}, Lcms;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 213
    :cond_3
    iput-wide p1, p0, Lbab;->f:J

    goto :goto_1
.end method

.method public b(Z)V
    .locals 0
    .param p1, "fromDraft"    # Z

    .prologue
    .line 382
    return-void
.end method

.method public c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 167
    iget-object v0, p0, Lbab;->a:Lbac$b;

    iget-boolean v1, p0, Lbab;->d:Z

    iget-wide v2, p0, Lbab;->j:J

    iget-wide v4, p0, Lbab;->f:J

    invoke-interface/range {v0 .. v5}, Lbac$b;->b(ZJJ)V

    .line 168
    return-void
.end method

.method public d()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 172
    .line 1377
    iget-object v0, p0, Lbab;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lbab;->k:I

    iget-object v2, p0, Lbab;->l:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1941
    const/4 v3, 0x1

    sget-object v4, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->NOT_ALL_DAY_DES_RES_IDS:Ljava/util/ArrayList;

    const-string/jumbo v5, ""

    invoke-static/range {v0 .. v7}, Lbjv;->a(Landroid/app/Activity;IIZLjava/util/ArrayList;Ljava/lang/String;J)V

    .line 173
    return-void
.end method

.method final e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 219
    new-instance v1, Lbab$1;

    invoke-direct {v1, p0}, Lbab$1;-><init>(Lbab;)V

    iput-object v1, p0, Lbab;->t:Landroid/content/BroadcastReceiver;

    .line 257
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 258
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.workapp.ding.choose.event.remind.mode"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    const-string/jumbo v1, "com.workapp.action.poi_info_v2"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    const-string/jumbo v1, "com.workapp.ding.choose.repeat.mode"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lbab;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lbab;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 262
    return-void
.end method

.method final f()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 265
    iget-boolean v0, p0, Lbab;->d:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lbab;->a:Lbac$b;

    iget-wide v2, p0, Lbab;->i:J

    invoke-interface {v0, v2, v3}, Lbac$b;->a(J)V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lbab;->a:Lbac$b;

    iget-wide v2, p0, Lbab;->e:J

    invoke-interface {v0, v2, v3}, Lbac$b;->a(J)V

    goto :goto_0
.end method

.method public g()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 130
    iget-object v0, p0, Lbab;->t:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lbab;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lbab;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lbab;->t:Landroid/content/BroadcastReceiver;

    .line 134
    :cond_0
    return-void
.end method

.method final j()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 273
    iget-boolean v0, p0, Lbab;->d:Z

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lbab;->a:Lbac$b;

    iget-wide v2, p0, Lbab;->j:J

    invoke-interface {v0, v2, v3}, Lbac$b;->b(J)V

    .line 279
    :goto_0
    invoke-virtual {p0}, Lbab;->n()V

    .line 280
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lbab;->a:Lbac$b;

    iget-wide v2, p0, Lbab;->f:J

    invoke-interface {v0, v2, v3}, Lbac$b;->b(J)V

    goto :goto_0
.end method

.method final k()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 286
    iget v1, p0, Lbab;->k:I

    iget-boolean v2, p0, Lbab;->d:Z

    invoke-static {v1, v2}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->getRemindMode(IZ)Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;

    move-result-object v0

    .line 287
    .local v0, "eventRemindMode":Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->getDescId()I

    move-result v1

    if-nez v1, :cond_0

    .line 288
    iget-object v1, p0, Lbab;->a:Lbac$b;

    const-string/jumbo v2, ""

    invoke-interface {v1, v2}, Lbac$b;->c(Ljava/lang/String;)V

    .line 301
    :goto_0
    return-void

    .line 289
    :cond_0
    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->NONE:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;

    if-ne v0, v1, :cond_1

    .line 290
    iget-object v1, p0, Lbab;->a:Lbac$b;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->getDescId()I

    move-result v2

    invoke-interface {v1, v2}, Lbac$b;->e(I)V

    goto :goto_0

    .line 292
    :cond_1
    invoke-static {}, Lcms;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 293
    iget-object v1, p0, Lbab;->a:Lbac$b;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->getDescId()I

    move-result v2

    invoke-interface {v1, v2}, Lbac$b;->e(I)V

    goto :goto_0

    .line 295
    :cond_2
    iget-object v1, p0, Lbab;->a:Lbac$b;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 296
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->getDescId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lbab;->l:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 297
    invoke-static {v4}, Lbkh;->a(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 298
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Laxp$i;->dt_ding_remind_pick_title:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 295
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lbac$b;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method final l()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 304
    new-instance v1, Lbab$2;

    invoke-direct {v1, p0}, Lbab$2;-><init>(Lbab;)V

    const-class v2, Lcma;

    iget-object v3, p0, Lbab;->a:Lbac$b;

    .line 338
    invoke-interface {v3}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v3

    .line 304
    invoke-static {v1, v2, v3}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 339
    .local v0, "listener":Lcma;
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v1

    iget-object v2, p0, Lbab;->a:Lbac$b;

    invoke-interface {v2}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/app/Activity;Lcma;)V

    .line 340
    return-void
.end method

.method public m()V
    .locals 18

    .prologue
    .line 387
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lbab;->d:Z

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-wide v10, v0, Lbab;->i:J

    .line 388
    .local v10, "startTime":J
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lbab;->d:Z

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lbab;->j:J

    .line 390
    .local v4, "endTime":J
    :goto_1
    const-string/jumbo v15, "https://h5.dingtalk.com/dingDate/index.html?dd_orientation=landscape"

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v15

    const-string/jumbo v16, "startTime"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v15

    const-string/jumbo v16, "endTime"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v14

    .line 392
    .local v14, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v15, v0, Lbab;->a:Lbac$b;

    invoke-interface {v15}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v8

    .line 393
    .local v8, "receiverUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_4

    .line 394
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v12

    .line 395
    .local v12, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-static {}, Lcom/laiwang/protocol/media/MediaIdEncoding;->mediaUrlEncoding()Lcom/laiwang/protocol/media/MediaIdEncoding;

    move-result-object v7

    .line 396
    .local v7, "mediaIdEncoding":Lcom/laiwang/protocol/media/MediaIdEncoding;
    new-instance v6, Lcom/laiwang/protocol/media/MediaId;

    sget-object v15, Lcom/laiwang/protocol/media/MediaType;->NORMAL_TXT:Lcom/laiwang/protocol/media/MediaType;

    invoke-direct {v6, v15}, Lcom/laiwang/protocol/media/MediaId;-><init>(Lcom/laiwang/protocol/media/MediaType;)V

    .line 397
    .local v6, "mediaId":Lcom/laiwang/protocol/media/MediaId;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "size":I
    :goto_2
    if-ge v3, v9, :cond_3

    .line 398
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    .line 399
    .local v13, "uid":Ljava/lang/Long;
    if-eqz v13, :cond_0

    .line 400
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Lcom/laiwang/protocol/media/MediaId;->setSequence(J)V

    .line 402
    :try_start_0
    invoke-virtual {v7, v6}, Lcom/laiwang/protocol/media/MediaIdEncoding;->encodingMediaId(Lcom/laiwang/protocol/media/MediaId;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 403
    add-int/lit8 v15, v9, -0x1

    if-eq v3, v15, :cond_0

    .line 404
    const-string/jumbo v15, ","

    invoke-virtual {v12, v15}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :cond_0
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 387
    .end local v3    # "i":I
    .end local v4    # "endTime":J
    .end local v6    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    .end local v7    # "mediaIdEncoding":Lcom/laiwang/protocol/media/MediaIdEncoding;
    .end local v8    # "receiverUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v9    # "size":I
    .end local v10    # "startTime":J
    .end local v12    # "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v13    # "uid":Ljava/lang/Long;
    .end local v14    # "uri":Landroid/net/Uri;
    :cond_1
    move-object/from16 v0, p0

    iget-wide v10, v0, Lbab;->e:J

    goto :goto_0

    .line 388
    .restart local v10    # "startTime":J
    :cond_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lbab;->f:J

    goto :goto_1

    .line 406
    .restart local v3    # "i":I
    .restart local v4    # "endTime":J
    .restart local v6    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    .restart local v7    # "mediaIdEncoding":Lcom/laiwang/protocol/media/MediaIdEncoding;
    .restart local v8    # "receiverUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v9    # "size":I
    .restart local v12    # "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local v13    # "uid":Ljava/lang/Long;
    .restart local v14    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 407
    .local v2, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    const-string/jumbo v15, "create event page nav2SelectionMeetingTime failed"

    invoke-static {v15, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 412
    .end local v2    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    .end local v13    # "uid":Ljava/lang/Long;
    :cond_3
    const-string/jumbo v15, "SelectMeetingTime"

    invoke-static {v15}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v15

    new-instance v16, Lbab$4;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v12}, Lbab$4;-><init>(Lbab;Landroid/net/Uri;Lcom/alibaba/doraemon/performance/DDStringBuilder;)V

    invoke-interface/range {v15 .. v16}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 421
    .end local v3    # "i":I
    .end local v6    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    .end local v7    # "mediaIdEncoding":Lcom/laiwang/protocol/media/MediaIdEncoding;
    .end local v9    # "size":I
    .end local v12    # "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_4
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lbab;->a:Lbac$b;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v14, v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 422
    return-void
.end method

.method protected final n()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 426
    invoke-static {}, Lbju;->c()Z

    move-result v3

    if-nez v3, :cond_0

    .line 427
    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v6, "[checkAttend] check meeting time conflict is close."

    aput-object v6, v3, v7

    invoke-static {v3}, Lbkd;->a([Ljava/lang/String;)V

    .line 469
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-object v3, p0, Lbab;->a:Lbac$b;

    invoke-interface {v3}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lbab;->a:Lbac$b;

    invoke-interface {v3}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 432
    :cond_1
    iget-object v3, p0, Lbab;->a:Lbac$b;

    invoke-interface {v3, v10}, Lbac$b;->b(Ljava/util/List;)V

    goto :goto_0

    .line 436
    :cond_2
    iget-object v3, p0, Lbab;->a:Lbac$b;

    invoke-interface {v3}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v6, :cond_3

    iget-object v3, p0, Lbab;->a:Lbac$b;

    invoke-interface {v3}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    .line 437
    iget-object v3, p0, Lbab;->a:Lbac$b;

    invoke-interface {v3, v10}, Lbac$b;->b(Ljava/util/List;)V

    goto :goto_0

    .line 441
    :cond_3
    new-instance v2, Lbdv;

    invoke-direct {v2}, Lbdv;-><init>()V

    .line 442
    .local v2, "queryUserScheduleModel":Lbdv;
    new-instance v3, Ljava/util/ArrayList;

    iget-object v6, p0, Lbab;->a:Lbac$b;

    invoke-interface {v6}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v2, Lbdv;->a:Ljava/util/List;

    .line 443
    iget-object v3, v2, Lbdv;->a:Ljava/util/List;

    iget-object v6, p0, Lbab;->a:Lbac$b;

    invoke-interface {v6}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 445
    iget-boolean v3, p0, Lbab;->d:Z

    if-eqz v3, :cond_4

    iget-wide v4, p0, Lbab;->i:J

    .line 446
    .local v4, "startTime":J
    :goto_1
    iget-boolean v3, p0, Lbab;->d:Z

    if-eqz v3, :cond_5

    iget-wide v0, p0, Lbab;->j:J

    .line 447
    .local v0, "endTime":J
    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lbdv;->b:Ljava/lang/Long;

    .line 448
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lbdv;->c:Ljava/lang/Long;

    .line 450
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v6

    new-instance v3, Lbab$5;

    invoke-direct {v3, p0}, Lbab$5;-><init>(Lbab;)V

    const-class v7, Lcma;

    iget-object v8, p0, Lbab;->a:Lbac$b;

    .line 467
    invoke-interface {v8}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v8

    .line 450
    invoke-static {v3, v7, v8}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcma;

    .line 2197
    iget-object v7, v6, Lbbp;->b:Lbbp$a;

    new-instance v8, Lbbp$11;

    invoke-direct {v8, v6, v2, v3}, Lbbp$11;-><init>(Lbbp;Lbdv;Lcma;)V

    invoke-virtual {v7, v8}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 445
    .end local v0    # "endTime":J
    .end local v4    # "startTime":J
    :cond_4
    iget-wide v4, p0, Lbab;->e:J

    goto :goto_1

    .line 446
    .restart local v4    # "startTime":J
    :cond_5
    iget-wide v0, p0, Lbab;->f:J

    goto :goto_2
.end method

.method public o()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 473
    iget-object v0, p0, Lbab;->a:Lbac$b;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lbab;->a:Lbac$b;

    invoke-virtual {p0}, Lbab;->t()Z

    move-result v1

    invoke-interface {v0, v1}, Lbac$b;->c(Z)V

    .line 476
    :cond_0
    return-void
.end method

.method public p()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 499
    iget-object v0, p0, Lbab;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lbab;->o:Lcom/amap/api/services/core/PoiItem;

    iget-wide v2, p0, Lbab;->q:J

    .line 3088
    if-eqz v0, :cond_1

    .line 3093
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 3094
    const-string/jumbo v5, "return_location_image"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3095
    const-string/jumbo v5, "intent_key_seed"

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3097
    if-eqz v1, :cond_0

    .line 3098
    const-string/jumbo v2, "poi_info_key"

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3101
    :cond_0
    new-instance v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;-><init>()V

    .line 3102
    sget v2, Laxp$e;->msg_select_location_mark:I

    iput v2, v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->redId:I

    .line 3103
    const/4 v2, 0x0

    iput v2, v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->anchorX:F

    .line 3104
    const v2, -0x414ccccd    # -0.35f

    iput v2, v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->anchorY:F

    .line 3105
    const-string/jumbo v2, "location_center_marker"

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3106
    const-string/jumbo v1, "intent_key_location_from"

    const-string/jumbo v2, "location_from_ding_meeting"

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3107
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToLocationPage(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 500
    :cond_1
    return-void
.end method

.method protected final q()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 504
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 505
    .local v0, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lbab;->o:Lcom/amap/api/services/core/PoiItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbab;->o:Lcom/amap/api/services/core/PoiItem;

    invoke-virtual {v2}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 506
    iget-object v2, p0, Lbab;->o:Lcom/amap/api/services/core/PoiItem;

    invoke-virtual {v2}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    .line 507
    .local v1, "latLonPoint":Lcom/amap/api/services/core/LatLonPoint;
    const-string/jumbo v2, "m_latitude"

    invoke-virtual {v1}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    const-string/jumbo v2, "m_longitude"

    invoke-virtual {v1}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    const-string/jumbo v2, "m_title"

    iget-object v3, p0, Lbab;->o:Lcom/amap/api/services/core/PoiItem;

    invoke-virtual {v3}, Lcom/amap/api/services/core/PoiItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    const-string/jumbo v2, "m_id"

    iget-object v3, p0, Lbab;->o:Lcom/amap/api/services/core/PoiItem;

    invoke-virtual {v3}, Lcom/amap/api/services/core/PoiItem;->getPoiId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    .end local v1    # "latLonPoint":Lcom/amap/api/services/core/LatLonPoint;
    :cond_0
    return-object v0
.end method

.method public r()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 545
    iget-object v0, p0, Lbab;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lbab;->r:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    iget-wide v2, p0, Lbab;->q:J

    iget-wide v4, p0, Lbab;->e:J

    iget-wide v6, p0, Lbab;->s:J

    const-string/jumbo v8, "from_meeting"

    invoke-static/range {v0 .. v8}, Lbjv;->a(Landroid/app/Activity;Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;JJJLjava/lang/String;)V

    .line 547
    return-void
.end method
