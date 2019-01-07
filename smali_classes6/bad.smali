.class public final Lbad;
.super Lbab;
.source "CreateEventActivityPresenter.java"


# instance fields
.field private A:Ljava/lang/String;

.field t:Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;

.field u:Lcom/alibaba/wukong/im/Message;

.field v:Z

.field private w:Ljava/lang/String;

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private y:Z

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbac$b;Landroid/content/Intent;)V
    .locals 6
    .param p1, "view"    # Lbac$b;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Lbab;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbad;->x:Ljava/util/ArrayList;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbad;->y:Z

    .line 101
    iput-object p1, p0, Lbad;->a:Lbac$b;

    .line 102
    invoke-interface {p1, p0}, Lbac$b;->setPresenter(Lcjd;)V

    .line 1175
    if-eqz p2, :cond_0

    .line 1178
    const-string/jumbo v0, "intent_key_create_ding_info"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    iput-object v0, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 1179
    iget-object v0, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    if-nez v0, :cond_1

    .line 1180
    const-string/jumbo v0, "[CreateEvent]handle intent failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "createInfo null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    iget-object v0, p0, Lbad;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->e()V

    .line 1237
    :cond_0
    :goto_0
    return-void

    .line 1184
    :cond_1
    iget-object v0, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->isMeeting()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1185
    const-string/jumbo v0, "[CreateEvent]handle intent failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "ding is not meeting"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    iget-object v0, p0, Lbad;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->e()V

    goto :goto_0

    .line 1195
    :cond_2
    iget-object v0, p0, Lbad;->a:Lbac$b;

    invoke-interface {v0, v1}, Lbac$b;->b(Z)V

    .line 1196
    iget-object v0, p0, Lbad;->a:Lbac$b;

    invoke-interface {v0, v1}, Lbac$b;->c(Z)V

    .line 1197
    iget-object v0, p0, Lbad;->a:Lbac$b;

    iget-object v2, p0, Lbad;->a:Lbac$b;

    invoke-interface {v2}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v2

    sget v3, Laxp$i;->dt_create_event_item_person:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lbac$b;->a(Ljava/lang/String;)V

    .line 1199
    iget-object v0, p0, Lbad;->a:Lbac$b;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lbac$b;->c(I)V

    .line 1200
    sget-object v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;->MEETING:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    iput-object v0, p0, Lbad;->m:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    .line 1201
    iget-object v0, p0, Lbad;->a:Lbac$b;

    sget-object v2, Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;->MEETING:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    invoke-interface {v0, v2, v1}, Lbac$b;->a(Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;Z)V

    .line 1204
    iget-object v0, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getStartTime()J

    move-result-wide v2

    iput-wide v2, p0, Lbad;->e:J

    .line 1205
    iget-wide v2, p0, Lbad;->e:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    .line 1206
    invoke-static {}, Lbkq;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lbad;->e:J

    .line 1208
    :cond_3
    iget-object v0, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getEndTime()J

    move-result-wide v2

    iput-wide v2, p0, Lbad;->f:J

    .line 1209
    iget-wide v2, p0, Lbad;->f:J

    iget-wide v4, p0, Lbad;->e:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    .line 1210
    iget-wide v2, p0, Lbad;->e:J

    const-wide/32 v4, 0x36ee80

    add-long/2addr v2, v4

    iput-wide v2, p0, Lbad;->f:J

    .line 1212
    :cond_4
    iget-wide v2, p0, Lbad;->e:J

    invoke-static {v2, v3}, Lbkq;->a(J)J

    move-result-wide v2

    iput-wide v2, p0, Lbad;->i:J

    .line 1213
    iget-wide v2, p0, Lbad;->f:J

    invoke-static {v2, v3}, Lbkq;->a(J)J

    move-result-wide v2

    iput-wide v2, p0, Lbad;->j:J

    .line 1214
    invoke-virtual {p0}, Lbad;->f()V

    .line 1215
    invoke-virtual {p0}, Lbad;->j()V

    .line 1218
    iget-object v0, p0, Lbad;->a:Lbac$b;

    iget-object v2, p0, Lbad;->r:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    invoke-interface {v0, v2}, Lbac$b;->a(Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;)V

    .line 1221
    iget-object v0, p0, Lbad;->a:Lbac$b;

    iget-object v2, p0, Lbad;->x:Ljava/util/ArrayList;

    invoke-interface {v0, v2, v1}, Lbac$b;->a(Ljava/util/List;Z)V

    .line 1224
    iget-object v2, p0, Lbad;->a:Lbac$b;

    iget-object v0, p0, Lbad;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lbad;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    invoke-interface {v2, v1, v0}, Lbac$b;->a(ZI)V

    .line 1225
    iget-object v0, p0, Lbad;->a:Lbac$b;

    sget v2, Laxp$i;->ding_remind_type:I

    invoke-interface {v0, v2}, Lbac$b;->d(I)V

    .line 1226
    iget-object v0, p0, Lbad;->a:Lbac$b;

    sget-object v2, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-interface {v0, v2}, Lbac$b;->a(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)V

    .line 1229
    invoke-virtual {p0}, Lbad;->k()V

    .line 1232
    iget-object v0, p0, Lbad;->a:Lbac$b;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lbac$b;->a(Ljava/lang/Long;Z)V

    .line 1234
    iget-object v0, p0, Lbad;->a:Lbac$b;

    invoke-static {}, Lbju;->m()Z

    move-result v2

    invoke-interface {v0, v2}, Lbac$b;->l(Z)V

    .line 1236
    invoke-static {}, Lbhg;->a()Lbhg;

    iget-object v0, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0}, Lbhg;->a(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1237
    iget-object v0, p0, Lbad;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->q()V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 1224
    goto :goto_1

    .line 1239
    :cond_6
    invoke-virtual {p0, v1}, Lbad;->b(Z)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lbad;)V
    .locals 0
    .param p0, "x0"    # Lbad;

    .prologue
    .line 77
    invoke-direct {p0}, Lbad;->x()V

    return-void
.end method

.method static synthetic a(Lbad;Ljava/util/Collection;Z)V
    .locals 0
    .param p0, "x0"    # Lbad;
    .param p1, "x1"    # Ljava/util/Collection;
    .param p2, "x2"    # Z

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lbad;->a(Ljava/util/Collection;Z)V

    return-void
.end method

.method static synthetic a(Lbad;Z)V
    .locals 1
    .param p0, "x0"    # Lbad;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbad;->c(Z)V

    return-void
.end method

.method private a(Ljava/util/Collection;Z)V
    .locals 18
    .param p2, "ignore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 668
    .local p1, "profileUids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v7, Lbfh;

    invoke-direct {v7}, Lbfh;-><init>()V

    .line 670
    .local v7, "eventCreateObject":Lbfh;
    move-object/from16 v0, p0

    iget-object v13, v0, Lbad;->a:Lbac$b;

    invoke-interface {v13}, Lbac$b;->f()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_2

    const/4 v13, 0x0

    .line 11146
    :goto_0
    iput-object v13, v7, Lbfh;->d:Ljava/lang/String;

    .line 673
    move-object/from16 v0, p0

    iget-object v13, v0, Lbad;->m:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    invoke-virtual {v13}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;->getValue()I

    move-result v13

    if-nez v13, :cond_0

    .line 674
    move-object/from16 v0, p0

    iget-object v13, v0, Lbad;->a:Lbac$b;

    invoke-interface {v13}, Lbac$b;->g()Landroid/text/Editable;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 675
    move-object/from16 v0, p0

    iget-object v13, v0, Lbad;->a:Lbac$b;

    invoke-interface {v13}, Lbac$b;->g()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 11194
    iput-object v13, v7, Lbfh;->e:Ljava/lang/String;

    .line 686
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lbad;->d:Z

    .line 15138
    iput-boolean v13, v7, Lbfh;->c:Z

    .line 688
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lbad;->d:Z

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-wide v14, v0, Lbad;->i:J

    .line 16122
    :goto_2
    iput-wide v14, v7, Lbfh;->a:J

    .line 690
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lbad;->d:Z

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-wide v14, v0, Lbad;->j:J

    const-wide/32 v16, 0x5265c00

    add-long v14, v14, v16

    .line 16130
    :goto_3
    iput-wide v14, v7, Lbfh;->b:J

    .line 692
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 693
    .local v4, "attendeeObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/data/object/AttendeeObject;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 694
    .local v12, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_6

    .line 695
    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 696
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    .line 697
    .local v11, "uid":Ljava/lang/Long;
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_1

    .line 698
    new-instance v3, Lcom/alibaba/android/ding/data/object/AttendeeObject;

    invoke-direct {v3}, Lcom/alibaba/android/ding/data/object/AttendeeObject;-><init>()V

    .line 699
    .local v3, "attendeeObject":Lcom/alibaba/android/ding/data/object/AttendeeObject;
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v3, v14, v15}, Lcom/alibaba/android/ding/data/object/AttendeeObject;->setUid(J)V

    .line 700
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 670
    .end local v3    # "attendeeObject":Lcom/alibaba/android/ding/data/object/AttendeeObject;
    .end local v4    # "attendeeObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/data/object/AttendeeObject;>;"
    .end local v11    # "uid":Ljava/lang/Long;
    .end local v12    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lbad;->a:Lbac$b;

    invoke-interface {v13}, Lbac$b;->f()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 677
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lbad;->n:Lcom/alibaba/android/ding/data/object/DingMeetingLocation;

    if-eqz v13, :cond_0

    .line 678
    move-object/from16 v0, p0

    iget-object v13, v0, Lbad;->n:Lcom/alibaba/android/ding/data/object/DingMeetingLocation;

    invoke-virtual {v13}, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;->getLocationName()Ljava/lang/String;

    move-result-object v13

    .line 12194
    iput-object v13, v7, Lbfh;->e:Ljava/lang/String;

    .line 679
    move-object/from16 v0, p0

    iget-object v13, v0, Lbad;->n:Lcom/alibaba/android/ding/data/object/DingMeetingLocation;

    invoke-virtual {v13}, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;->getLocationCode()Ljava/lang/String;

    move-result-object v13

    .line 13109
    const-wide/16 v14, 0x0

    invoke-static {v13, v14, v15}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v14

    .line 13202
    iput-wide v14, v7, Lbfh;->f:J

    .line 680
    move-object/from16 v0, p0

    iget-object v13, v0, Lbad;->n:Lcom/alibaba/android/ding/data/object/DingMeetingLocation;

    invoke-virtual {v13}, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;->getOrgId()Ljava/lang/String;

    move-result-object v13

    .line 14109
    const-wide/16 v14, 0x0

    invoke-static {v13, v14, v15}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v14

    .line 14210
    iput-wide v14, v7, Lbfh;->g:J

    goto/16 :goto_1

    .line 688
    :cond_4
    move-object/from16 v0, p0

    iget-wide v14, v0, Lbad;->e:J

    goto/16 :goto_2

    .line 690
    :cond_5
    move-object/from16 v0, p0

    iget-wide v14, v0, Lbad;->f:J

    goto/16 :goto_3

    .line 16226
    .restart local v4    # "attendeeObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/data/object/AttendeeObject;>;"
    .restart local v12    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_6
    iput-object v4, v7, Lbfh;->i:Ljava/util/List;

    .line 707
    move-object/from16 v0, p0

    iget v13, v0, Lbad;->k:I

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lbad;->d:Z

    invoke-static {v13, v14}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->getRemindMode(IZ)Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;

    move-result-object v8

    .line 708
    .local v8, "eventRemindMode":Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;
    sget-object v13, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->NONE:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;

    if-ne v8, v13, :cond_f

    .line 709
    const/4 v13, 0x0

    .line 17218
    iput-object v13, v7, Lbfh;->h:Ljava/util/List;

    .line 714
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lbad;->l:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-static {v13}, Lbkh;->b(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v2

    .line 715
    .local v2, "alarmTypeNotification":Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;
    sget-object v13, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->UNKNOWN:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    if-ne v2, v13, :cond_7

    .line 716
    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->APP:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    .line 718
    :cond_7
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->getValue()I

    move-result v13

    .line 19186
    iput v13, v7, Lbfh;->j:I

    .line 719
    invoke-virtual/range {p0 .. p0}, Lbad;->q()Ljava/util/Map;

    move-result-object v13

    .line 19243
    if-eqz v13, :cond_8

    .line 19247
    iget-object v14, v7, Lbfh;->k:Ljava/util/Map;

    invoke-interface {v14, v13}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 722
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lbad;->r:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->genRepeatRemindInfo(Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;)Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;

    move-result-object v5

    .line 723
    .local v5, "cycleRemindRuleObject":Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;
    if-eqz v5, :cond_9

    .line 724
    move-object/from16 v0, p0

    iget-wide v14, v0, Lbad;->s:J

    iput-wide v14, v5, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->until:J

    .line 725
    invoke-virtual {v5}, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->toRecurRuleModel()Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;

    move-result-object v13

    .line 19255
    if-eqz v13, :cond_9

    .line 19259
    iget-object v14, v7, Lbfh;->l:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    :cond_9
    new-instance v9, Lbfi;

    invoke-direct {v9}, Lbfi;-><init>()V

    .line 20059
    .local v9, "eventsWrapperCreateObject":Lbfi;
    iput-object v7, v9, Lbfi;->a:Lbfh;

    .line 732
    move-object/from16 v0, p0

    iget-object v13, v0, Lbad;->a:Lbac$b;

    invoke-interface {v13}, Lbac$b;->i()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v13

    invoke-static {v13}, Lbkh;->b(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v10

    .line 733
    .local v10, "sendTypeNotification":Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;
    sget-object v13, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->UNKNOWN:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    if-ne v10, v13, :cond_a

    .line 734
    sget-object v10, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->APP:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    .line 736
    :cond_a
    invoke-virtual {v10}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->getValue()I

    move-result v13

    .line 20075
    iput v13, v9, Lbfi;->c:I

    .line 21067
    const/4 v13, 0x2

    iput v13, v9, Lbfi;->b:I

    .line 739
    move-object/from16 v0, p0

    iget-object v13, v0, Lbad;->A:Ljava/lang/String;

    .line 21116
    iput-object v13, v9, Lbfi;->e:Ljava/lang/String;

    .line 742
    move-object/from16 v0, p0

    iget-object v13, v0, Lbad;->a:Lbac$b;

    invoke-interface {v13}, Lbac$b;->l()Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    move-result-object v6

    .line 743
    .local v6, "dingAttachmentObject":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    if-eqz v6, :cond_b

    .line 744
    const/4 v13, 0x1

    new-array v13, v13, [Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 21124
    iput-object v13, v9, Lbfi;->f:Ljava/util/List;

    .line 748
    :cond_b
    if-eqz p2, :cond_c

    .line 749
    const-string/jumbo v13, "ignorPrvnt"

    const-string/jumbo v14, "1"

    invoke-virtual {v9, v13, v14}, Lbfi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lbad;->m:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    invoke-virtual {v13}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;->getValue()I

    move-result v13

    .line 21128
    iput v13, v9, Lbfi;->g:I

    .line 755
    move-object/from16 v0, p0

    iget-object v13, v0, Lbad;->u:Lcom/alibaba/wukong/im/Message;

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lbad;->u:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v13}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v13

    if-eqz v13, :cond_10

    .line 756
    const-string/jumbo v13, "msgId"

    move-object/from16 v0, p0

    iget-object v14, v0, Lbad;->u:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v14}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Lbfi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const-string/jumbo v13, "cid"

    move-object/from16 v0, p0

    iget-object v14, v0, Lbad;->u:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v14}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v14

    invoke-interface {v14}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Lbfi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lbad;->a:Lbac$b;

    invoke-interface {v13}, Lbac$b;->m()J

    move-result-wide v14

    .line 21136
    iput-wide v14, v9, Lbfi;->h:J

    .line 771
    move-object/from16 v0, p0

    iget-object v13, v0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v13}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getSourceFrom()I

    move-result v13

    const/16 v14, 0x11

    if-ne v13, v14, :cond_e

    .line 21238
    iget-object v13, v7, Lbfh;->k:Ljava/util/Map;

    .line 772
    const-string/jumbo v14, "locationCorpId"

    move-object/from16 v0, p0

    iget-object v15, v0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    const-string/jumbo v16, "locationCorpId"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22238
    iget-object v13, v7, Lbfh;->k:Ljava/util/Map;

    .line 773
    const-string/jumbo v14, "roomBookingId"

    move-object/from16 v0, p0

    iget-object v15, v0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    const-string/jumbo v16, "roomBookingId"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lbad;->a:Lbac$b;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lbac$b;->i(Z)V

    .line 777
    move-object/from16 v0, p0

    iget-object v13, v0, Lbad;->a:Lbac$b;

    invoke-interface {v13}, Lbac$b;->b()V

    .line 778
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v14

    new-instance v13, Lbad$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v7}, Lbad$5;-><init>(Lbad;Lbfh;)V

    const-class v15, Lcom/alibaba/wukong/Callback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lbad;->a:Lbac$b;

    move-object/from16 v16, v0

    .line 854
    invoke-interface/range {v16 .. v16}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v16

    .line 781
    move-object/from16 v0, v16

    invoke-static {v13, v15, v0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alibaba/wukong/Callback;

    .line 23106
    iget-object v15, v14, Lbbp;->b:Lbbp$a;

    new-instance v16, Lbbp$117;

    move-object/from16 v0, v16

    invoke-direct {v0, v14, v12, v9, v13}, Lbbp$117;-><init>(Lbbp;Ljava/util/List;Lbfi;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual/range {v15 .. v16}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 855
    return-void

    .line 711
    .end local v2    # "alarmTypeNotification":Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;
    .end local v5    # "cycleRemindRuleObject":Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;
    .end local v6    # "dingAttachmentObject":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    .end local v9    # "eventsWrapperCreateObject":Lbfi;
    .end local v10    # "sendTypeNotification":Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;
    :cond_f
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Long;

    const/4 v14, 0x0

    invoke-virtual {v8}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->getMinutes()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 18218
    iput-object v13, v7, Lbfh;->h:Ljava/util/List;

    goto/16 :goto_5

    .line 758
    .restart local v2    # "alarmTypeNotification":Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;
    .restart local v5    # "cycleRemindRuleObject":Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;
    .restart local v6    # "dingAttachmentObject":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    .restart local v9    # "eventsWrapperCreateObject":Lbfi;
    .restart local v10    # "sendTypeNotification":Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 759
    invoke-virtual {v13}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getCid()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lbad;->u:Lcom/alibaba/wukong/im/Message;

    if-nez v13, :cond_d

    .line 761
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v13

    const-string/jumbo v14, "im_add_ding_msg"

    invoke-virtual {v13, v14}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 762
    const-string/jumbo v13, "dingMsgFrom"

    const-string/jumbo v14, "imPlus"

    invoke-virtual {v9, v13, v14}, Lbfi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    :cond_11
    const-string/jumbo v13, "cid"

    move-object/from16 v0, p0

    iget-object v14, v0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v14}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getCid()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Lbfi;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method private c(Z)V
    .locals 14
    .param p1, "ignore"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 528
    iget-boolean v9, p0, Lbad;->d:Z

    if-eqz v9, :cond_1

    iget-wide v10, p0, Lbad;->i:J

    iget-wide v12, p0, Lbad;->j:J

    cmp-long v9, v10, v12

    if-lez v9, :cond_2

    .line 529
    :cond_0
    sget v9, Laxp$i;->dt_create_event_start_time_after_end_time_tip:I

    invoke-static {v9}, Lcms;->a(I)V

    .line 665
    :goto_0
    return-void

    .line 528
    :cond_1
    iget-wide v10, p0, Lbad;->e:J

    iget-wide v12, p0, Lbad;->f:J

    cmp-long v9, v10, v12

    if-gtz v9, :cond_0

    .line 534
    :cond_2
    iget-object v9, p0, Lbad;->a:Lbac$b;

    invoke-interface {v9}, Lbac$b;->f()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lbad;->a:Lbac$b;

    .line 535
    invoke-interface {v9}, Lbac$b;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 536
    :cond_3
    sget v9, Laxp$i;->dt_create_event_subject_empty_tip:I

    invoke-static {v9}, Lcms;->a(I)V

    goto :goto_0

    .line 541
    :cond_4
    iget-object v9, p0, Lbad;->a:Lbac$b;

    invoke-interface {v9}, Lbac$b;->f()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lbad;->a:Lbac$b;

    invoke-interface {v9}, Lbac$b;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x1388

    if-le v9, v10, :cond_5

    .line 542
    sget v9, Laxp$i;->dt_create_event_subject_too_long_tip:I

    invoke-static {v9}, Lcms;->a(I)V

    goto :goto_0

    .line 547
    :cond_5
    iget-object v9, p0, Lbad;->a:Lbac$b;

    invoke-interface {v9}, Lbac$b;->g()Landroid/text/Editable;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lbad;->a:Lbac$b;

    invoke-interface {v9}, Lbac$b;->g()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v9

    const/16 v10, 0x3e8

    if-le v9, v10, :cond_6

    .line 548
    sget v9, Laxp$i;->dt_create_event_address_too_long_tip:I

    invoke-static {v9}, Lcms;->a(I)V

    goto :goto_0

    .line 553
    :cond_6
    iget-object v9, p0, Lbad;->a:Lbac$b;

    invoke-interface {v9}, Lbac$b;->l()Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    move-result-object v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lbad;->a:Lbac$b;

    invoke-interface {v9}, Lbac$b;->n()Z

    move-result v9

    if-nez v9, :cond_7

    .line 554
    sget v9, Laxp$i;->ding_attach_uploading:I

    invoke-static {v9}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 559
    :cond_7
    iget-boolean v9, p0, Lbad;->d:Z

    if-eqz v9, :cond_8

    iget-wide v10, p0, Lbad;->j:J

    const-wide/32 v12, 0x5265c00

    add-long v4, v10, v12

    .line 560
    .local v4, "endTime":J
    :goto_1
    iget-wide v10, p0, Lbad;->s:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_9

    iget-wide v10, p0, Lbad;->s:J

    cmp-long v9, v4, v10

    if-lez v9, :cond_9

    .line 561
    sget v9, Laxp$i;->dt_ding_conference_create_date_error:I

    invoke-static {v9}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 559
    .end local v4    # "endTime":J
    :cond_8
    iget-wide v4, p0, Lbad;->f:J

    goto :goto_1

    .line 566
    .restart local v4    # "endTime":J
    :cond_9
    iget-object v9, p0, Lbad;->a:Lbac$b;

    invoke-interface {v9}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v6

    .line 567
    .local v6, "profileUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 568
    :cond_a
    iget-object v9, p0, Lbad;->m:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    invoke-virtual {v9}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;->getValue()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    const/4 v9, 0x1

    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->r()I

    move-result v10

    if-ge v9, v10, :cond_b

    .line 570
    iget-object v9, p0, Lbad;->a:Lbac$b;

    invoke-interface {v9}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v9

    sget v10, Laxp$i;->dt_create_event_tel_num_too_less:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 571
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->r()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 570
    invoke-virtual {v9, v10, v11}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcms;->a(Ljava/lang/String;)V

    .line 9492
    const-string/jumbo v9, "ding_send_concall_limit_lower"

    invoke-static {v9}, Lbjz;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 575
    :cond_b
    invoke-static {}, Lbbi;->a()Lbbi;

    iget-object v9, p0, Lbad;->m:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    invoke-virtual {v9}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;->getValue()I

    move-result v9

    invoke-static {v9}, Lbbi;->a(I)I

    move-result v9

    if-nez v9, :cond_c

    .line 577
    invoke-static {}, Lbbi;->a()Lbbi;

    iget-object v9, p0, Lbad;->m:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    invoke-virtual {v9}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;->getValue()I

    move-result v9

    invoke-static {}, Lbbi;->a()Lbbi;

    iget-object v10, p0, Lbad;->m:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    invoke-virtual {v10}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;->getValue()I

    move-result v10

    invoke-static {v10}, Lbbi;->a(I)I

    move-result v10

    invoke-static {v9, v10}, Lbbi;->a(II)V

    goto/16 :goto_0

    .line 580
    :cond_c
    iget-object v9, p0, Lbad;->m:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    invoke-virtual {v9}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;->getValue()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_d

    .line 582
    iget-object v9, p0, Lbad;->a:Lbac$b;

    invoke-interface {v9}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v9

    sget v10, Laxp$i;->dt_ding_create_video_conf_select_too_less_at:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "2"

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 585
    :cond_d
    const-string/jumbo v9, "pref_key_has_shown_alert_of_sending_event_to_self"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v3

    .line 586
    .local v3, "hasShownAlertOfSendingToSelf":Z
    if-nez v3, :cond_e

    .line 587
    const-string/jumbo v9, "pref_key_has_shown_alert_of_sending_event_to_self"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 588
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v9, p0, Lbad;->a:Lbac$b;

    invoke-interface {v9}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 589
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v9, Laxp$i;->dt_create_event_no_receiver_prompt_title:I

    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v9

    sget v10, Laxp$i;->dt_create_event_no_receiver_prompt_confirm_btn:I

    new-instance v11, Lbad$3;

    invoke-direct {v11, p0, p1}, Lbad$3;-><init>(Lbad;Z)V

    .line 590
    invoke-virtual {v9, v10, v11}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v9

    sget v10, Laxp$i;->cancel:I

    new-instance v11, Lbad$2;

    invoke-direct {v11, p0, v0}, Lbad$2;-><init>(Lbad;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 596
    invoke-virtual {v9, v10, v11}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 602
    new-instance v9, Lbad$4;

    invoke-direct {v9, p0}, Lbad$4;-><init>(Lbad;)V

    .line 10173
    iput-object v9, v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a:Landroid/content/DialogInterface$OnDismissListener;

    .line 607
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 609
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_e
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Long;

    const/4 v10, 0x0

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v11

    invoke-virtual {v11}, Lccr;->c()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {p0, v9, p1}, Lbad;->a(Ljava/util/Collection;Z)V

    goto/16 :goto_0

    .line 612
    .end local v3    # "hasShownAlertOfSendingToSelf":Z
    :cond_f
    const/4 v1, 0x0

    .line 613
    .local v1, "containMySelf":Z
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_10
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 614
    .local v8, "uidLong":Ljava/lang/Long;
    if-eqz v8, :cond_10

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v12

    invoke-virtual {v12}, Lccr;->c()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_10

    .line 615
    const/4 v1, 0x1

    .line 620
    .end local v8    # "uidLong":Ljava/lang/Long;
    :cond_11
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 622
    .local v7, "receiversNum":I
    iget-object v9, p0, Lbad;->m:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    invoke-virtual {v9}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;->getValue()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_12

    iget-object v9, p0, Lbad;->m:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    invoke-virtual {v9}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;->getValue()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_16

    .line 624
    :cond_12
    if-eqz v1, :cond_13

    const/4 v9, 0x0

    :goto_2
    add-int/2addr v7, v9

    .line 625
    iget-object v9, p0, Lbad;->m:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    invoke-virtual {v9}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;->getValue()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_14

    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->r()I

    move-result v9

    if-ge v7, v9, :cond_14

    .line 627
    iget-object v9, p0, Lbad;->a:Lbac$b;

    invoke-interface {v9}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v9

    sget v10, Laxp$i;->dt_create_event_tel_num_too_less:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->r()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcms;->a(Ljava/lang/String;)V

    .line 10492
    const-string/jumbo v9, "ding_send_concall_limit_lower"

    invoke-static {v9}, Lbjz;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 624
    :cond_13
    const/4 v9, 0x1

    goto :goto_2

    .line 631
    :cond_14
    invoke-static {}, Lbbi;->a()Lbbi;

    iget-object v9, p0, Lbad;->m:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    invoke-virtual {v9}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;->getValue()I

    move-result v9

    invoke-static {v9}, Lbbi;->a(I)I

    move-result v9

    if-le v7, v9, :cond_15

    .line 633
    invoke-static {}, Lbbi;->a()Lbbi;

    iget-object v9, p0, Lbad;->m:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    invoke-virtual {v9}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;->getValue()I

    move-result v9

    invoke-static {}, Lbbi;->a()Lbbi;

    iget-object v10, p0, Lbad;->m:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    invoke-virtual {v10}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;->getValue()I

    move-result v10

    invoke-static {v10}, Lbbi;->a(I)I

    move-result v10

    invoke-static {v9, v10}, Lbbi;->a(II)V

    goto/16 :goto_0

    .line 636
    :cond_15
    iget-object v9, p0, Lbad;->m:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    invoke-virtual {v9}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;->getValue()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_16

    const/4 v9, 0x2

    if-ge v7, v9, :cond_16

    .line 638
    iget-object v9, p0, Lbad;->a:Lbac$b;

    invoke-interface {v9}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v9

    sget v10, Laxp$i;->dt_ding_create_video_conf_select_too_less_at:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "2"

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 643
    :cond_16
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->e()Lazb;

    move-result-object v2

    .line 645
    .local v2, "dingQuotaObject":Lazb;
    if-eqz v2, :cond_17

    iget v9, v2, Lazb;->e:I

    if-lez v9, :cond_17

    iget v9, v2, Lazb;->e:I

    if-le v7, v9, :cond_17

    .line 648
    iget-object v9, p0, Lbad;->a:Lbac$b;

    invoke-interface {v9}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v9

    sget v10, Laxp$i;->dt_ding_create_warning_overlimit_by_times_at:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, v2, Lazb;->e:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcms;->a(Ljava/lang/String;)V

    .line 11134
    const-string/jumbo v9, "ding_send_limit_single"

    invoke-static {v9}, Lbjz;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 654
    :cond_17
    if-eqz v2, :cond_18

    iget v9, v2, Lazb;->a:I

    if-lez v9, :cond_18

    iget v9, v2, Lazb;->a:I

    if-le v7, v9, :cond_18

    .line 657
    iget-object v9, p0, Lbad;->a:Lbac$b;

    invoke-interface {v9}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v9

    sget v10, Laxp$i;->dt_ding_create_warning_overlimit_by_day_at_at:I

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, v2, Lazb;->c:I

    .line 658
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget v13, v2, Lazb;->a:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 657
    invoke-virtual {v9, v10, v11}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcms;->a(Ljava/lang/String;)V

    .line 11138
    const-string/jumbo v9, "ding_send_limit_daily"

    invoke-static {v9}, Lbjz;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 663
    :cond_18
    invoke-direct {p0, v6, p1}, Lbad;->a(Ljava/util/Collection;Z)V

    goto/16 :goto_0
.end method

.method private x()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 282
    iget-object v0, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getDingIdStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbad;->z:Ljava/lang/String;

    .line 8289
    iget-object v0, p0, Lbad;->a:Lbac$b;

    sget v3, Laxp$i;->dt_ding_list_conference_normal:I

    invoke-interface {v0, v3}, Lbac$b;->a(I)V

    .line 8290
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbad;->A:Ljava/lang/String;

    .line 8300
    iget-object v0, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getCid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbad;->w:Ljava/lang/String;

    .line 8301
    iget-object v0, p0, Lbad;->a:Lbac$b;

    iget-object v3, p0, Lbad;->w:Ljava/lang/String;

    invoke-interface {v0, v3}, Lbac$b;->b(Ljava/lang/String;)V

    .line 8304
    iget-object v0, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getSourceFrom()I

    move-result v0

    iput v0, p0, Lbad;->c:I

    .line 8305
    iget-object v0, p0, Lbad;->a:Lbac$b;

    iget v3, p0, Lbad;->c:I

    invoke-interface {v0, v3}, Lbac$b;->b(I)V

    .line 8307
    iget-object v0, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->isTelMeeting()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 8308
    sget-object v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;->MEETING_TEL:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    iput-object v0, p0, Lbad;->m:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    .line 8309
    iget-object v0, p0, Lbad;->a:Lbac$b;

    invoke-interface {v0, v2}, Lbac$b;->k(Z)V

    .line 8338
    :cond_0
    :goto_0
    iget-object v0, p0, Lbad;->a:Lbac$b;

    iget-object v3, p0, Lbad;->m:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    invoke-interface {v0, v3, v2}, Lbac$b;->a(Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;Z)V

    .line 8341
    iget-object v0, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8342
    iget-object v0, p0, Lbad;->a:Lbac$b;

    iget-object v3, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lbac$b;->a(Ljava/lang/CharSequence;)V

    .line 8345
    :cond_1
    iget-object v0, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    iput-object v0, p0, Lbad;->u:Lcom/alibaba/wukong/im/Message;

    .line 8346
    iget-object v0, p0, Lbad;->u:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_2

    .line 8414
    iget-object v0, p0, Lbad;->u:Lcom/alibaba/wukong/im/Message;

    if-nez v0, :cond_d

    .line 8415
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v3, "[CreateEventActivity]message null"

    aput-object v3, v0, v2

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 8350
    :cond_2
    :goto_1
    iget-object v0, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getAttachment()Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8351
    iget-object v0, p0, Lbad;->a:Lbac$b;

    new-instance v3, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    iget-object v4, p0, Lbad;->a:Lbac$b;

    invoke-interface {v4}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v5}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getAttachment()Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    move-result-object v5

    iget-object v6, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->isContentEditable()Z

    move-result v6

    iget-object v7, p0, Lbad;->z:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;-><init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;ZLjava/lang/String;)V

    invoke-interface {v0, v3}, Lbac$b;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V

    .line 8355
    :cond_3
    iget-object v0, p0, Lbad;->a:Lbac$b;

    iget-boolean v3, p0, Lbad;->y:Z

    invoke-interface {v0, v3}, Lbac$b;->h(Z)V

    .line 8358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8359
    iget-object v3, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getSelectedUsers()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 8360
    iget-object v3, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getSelectedUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 8362
    :cond_4
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 8363
    iget-object v3, p0, Lbad;->x:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8364
    iget-object v0, p0, Lbad;->x:Ljava/util/ArrayList;

    invoke-static {v0}, Lbkf;->a(Ljava/lang/Iterable;)V

    .line 8365
    iget-object v0, p0, Lbad;->a:Lbac$b;

    iget-object v3, p0, Lbad;->x:Ljava/util/ArrayList;

    invoke-interface {v0, v3, v2}, Lbac$b;->a(Ljava/util/List;Z)V

    .line 8366
    iget-object v0, p0, Lbad;->a:Lbac$b;

    new-array v1, v1, [Ljava/lang/Long;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lbac$b;->a(Ljava/util/List;)V

    .line 8369
    iget-object v0, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lbad;->e:J

    .line 8370
    iget-wide v0, p0, Lbad;->e:J

    cmp-long v0, v0, v10

    if-gtz v0, :cond_5

    .line 8371
    invoke-static {}, Lbkq;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lbad;->e:J

    .line 8373
    :cond_5
    iget-object v0, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getEndTime()J

    move-result-wide v0

    iput-wide v0, p0, Lbad;->f:J

    .line 8374
    iget-wide v0, p0, Lbad;->f:J

    iget-wide v4, p0, Lbad;->e:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_6

    .line 8375
    iget-wide v0, p0, Lbad;->e:J

    const-wide/32 v4, 0x36ee80

    add-long/2addr v0, v4

    iput-wide v0, p0, Lbad;->f:J

    .line 8377
    :cond_6
    iget-wide v0, p0, Lbad;->e:J

    invoke-static {v0, v1}, Lbkq;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lbad;->i:J

    .line 8378
    iget-wide v0, p0, Lbad;->f:J

    invoke-static {v0, v1}, Lbkq;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lbad;->j:J

    .line 8379
    invoke-virtual {p0}, Lbad;->f()V

    .line 8380
    invoke-virtual {p0}, Lbad;->j()V

    .line 8383
    iget-object v1, p0, Lbad;->a:Lbac$b;

    iget-object v0, p0, Lbad;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lbad;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    invoke-interface {v1, v2, v0}, Lbac$b;->a(ZI)V

    .line 8384
    iget-object v0, p0, Lbad;->a:Lbac$b;

    sget v1, Laxp$i;->ding_remind_type:I

    invoke-interface {v0, v1}, Lbac$b;->d(I)V

    .line 8385
    iget-object v0, p0, Lbad;->a:Lbac$b;

    iget-object v1, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getAlertType()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v1

    invoke-interface {v0, v1}, Lbac$b;->a(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)V

    .line 8388
    iget-object v0, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getMeetingRemindType()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v0

    iput-object v0, p0, Lbad;->l:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 8389
    iget-object v0, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getMeetingRemindMinutes()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->fromValue(J)Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;

    move-result-object v0

    .line 8390
    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->NOT_ALL_DAY_VALUES:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lbad;->k:I

    .line 8391
    invoke-virtual {p0}, Lbad;->k()V

    .line 8394
    iget-object v0, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getRecorderId()J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-lez v0, :cond_7

    .line 8395
    iget-object v0, p0, Lbad;->a:Lbac$b;

    iget-object v1, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getRecorderId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lbac$b;->a(Ljava/lang/Long;Z)V

    .line 8396
    iget-object v0, p0, Lbad;->a:Lbac$b;

    iget-object v1, p0, Lbad;->x:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lbac$b;->a(Ljava/util/ArrayList;)V

    .line 8400
    :cond_7
    iget-object v0, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->isContentEditable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 8401
    iget-object v0, p0, Lbad;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->p()V

    .line 8405
    :cond_8
    iget-object v0, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getCycleRemindRuleObject()Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->convertToFrequency(Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;)Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    move-result-object v0

    .line 8406
    iput-object v0, p0, Lbad;->r:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    .line 8407
    iget-object v1, p0, Lbad;->a:Lbac$b;

    invoke-interface {v1, v0}, Lbac$b;->a(Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;)V

    .line 8410
    invoke-virtual {p0}, Lbad;->l()V

    .line 285
    invoke-virtual {p0}, Lbad;->e()V

    .line 286
    return-void

    .line 8310
    :cond_9
    iget-object v0, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->isVideoMeeting()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 8311
    sget-object v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;->MEETING_VIDEO:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    iput-object v0, p0, Lbad;->m:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    .line 8312
    iget-object v0, p0, Lbad;->a:Lbac$b;

    invoke-interface {v0, v2}, Lbac$b;->j(Z)V

    .line 8313
    iget-object v0, p0, Lbad;->a:Lbac$b;

    invoke-interface {v0, v2}, Lbac$b;->k(Z)V

    goto/16 :goto_0

    .line 8315
    :cond_a
    sget-object v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;->MEETING:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    iput-object v0, p0, Lbad;->m:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    .line 8316
    iget-object v0, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getLocation()Ljava/lang/String;

    move-result-object v3

    .line 8318
    const-string/jumbo v0, ""

    .line 8319
    iget-object v4, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getLocationCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getLocationOrgId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 8320
    iget-object v0, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getLocationCode()Ljava/lang/String;

    move-result-object v0

    .line 8324
    :cond_b
    iget-object v4, p0, Lbad;->a:Lbac$b;

    invoke-interface {v4, v3, v0}, Lbac$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8325
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 8327
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getLocationOrgId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 8328
    new-instance v4, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;

    invoke-direct {v4}, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;-><init>()V

    iput-object v4, p0, Lbad;->n:Lcom/alibaba/android/ding/data/object/DingMeetingLocation;

    .line 8329
    iget-object v4, p0, Lbad;->n:Lcom/alibaba/android/ding/data/object/DingMeetingLocation;

    invoke-virtual {v4, v3}, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;->setLocationName(Ljava/lang/String;)V

    .line 8330
    iget-object v3, p0, Lbad;->n:Lcom/alibaba/android/ding/data/object/DingMeetingLocation;

    invoke-virtual {v3, v0}, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;->setLocationCode(Ljava/lang/String;)V

    .line 8331
    iget-object v0, p0, Lbad;->n:Lcom/alibaba/android/ding/data/object/DingMeetingLocation;

    iget-object v3, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getLocationOrgId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;->setOrgId(Ljava/lang/String;)V

    .line 8334
    :cond_c
    iget-object v0, p0, Lbad;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->g()Landroid/text/Editable;

    move-result-object v0

    .line 8335
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-static {v0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto/16 :goto_0

    .line 8418
    :cond_d
    iget-object v0, p0, Lbad;->u:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 8419
    if-nez v0, :cond_e

    .line 8420
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v3, "[CreateEventActivity]message content null"

    aput-object v3, v0, v2

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 8423
    :cond_e
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 8502
    :cond_f
    :goto_3
    :sswitch_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v3, p0, Lbad;->w:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 8503
    cmp-long v0, v4, v10

    if-eqz v0, :cond_2

    .line 8507
    iget-object v0, p0, Lbad;->u:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lbad;->u:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v6

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-eqz v0, :cond_12

    .line 8510
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 8519
    :goto_4
    iget-object v3, p0, Lbad;->x:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8520
    iget-object v0, p0, Lbad;->x:Ljava/util/ArrayList;

    invoke-static {v0}, Lbkf;->a(Ljava/lang/Iterable;)V

    goto/16 :goto_1

    .line 8425
    :sswitch_1
    instance-of v3, v0, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    if-eqz v3, :cond_f

    .line 8426
    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    .line 8427
    iget-object v3, p0, Lbad;->u:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v3

    .line 8428
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 8429
    if-eqz v0, :cond_f

    .line 8430
    invoke-static {}, Lbju;->p()Z

    .line 8431
    iget-object v3, p0, Lbad;->a:Lbac$b;

    invoke-interface {v3, v1}, Lbac$b;->e(Z)V

    .line 8432
    iget-object v3, p0, Lbad;->a:Lbac$b;

    invoke-interface {v3, v1}, Lbac$b;->f(Z)V

    .line 8437
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v3

    iget-object v4, p0, Lbad;->a:Lbac$b;

    invoke-interface {v4}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcok;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    .line 8438
    if-eqz v0, :cond_10

    .line 8439
    iget-object v3, p0, Lbad;->a:Lbac$b;

    invoke-interface {v3, v0}, Lbac$b;->a(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 8441
    :cond_10
    iget-object v0, p0, Lbad;->a:Lbac$b;

    const-string/jumbo v3, ""

    invoke-interface {v0, v3}, Lbac$b;->a(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 8447
    :sswitch_2
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v3, p0, Lbad;->u:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v0

    .line 8448
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 8449
    iget-object v3, p0, Lbad;->u:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v3

    invoke-static {v0, v3}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 8450
    if-eqz v0, :cond_f

    .line 8451
    invoke-static {}, Lbju;->p()Z

    .line 8452
    iget-object v3, p0, Lbad;->a:Lbac$b;

    invoke-interface {v3, v1}, Lbac$b;->e(Z)V

    .line 8453
    iget-object v3, p0, Lbad;->a:Lbac$b;

    invoke-interface {v3, v1}, Lbac$b;->f(Z)V

    .line 8458
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v3

    iget-object v4, p0, Lbad;->a:Lbac$b;

    invoke-interface {v4}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcok;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    .line 8459
    iget-object v3, p0, Lbad;->a:Lbac$b;

    invoke-interface {v3, v0}, Lbac$b;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 8468
    :sswitch_3
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v3, p0, Lbad;->u:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->d(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lbad;->y:Z

    .line 8469
    iget-object v0, p0, Lbad;->a:Lbac$b;

    iget-object v3, p0, Lbad;->a:Lbac$b;

    invoke-interface {v3}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lbad;->u:Lcom/alibaba/wukong/im/Message;

    invoke-static {v3, v4}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->b(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v3

    invoke-interface {v0, v3}, Lbac$b;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V

    goto/16 :goto_3

    :cond_11
    move v0, v2

    .line 8468
    goto :goto_5

    .line 8475
    :sswitch_4
    iget-object v0, p0, Lbad;->a:Lbac$b;

    iget-object v3, p0, Lbad;->a:Lbac$b;

    invoke-interface {v3}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lbad;->u:Lcom/alibaba/wukong/im/Message;

    invoke-static {v3, v4}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->b(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v3

    invoke-interface {v0, v3}, Lbac$b;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V

    goto/16 :goto_3

    .line 8478
    :sswitch_5
    iget-object v0, p0, Lbad;->a:Lbac$b;

    iget-object v3, p0, Lbad;->a:Lbac$b;

    invoke-interface {v3}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lbad;->u:Lcom/alibaba/wukong/im/Message;

    invoke-static {v3, v4}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->b(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v3

    invoke-interface {v0, v3}, Lbac$b;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V

    .line 8479
    iget-object v0, p0, Lbad;->a:Lbac$b;

    invoke-interface {v0, v1}, Lbac$b;->g(Z)V

    goto/16 :goto_3

    .line 8482
    :sswitch_6
    iget-object v0, p0, Lbad;->u:Lcom/alibaba/wukong/im/Message;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lbad;->u:Lcom/alibaba/wukong/im/Message;

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;

    if-eqz v0, :cond_f

    .line 8485
    iget-object v0, p0, Lbad;->u:Lcom/alibaba/wukong/im/Message;

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;->text:Ljava/lang/String;

    .line 8486
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 8487
    invoke-static {}, Lbju;->p()Z

    .line 8488
    iget-object v3, p0, Lbad;->a:Lbac$b;

    invoke-interface {v3, v1}, Lbac$b;->e(Z)V

    .line 8489
    iget-object v3, p0, Lbad;->a:Lbac$b;

    invoke-interface {v3, v1}, Lbac$b;->f(Z)V

    .line 8494
    iget-object v3, p0, Lbad;->a:Lbac$b;

    invoke-interface {v3, v0}, Lbac$b;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 8511
    :cond_12
    const-wide/32 v6, 0x40d1c1

    cmp-long v0, v4, v6

    if-nez v0, :cond_13

    .line 8513
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_4

    .line 8516
    :cond_13
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_4

    :cond_14
    move v0, v2

    .line 8383
    goto/16 :goto_2

    .line 8423
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_4
        0x3 -> :sswitch_0
        0x4 -> :sswitch_3
        0x66 -> :sswitch_4
        0x12c -> :sswitch_4
        0x12d -> :sswitch_4
        0x190 -> :sswitch_5
        0x1f4 -> :sswitch_3
        0x1f5 -> :sswitch_3
        0x2bc -> :sswitch_6
        0x4b0 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public final a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 126
    .line 6960
    iget-object v0, p0, Lbad;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v3

    .line 6859
    :goto_0
    if-eqz v0, :cond_7

    .line 6864
    iget-boolean v0, p0, Lbad;->v:Z

    if-nez v0, :cond_7

    invoke-static {}, Lbhg;->a()Lbhg;

    iget-object v0, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0}, Lbhg;->a(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6865
    iget-object v0, p0, Lbad;->t:Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;

    .line 6866
    if-nez v0, :cond_0

    .line 6867
    new-instance v0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;-><init>()V

    .line 6869
    :cond_0
    invoke-virtual {v0, v7}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->setBizType(I)V

    .line 6870
    iget-object v1, p0, Lbad;->m:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    if-eqz v1, :cond_1

    .line 6871
    iget-object v1, p0, Lbad;->m:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->setSubBizType(I)V

    .line 6873
    :cond_1
    iget-object v1, p0, Lbad;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->setContent(Ljava/lang/String;)V

    .line 6874
    iget-object v1, p0, Lbad;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->g()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->setLocation(Ljava/lang/String;)V

    .line 6875
    iget-boolean v1, p0, Lbad;->d:Z

    if-eqz v1, :cond_a

    iget-wide v4, p0, Lbad;->i:J

    :goto_2
    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->setMeetingStartTime(J)V

    .line 6876
    iget-boolean v1, p0, Lbad;->d:Z

    if-eqz v1, :cond_b

    iget-wide v4, p0, Lbad;->j:J

    :goto_3
    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->setMeetingEndTime(J)V

    .line 6877
    iget v1, p0, Lbad;->c:I

    if-eq v1, v7, :cond_2

    iget v1, p0, Lbad;->c:I

    const/16 v4, 0xe

    if-eq v1, v4, :cond_2

    .line 6880
    iget-object v1, p0, Lbad;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v1

    .line 6881
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 6882
    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->setReceiveUidList(Ljava/util/List;)V

    .line 6885
    :cond_2
    iget-object v1, p0, Lbad;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->i()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 6886
    iget-object v1, p0, Lbad;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->i()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->setSendType(I)V

    .line 6888
    :cond_3
    iget v1, p0, Lbad;->k:I

    invoke-static {v1, v6}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->getRemindMode(IZ)Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;

    move-result-object v1

    .line 6889
    if-eqz v1, :cond_4

    .line 6890
    invoke-virtual {v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->getMinutes()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->setMeetingRemindMinutes(I)V

    .line 6892
    :cond_4
    iget-object v1, p0, Lbad;->l:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    if-eqz v1, :cond_5

    .line 6893
    iget-object v1, p0, Lbad;->l:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->setMeetingRemindMinutesType(I)V

    .line 6895
    :cond_5
    iget-object v1, p0, Lbad;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->n()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lbad;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->l()Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 6896
    iget-object v1, p0, Lbad;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->l()Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    move-result-object v1

    .line 6897
    new-array v3, v3, [Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    aput-object v1, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->setDingAttachmentDataList(Ljava/util/List;)V

    .line 6899
    :cond_6
    iget-object v1, p0, Lbad;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->m()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->setRecorderId(J)V

    .line 6900
    iget-object v1, p0, Lbad;->r:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    invoke-static {v1, v2}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->genRepeatRemindInfo(Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;)Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;

    move-result-object v1

    .line 6901
    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->setCycleRemindRuleObject(Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;)V

    .line 6902
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v1

    invoke-virtual {v1, v0, v6, v2}, Lbhg;->a(Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;ILcma;)V

    .line 7406
    const-string/jumbo v0, "ding_create_switchback_autosave"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 127
    :cond_7
    invoke-super {p0}, Lbab;->a()V

    .line 128
    return-void

    :cond_8
    move v0, v6

    .line 6960
    goto/16 :goto_0

    .line 6874
    :cond_9
    iget-object v1, p0, Lbad;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->g()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 6875
    :cond_a
    iget-wide v4, p0, Lbad;->e:J

    goto/16 :goto_2

    .line 6876
    :cond_b
    iget-wide v4, p0, Lbad;->f:J

    goto/16 :goto_3
.end method

.method public final bridge synthetic a(J)V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Lbab;->a(J)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0, p1}, Lbab;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic a(Z)V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0, p1}, Lbab;->a(Z)V

    return-void
.end method

.method public final bridge synthetic b()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lbab;->b()V

    return-void
.end method

.method public final bridge synthetic b(J)V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Lbab;->b(J)V

    return-void
.end method

.method public final b(Z)V
    .locals 6
    .param p1, "fromDraft"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 246
    if-eqz p1, :cond_0

    .line 247
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    new-instance v0, Lbad$1;

    invoke-direct {v0, p0}, Lbad$1;-><init>(Lbad;)V

    const-class v4, Lcom/alibaba/wukong/Callback;

    iget-object v5, p0, Lbad;->a:Lbac$b;

    .line 273
    invoke-interface {v5}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v5

    .line 248
    invoke-static {v0, v4, v5}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 247
    invoke-virtual {v1, v2, v3, v0}, Lbhg;->a(ILcom/alibaba/android/ding/base/objects/DingCreateInfo;Lcom/alibaba/wukong/Callback;)V

    .line 279
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-direct {p0}, Lbad;->x()V

    goto :goto_0
.end method

.method public final bridge synthetic c()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lbab;->c()V

    return-void
.end method

.method public final bridge synthetic d()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lbab;->d()V

    return-void
.end method

.method public final bridge synthetic g()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lbab;->g()V

    return-void
.end method

.method public final bridge synthetic h()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lbab;->h()V

    return-void
.end method

.method public final bridge synthetic i()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lbab;->i()V

    return-void
.end method

.method public final bridge synthetic m()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lbab;->m()V

    return-void
.end method

.method public final bridge synthetic o()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lbab;->o()V

    return-void
.end method

.method public final bridge synthetic p()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lbab;->p()V

    return-void
.end method

.method public final bridge synthetic r()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lbab;->r()V

    return-void
.end method

.method public final s()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 108
    iget-object v0, p0, Lbad;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbad;->a:Lbac$b;

    .line 109
    invoke-interface {v0}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbad;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    :cond_0
    iget-object v0, p0, Lbad;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lbad;->c:I

    invoke-static {v0, v1}, Lbjm;->a(Landroid/app/Activity;I)V

    .line 111
    iget-object v0, p0, Lbad;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->e()V

    .line 122
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-static {}, Lbhg;->a()Lbhg;

    iget-object v0, p0, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v0}, Lbhg;->a(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lbad;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lbad;->c:I

    invoke-static {v0, v1}, Lbjm;->a(Landroid/app/Activity;I)V

    .line 4472
    const-string/jumbo v0, "create_event_giveup_click"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 5410
    const-string/jumbo v0, "ding_create_cancel_autosave"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lbad;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->e()V

    goto :goto_0

    .line 5931
    :cond_2
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lbad;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5932
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laxp$i;->dt_modify_event_alert_need_give_up:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 5933
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laxp$i;->dt_modify_event_alert_give_up_confirm:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbad$8;

    invoke-direct {v2, p0}, Lbad$8;-><init>(Lbad;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 5942
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laxp$i;->dt_modify_event_alert_give_up_cancel:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbad$9;

    invoke-direct {v2, p0}, Lbad$9;-><init>(Lbad;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 5947
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method public final t()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public final u()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 142
    iget-object v1, p0, Lbad;->a:Lbac$b;

    if-eqz v1, :cond_2

    .line 143
    iget-object v3, p0, Lbad;->a:Lbac$b;

    iget-object v1, p0, Lbad;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lbad;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    invoke-interface {v3, v2, v1}, Lbac$b;->a(ZI)V

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v0, "recorderDisplayUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v1, p0, Lbad;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lbad;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 148
    :cond_0
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_1
    iget-object v1, p0, Lbad;->a:Lbac$b;

    invoke-interface {v1, v0}, Lbac$b;->a(Ljava/util/ArrayList;)V

    .line 152
    invoke-virtual {p0}, Lbad;->n()V

    .line 154
    .end local v0    # "recorderDisplayUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    return-void

    :cond_3
    move v1, v2

    .line 143
    goto :goto_0
.end method

.method public final v()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbad;->c(Z)V

    .line 159
    return-void
.end method

.method public final w()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 163
    iget-object v1, p0, Lbad;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbad;->a:Lbac$b;

    .line 164
    invoke-interface {v1}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lbad;->a:Lbac$b;

    invoke-interface {v2}, Lbac$b;->m()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v0, "newReceiverUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v1, p0, Lbad;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lbad;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 169
    :cond_0
    iget-object v1, p0, Lbad;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->m()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v1, p0, Lbad;->a:Lbac$b;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lbac$b;->a(Ljava/util/List;Z)V

    .line 172
    .end local v0    # "newReceiverUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    return-void
.end method
