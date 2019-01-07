.class public final Lbae;
.super Lbab;
.source "EditEventActivityPresenter.java"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/lang/String;

.field private D:I

.field private E:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

.field private F:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

.field private G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;",
            ">;"
        }
    .end annotation
.end field

.field private H:Ljava/lang/Long;

.field private I:Ljava/lang/Long;

.field private J:I

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field t:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field u:Lbfv;

.field protected v:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

.field protected w:J

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

.field private y:Ljava/lang/String;

.field private z:J


# direct methods
.method public constructor <init>(Lbac$b;Landroid/content/Intent;)V
    .locals 5
    .param p1, "view"    # Lbac$b;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Lbab;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbae;->x:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbae;->B:Ljava/util/Collection;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbae;->G:Ljava/util/List;

    .line 96
    iput-object p1, p0, Lbae;->a:Lbac$b;

    .line 97
    invoke-interface {p1, p0}, Lbac$b;->setPresenter(Lcjd;)V

    .line 1155
    if-eqz p2, :cond_0

    .line 1158
    const-string/jumbo v0, "intent_key_create_ding_info"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    iput-object v0, p0, Lbae;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 1159
    const-string/jumbo v0, "scope"

    invoke-static {p2, v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbae;->J:I

    .line 1160
    const-string/jumbo v0, "unique_id"

    invoke-static {p2, v0}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbae;->K:Ljava/lang/String;

    .line 1161
    const-string/jumbo v0, "recurrence_id"

    invoke-static {p2, v0}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbae;->L:Ljava/lang/String;

    .line 1162
    iget-object v0, p0, Lbae;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    if-nez v0, :cond_1

    .line 1163
    const-string/jumbo v0, "[CreateEvent]handleIntent failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "createInfo null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    iget-object v0, p0, Lbae;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->e()V

    .line 1170
    :cond_0
    :goto_0
    return-void

    .line 1167
    :cond_1
    iget-object v0, p0, Lbae;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->isMeeting()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1168
    const-string/jumbo v0, "[CreateEvent]handleIntent failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "ding is not meeting"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    iget-object v0, p0, Lbae;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->e()V

    goto :goto_0

    .line 1172
    :cond_2
    iget-object v0, p0, Lbae;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getDingIdStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbae;->y:Ljava/lang/String;

    .line 1179
    iget-object v0, p0, Lbae;->a:Lbac$b;

    sget v2, Laxp$i;->dt_ding_activity_title_modify_event:I

    invoke-interface {v0, v2}, Lbac$b;->a(I)V

    .line 1180
    iget-object v0, p0, Lbae;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->j()V

    .line 1181
    iget-object v0, p0, Lbae;->a:Lbac$b;

    invoke-interface {v0, v1}, Lbac$b;->d(Z)V

    .line 1182
    iget-object v2, p0, Lbae;->a:Lbac$b;

    invoke-static {}, Lbju;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lbae;->J:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v2, v0}, Lbac$b;->l(Z)V

    .line 1184
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-object v2, p0, Lbae;->y:Ljava/lang/String;

    new-instance v0, Lbae$1;

    invoke-direct {v0, p0}, Lbae$1;-><init>(Lbae;)V

    const-class v3, Lcma;

    iget-object v4, p0, Lbae;->a:Lbac$b;

    .line 1206
    invoke-interface {v4}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v4

    .line 1184
    invoke-static {v0, v3, v4}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v2, v0}, Lbbp;->e(Ljava/lang/String;Lcma;)V

    .line 1175
    invoke-virtual {p0}, Lbae;->e()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1182
    goto :goto_1
.end method

.method static synthetic a(Lbae;)V
    .locals 12
    .param p0, "x0"    # Lbae;

    .prologue
    const/4 v9, 0x2

    const-wide/16 v10, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 58
    .line 11239
    iget-object v0, p0, Lbae;->t:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-nez v0, :cond_1

    .line 11240
    const-string/jumbo v0, "[CreateEvent]init failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "ding is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11241
    iget-object v0, p0, Lbae;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->e()V

    .line 11260
    :cond_0
    :goto_0
    return-void

    .line 11244
    :cond_1
    iget-object v0, p0, Lbae;->t:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 11681
    iget v0, v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E:I

    .line 11244
    if-eq v0, v9, :cond_2

    .line 11245
    const-string/jumbo v0, "[CreateEvent]init failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "ding is not calendar"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11246
    iget-object v0, p0, Lbae;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->e()V

    goto :goto_0

    .line 11249
    :cond_2
    iget-object v0, p0, Lbae;->t:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 11824
    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J:Lckm;

    invoke-virtual {v0}, Lckm;->a()Ljava/lang/Object;

    move-result-object v0

    .line 11249
    instance-of v0, v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    if-nez v0, :cond_3

    .line 11250
    const-string/jumbo v0, "[CreateEvent]init failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "eventsWrapperModel is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11251
    iget-object v0, p0, Lbae;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->e()V

    goto :goto_0

    .line 11254
    :cond_3
    iget-object v0, p0, Lbae;->t:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 12824
    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J:Lckm;

    invoke-virtual {v0}, Lckm;->a()Ljava/lang/Object;

    move-result-object v0

    .line 11254
    check-cast v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    .line 11255
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;->eventModels:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;->eventModels:Ljava/util/List;

    .line 11256
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;->eventModels:Ljava/util/List;

    .line 11257
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    .line 11258
    :cond_4
    const-string/jumbo v0, "[CreateEvent]init failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "mainEvent is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11259
    iget-object v0, p0, Lbae;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->e()V

    goto :goto_0

    .line 11262
    :cond_5
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;->eventsWrapperId:Ljava/lang/Long;

    .line 13044
    invoke-static {v1, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 11262
    iput-wide v4, p0, Lbae;->z:J

    .line 11264
    iget-object v1, p0, Lbae;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->k()V

    .line 11265
    iget-object v1, p0, Lbae;->a:Lbac$b;

    invoke-interface {v1, v2}, Lbac$b;->d(Z)V

    .line 11266
    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;->eventModels:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;

    .line 11268
    iget-object v1, p0, Lbae;->a:Lbac$b;

    invoke-interface {v1, v2}, Lbac$b;->b(Z)V

    .line 11269
    iget-object v1, p0, Lbae;->a:Lbac$b;

    invoke-interface {v1, v2}, Lbac$b;->c(Z)V

    .line 11272
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->subject:Ljava/lang/String;

    iput-object v1, p0, Lbae;->C:Ljava/lang/String;

    .line 11273
    iget-object v1, p0, Lbae;->a:Lbac$b;

    iget-object v4, p0, Lbae;->C:Ljava/lang/String;

    invoke-interface {v1, v4}, Lbac$b;->a(Ljava/lang/CharSequence;)V

    .line 11276
    iget-object v1, p0, Lbae;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lbae;->t:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 11277
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Z()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lbae;->t:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 11278
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Z()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 11280
    iget-object v1, p0, Lbae;->G:Ljava/util/List;

    iget-object v4, p0, Lbae;->t:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Z()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11281
    iget-object v1, p0, Lbae;->t:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Z()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iput-object v1, p0, Lbae;->F:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 11282
    iget-object v4, p0, Lbae;->a:Lbac$b;

    new-instance v5, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    iget-object v1, p0, Lbae;->a:Lbac$b;

    .line 11283
    invoke-interface {v1}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lbae;->F:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v1, p0, Lbae;->G:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v2, :cond_10

    move v1, v2

    :goto_1
    iget-object v8, p0, Lbae;->y:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v1, v8}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;-><init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;ZLjava/lang/String;)V

    .line 11282
    invoke-interface {v4, v5}, Lbac$b;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V

    .line 11287
    :cond_6
    iget-object v1, p0, Lbae;->t:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 14689
    iget v1, v1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->F:I

    .line 11287
    if-nez v1, :cond_11

    .line 11288
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->location:Ljava/lang/String;

    iput-object v1, p0, Lbae;->A:Ljava/lang/String;

    .line 11290
    const-string/jumbo v1, ""

    .line 11291
    iget-object v4, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->locationCode:Ljava/lang/Long;

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->locationCode:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-lez v4, :cond_7

    iget-object v4, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->locationOrgId:Ljava/lang/Long;

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->locationOrgId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-lez v4, :cond_7

    .line 11292
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->locationCode:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 11295
    :cond_7
    iget-object v4, p0, Lbae;->a:Lbac$b;

    iget-object v5, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->location:Ljava/lang/String;

    invoke-interface {v4, v5, v1}, Lbac$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11296
    iget-object v4, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->location:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 11297
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->locationOrgId:Ljava/lang/Long;

    if-eqz v4, :cond_8

    iget-object v4, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->locationOrgId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-lez v4, :cond_8

    .line 11298
    new-instance v4, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;

    invoke-direct {v4}, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;-><init>()V

    iput-object v4, p0, Lbae;->n:Lcom/alibaba/android/ding/data/object/DingMeetingLocation;

    .line 11299
    iget-object v4, p0, Lbae;->n:Lcom/alibaba/android/ding/data/object/DingMeetingLocation;

    iget-object v5, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->location:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;->setLocationName(Ljava/lang/String;)V

    .line 11300
    iget-object v4, p0, Lbae;->n:Lcom/alibaba/android/ding/data/object/DingMeetingLocation;

    invoke-virtual {v4, v1}, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;->setLocationCode(Ljava/lang/String;)V

    .line 11301
    iget-object v1, p0, Lbae;->n:Lcom/alibaba/android/ding/data/object/DingMeetingLocation;

    iget-object v4, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->locationOrgId:Ljava/lang/Long;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;->setOrgId(Ljava/lang/String;)V

    .line 11305
    :cond_8
    iget-object v1, p0, Lbae;->t:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {p0, v1}, Lbae;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 11306
    iget-object v1, p0, Lbae;->o:Lcom/amap/api/services/core/PoiItem;

    iput-object v1, p0, Lbae;->p:Lcom/amap/api/services/core/PoiItem;

    .line 11307
    iget-object v1, p0, Lbae;->a:Lbac$b;

    iget-object v4, p0, Lbae;->o:Lcom/amap/api/services/core/PoiItem;

    invoke-interface {v1, v4}, Lbac$b;->a(Lcom/amap/api/services/core/PoiItem;)V

    .line 11309
    iget-object v1, p0, Lbae;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->g()Landroid/text/Editable;

    move-result-object v1

    .line 11310
    if-eqz v1, :cond_9

    .line 11311
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v4

    invoke-static {v1, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 11321
    :cond_9
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11322
    iget-object v4, p0, Lbae;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getSelectedUsers()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 11323
    iget-object v4, p0, Lbae;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getSelectedUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 11325
    :cond_a
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 11326
    invoke-static {v1}, Lbkf;->a(Ljava/lang/Iterable;)V

    .line 11327
    iget-object v4, p0, Lbae;->x:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11328
    iget-object v4, p0, Lbae;->B:Ljava/util/Collection;

    invoke-interface {v4, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 11329
    iget-object v1, p0, Lbae;->a:Lbac$b;

    iget-object v4, p0, Lbae;->x:Ljava/util/ArrayList;

    invoke-interface {v1, v4, v2}, Lbac$b;->a(Ljava/util/List;Z)V

    .line 11330
    iget-object v1, p0, Lbae;->a:Lbac$b;

    iget-object v2, p0, Lbae;->x:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lbac$b;->a(Ljava/util/List;)V

    .line 11331
    iget-object v1, p0, Lbae;->a:Lbac$b;

    iget-object v2, p0, Lbae;->a:Lbac$b;

    invoke-interface {v2}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v2

    sget v4, Laxp$i;->dt_create_event_item_person:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lbac$b;->a(Ljava/lang/String;)V

    .line 11334
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->startTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lbae;->g:J

    .line 11335
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->startTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lbae;->e:J

    .line 11336
    invoke-virtual {p0}, Lbae;->f()V

    .line 11339
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->endTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lbae;->h:J

    .line 11340
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->endTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lbae;->f:J

    .line 11341
    invoke-virtual {p0}, Lbae;->j()V

    .line 11343
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->extension:Ljava/util/Map;

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->extension:Ljava/util/Map;

    const-string/jumbo v2, "roomBookingId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 11344
    iget-object v1, p0, Lbae;->a:Lbac$b;

    const/16 v2, 0x11

    invoke-interface {v1, v2}, Lbac$b;->b(I)V

    .line 11345
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->extension:Ljava/util/Map;

    const-string/jumbo v2, "locationCorpId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lbae;->M:Ljava/lang/String;

    .line 11346
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->extension:Ljava/util/Map;

    const-string/jumbo v2, "roomBookingId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lbae;->N:Ljava/lang/String;

    .line 11351
    :cond_b
    iget-object v1, p0, Lbae;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->o()V

    .line 11352
    iget-object v1, p0, Lbae;->a:Lbac$b;

    sget-object v2, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-interface {v1, v2}, Lbac$b;->a(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)V

    .line 11353
    iget-object v1, p0, Lbae;->a:Lbac$b;

    sget v2, Laxp$i;->ding_remind_type:I

    invoke-interface {v1, v2}, Lbac$b;->d(I)V

    .line 11354
    iget-object v2, p0, Lbae;->a:Lbac$b;

    iget-object v1, p0, Lbae;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lbae;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3
    invoke-interface {v2, v3, v1}, Lbac$b;->a(ZI)V

    .line 11357
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->alarmList:Ljava/util/List;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->alarmList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->alarmList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 11358
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->alarmList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 18044
    invoke-static {v1, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 11359
    invoke-static {v4, v5}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->fromValue(J)Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;

    move-result-object v1

    .line 11360
    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->NOT_ALL_DAY_VALUES:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lbae;->k:I

    .line 11361
    iget v1, p0, Lbae;->k:I

    iput v1, p0, Lbae;->D:I

    .line 11363
    :cond_c
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->alarmType:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    .line 11364
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->alarmType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v1

    .line 18343
    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->CALL:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    if-ne v1, v2, :cond_14

    .line 18344
    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->CALL:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 11364
    :goto_4
    iput-object v1, p0, Lbae;->l:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 11365
    iget-object v1, p0, Lbae;->l:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    iput-object v1, p0, Lbae;->E:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 11367
    :cond_d
    invoke-virtual {p0}, Lbae;->k()V

    .line 11370
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->recurRuleList:Ljava/util/List;

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->recurRuleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 11371
    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->recurRuleList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;

    .line 11372
    if-eqz v0, :cond_e

    .line 11373
    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->fromRecurRuleModel(Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;)Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;

    move-result-object v1

    .line 11374
    invoke-static {v1}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->convertToFrequency(Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;)Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    move-result-object v1

    iput-object v1, p0, Lbae;->r:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    .line 11375
    iget-object v1, p0, Lbae;->r:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    iput-object v1, p0, Lbae;->v:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    .line 11376
    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->until:Ljava/lang/Long;

    .line 19044
    invoke-static {v0, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 11376
    iput-wide v0, p0, Lbae;->s:J

    .line 11377
    iget-wide v0, p0, Lbae;->s:J

    iput-wide v0, p0, Lbae;->w:J

    .line 11380
    :cond_e
    iget-object v0, p0, Lbae;->a:Lbac$b;

    iget-object v1, p0, Lbae;->r:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    invoke-interface {v0, v1}, Lbac$b;->a(Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;)V

    .line 11383
    iget-object v0, p0, Lbae;->u:Lbfv;

    if-eqz v0, :cond_f

    .line 11384
    iget-object v0, p0, Lbae;->u:Lbfv;

    .line 20036
    iget-wide v0, v0, Lbfv;->d:J

    .line 11384
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lbae;->H:Ljava/lang/Long;

    .line 11385
    iget-object v0, p0, Lbae;->u:Lbfv;

    .line 21036
    iget-wide v0, v0, Lbfv;->d:J

    .line 11385
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lbae;->I:Ljava/lang/Long;

    .line 11387
    :cond_f
    iget-object v0, p0, Lbae;->a:Lbac$b;

    iget-object v1, p0, Lbae;->I:Ljava/lang/Long;

    iget-object v2, p0, Lbae;->t:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v3, p0, Lbae;->u:Lbfv;

    invoke-static {v2, v3}, Lbkh;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lbfv;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lbac$b;->a(Ljava/lang/Long;Z)V

    .line 11388
    iget-object v0, p0, Lbae;->a:Lbac$b;

    iget-object v1, p0, Lbae;->x:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lbac$b;->a(Ljava/util/ArrayList;)V

    .line 11390
    invoke-virtual {p0}, Lbae;->l()V

    .line 11393
    iget-object v0, p0, Lbae;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->isContentEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11394
    iget-object v0, p0, Lbae;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->p()V

    goto/16 :goto_0

    :cond_10
    move v1, v3

    .line 11283
    goto/16 :goto_1

    .line 11313
    :cond_11
    iget-object v1, p0, Lbae;->t:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 15689
    iget v1, v1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->F:I

    .line 11313
    if-ne v1, v2, :cond_12

    .line 11314
    iget-object v1, p0, Lbae;->a:Lbac$b;

    invoke-interface {v1, v3}, Lbac$b;->k(Z)V

    goto/16 :goto_2

    .line 11315
    :cond_12
    iget-object v1, p0, Lbae;->t:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 16689
    iget v1, v1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->F:I

    .line 11315
    if-ne v1, v9, :cond_9

    .line 11316
    iget-object v1, p0, Lbae;->a:Lbac$b;

    invoke-interface {v1, v3}, Lbac$b;->j(Z)V

    .line 11317
    iget-object v1, p0, Lbae;->a:Lbac$b;

    invoke-interface {v1, v3}, Lbac$b;->k(Z)V

    goto/16 :goto_2

    :cond_13
    move v1, v3

    .line 11354
    goto/16 :goto_3

    .line 18345
    :cond_14
    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->SMS:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    if-ne v1, v2, :cond_15

    .line 18346
    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->SMS:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    goto/16 :goto_4

    .line 18348
    :cond_15
    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    goto/16 :goto_4
.end method

.method static synthetic a(Lbae;Z)V
    .locals 1
    .param p0, "x0"    # Lbae;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbae;->c(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 20
    .param p1, "ignorePrevent"    # Z

    .prologue
    .line 400
    invoke-direct/range {p0 .. p0}, Lbae;->x()Z

    move-result v3

    if-nez v3, :cond_0

    .line 401
    sget v3, Laxp$i;->dt_ding_conference_edit_no_change:I

    invoke-static {v3}, Lcms;->a(I)V

    .line 530
    :goto_0
    return-void

    .line 406
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->a:Lbac$b;

    invoke-interface {v3}, Lbac$b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->a:Lbac$b;

    invoke-interface {v3}, Lbac$b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 407
    :cond_1
    sget v3, Laxp$i;->dt_create_event_subject_empty_tip:I

    invoke-static {v3}, Lcms;->a(I)V

    goto :goto_0

    .line 412
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->a:Lbac$b;

    invoke-interface {v3}, Lbac$b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->a:Lbac$b;

    invoke-interface {v3}, Lbac$b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x1388

    if-le v3, v4, :cond_3

    .line 413
    sget v3, Laxp$i;->dt_create_event_subject_too_long_tip:I

    invoke-static {v3}, Lcms;->a(I)V

    goto :goto_0

    .line 418
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->a:Lbac$b;

    invoke-interface {v3}, Lbac$b;->g()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->a:Lbac$b;

    invoke-interface {v3}, Lbac$b;->g()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    const/16 v4, 0x3e8

    if-le v3, v4, :cond_4

    .line 419
    sget v3, Laxp$i;->dt_create_event_address_too_long_tip:I

    invoke-static {v3}, Lcms;->a(I)V

    goto :goto_0

    .line 424
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lbae;->d:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-wide v4, v0, Lbae;->i:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lbae;->j:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_7

    .line 425
    :cond_5
    sget v3, Laxp$i;->dt_create_event_start_time_after_end_time_tip:I

    invoke-static {v3}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 424
    :cond_6
    move-object/from16 v0, p0

    iget-wide v4, v0, Lbae;->e:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lbae;->f:J

    cmp-long v3, v4, v8

    if-gtz v3, :cond_5

    .line 430
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lbae;->d:Z

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-wide v4, v0, Lbae;->j:J

    const-wide/32 v8, 0x5265c00

    add-long v16, v4, v8

    .line 431
    .local v16, "endTime":J
    :goto_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lbae;->s:J

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-lez v3, :cond_9

    move-object/from16 v0, p0

    iget-wide v4, v0, Lbae;->s:J

    cmp-long v3, v16, v4

    if-lez v3, :cond_9

    .line 432
    sget v3, Laxp$i;->dt_ding_conference_create_date_error:I

    invoke-static {v3}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 430
    .end local v16    # "endTime":J
    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lbae;->f:J

    move-wide/from16 v16, v0

    goto :goto_1

    .line 437
    .restart local v16    # "endTime":J
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->a:Lbac$b;

    invoke-interface {v3}, Lbac$b;->l()Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    move-result-object v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->a:Lbac$b;

    invoke-interface {v3}, Lbac$b;->n()Z

    move-result v3

    if-nez v3, :cond_a

    .line 438
    sget v3, Laxp$i;->ding_attach_uploading:I

    invoke-static {v3}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 443
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->a:Lbac$b;

    invoke-interface {v3}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v13

    .line 444
    .local v13, "allReceiverUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v13, :cond_c

    .line 445
    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->m:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;->getValue()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->m:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;->getValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_c

    .line 446
    :cond_b
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {}, Lbbi;->a()Lbbi;

    move-object/from16 v0, p0

    iget-object v4, v0, Lbae;->m:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;->getValue()I

    move-result v4

    invoke-static {v4}, Lbbi;->a(I)I

    move-result v4

    if-le v3, v4, :cond_c

    .line 448
    invoke-static {}, Lbbi;->a()Lbbi;

    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->m:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;->getValue()I

    move-result v3

    .line 449
    invoke-static {}, Lbbi;->a()Lbbi;

    move-object/from16 v0, p0

    iget-object v4, v0, Lbae;->m:Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;->getValue()I

    move-result v4

    invoke-static {v4}, Lbbi;->a(I)I

    move-result v4

    .line 448
    invoke-static {v3, v4}, Lbbi;->a(II)V

    goto/16 :goto_0

    .line 455
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->a:Lbac$b;

    invoke-interface {v3}, Lbac$b;->g()Landroid/text/Editable;

    move-result-object v3

    if-nez v3, :cond_13

    const/4 v7, 0x0

    .line 456
    .local v7, "address":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->n:Lcom/alibaba/android/ding/data/object/DingMeetingLocation;

    if-eqz v3, :cond_d

    .line 457
    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->n:Lcom/alibaba/android/ding/data/object/DingMeetingLocation;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;->getLocationName()Ljava/lang/String;

    move-result-object v7

    .line 459
    :cond_d
    new-instance v2, Lbeu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->y:Ljava/lang/String;

    .line 2109
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v3

    .line 460
    move-object/from16 v0, p0

    iget-wide v5, v0, Lbae;->z:J

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lbae;->d:Z

    if-eqz v8, :cond_14

    move-object/from16 v0, p0

    iget-wide v8, v0, Lbae;->i:J

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lbae;->d:Z

    if-eqz v10, :cond_15

    move-object/from16 v0, p0

    iget-wide v10, v0, Lbae;->j:J

    :goto_4
    invoke-direct/range {v2 .. v11}, Lbeu;-><init>(JJLjava/lang/String;JJ)V

    .line 467
    .local v2, "dingEventsWrapperUpdateObject":Lbeu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->a:Lbac$b;

    invoke-interface {v3}, Lbac$b;->i()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v3

    invoke-static {v3}, Lbkh;->b(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->getValue()I

    move-result v3

    .line 2113
    iput v3, v2, Lbeu;->o:I

    .line 469
    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->a:Lbac$b;

    invoke-interface {v3}, Lbac$b;->f()Ljava/lang/String;

    move-result-object v3

    .line 3061
    iput-object v3, v2, Lbeu;->f:Ljava/lang/String;

    .line 470
    invoke-direct/range {p0 .. p0}, Lbae;->y()Ljava/util/List;

    move-result-object v3

    .line 3077
    iput-object v3, v2, Lbeu;->j:Ljava/util/List;

    .line 472
    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->n:Lcom/alibaba/android/ding/data/object/DingMeetingLocation;

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->n:Lcom/alibaba/android/ding/data/object/DingMeetingLocation;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;->getLocationCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 473
    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->n:Lcom/alibaba/android/ding/data/object/DingMeetingLocation;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;->getLocationCode()Ljava/lang/String;

    move-result-object v3

    .line 3109
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 4093
    iput-wide v4, v2, Lbeu;->l:J

    .line 474
    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->n:Lcom/alibaba/android/ding/data/object/DingMeetingLocation;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;->getOrgId()Ljava/lang/String;

    move-result-object v3

    .line 4109
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 5101
    iput-wide v4, v2, Lbeu;->m:J

    .line 478
    :cond_e
    move-object/from16 v0, p0

    iget v3, v0, Lbae;->k:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lbae;->d:Z

    invoke-static {v3, v4}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->getRemindMode(IZ)Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;

    move-result-object v18

    .line 479
    .local v18, "eventRemindMode":Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;
    sget-object v3, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->NONE:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;

    move-object/from16 v0, v18

    if-ne v0, v3, :cond_16

    .line 480
    const/4 v3, 0x0

    .line 6065
    iput-object v3, v2, Lbeu;->g:Ljava/util/List;

    .line 486
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->l:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-static {v3}, Lbkh;->b(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v12

    .line 487
    .local v12, "alarmTypeNotification":Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;
    invoke-virtual {v12}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->getValue()I

    move-result v3

    .line 7069
    iput v3, v2, Lbeu;->h:I

    .line 490
    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->G:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_17

    .line 492
    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->G:Ljava/util/List;

    .line 7073
    iput-object v3, v2, Lbeu;->i:Ljava/util/List;

    .line 501
    :cond_f
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->r:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->genRepeatRemindInfo(Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;)Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;

    move-result-object v14

    .line 502
    .local v14, "cycleRemindRuleObject":Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;
    if-eqz v14, :cond_10

    .line 503
    move-object/from16 v0, p0

    iget-wide v4, v0, Lbae;->s:J

    iput-wide v4, v14, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->until:J

    .line 504
    invoke-virtual {v14}, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->toRecurRuleModel()Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;

    move-result-object v3

    .line 8126
    if-eqz v3, :cond_10

    .line 8130
    iget-object v4, v2, Lbeu;->q:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->a:Lbac$b;

    invoke-interface {v3}, Lbac$b;->m()J

    move-result-wide v4

    .line 9085
    iput-wide v4, v2, Lbeu;->k:J

    .line 9109
    move/from16 v0, p1

    iput-boolean v0, v2, Lbeu;->n:Z

    .line 510
    invoke-virtual/range {p0 .. p0}, Lbae;->q()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbeu;->a(Ljava/util/Map;)V

    .line 513
    move-object/from16 v0, p0

    iget v3, v0, Lbae;->J:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_18

    .line 514
    move-object/from16 v0, p0

    iget v3, v0, Lbae;->J:I

    .line 9146
    iput v3, v2, Lbeu;->s:I

    .line 515
    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->K:Ljava/lang/String;

    .line 9150
    iput-object v3, v2, Lbeu;->t:Ljava/lang/String;

    .line 516
    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->L:Ljava/lang/String;

    .line 10138
    iput-object v3, v2, Lbeu;->r:Ljava/lang/String;

    .line 522
    :cond_11
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->N:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 523
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 524
    .local v19, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "locationCorpId"

    move-object/from16 v0, p0

    iget-object v4, v0, Lbae;->M:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    const-string/jumbo v3, "roomBookingId"

    move-object/from16 v0, p0

    iget-object v4, v0, Lbae;->N:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lbeu;->a(Ljava/util/Map;)V

    .line 10533
    .end local v19    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->a:Lbac$b;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lbac$b;->i(Z)V

    .line 10534
    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->a:Lbac$b;

    invoke-interface {v3}, Lbac$b;->b()V

    .line 10536
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v4

    new-instance v3, Lbae$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lbae$3;-><init>(Lbae;)V

    const-class v5, Lcma;

    move-object/from16 v0, p0

    iget-object v6, v0, Lbae;->a:Lbac$b;

    .line 10564
    invoke-interface {v6}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v6

    .line 10537
    invoke-static {v3, v5, v6}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcma;

    .line 10913
    iget-object v5, v4, Lbbp;->b:Lbbp$a;

    new-instance v6, Lbbp$97;

    invoke-direct {v6, v4, v2, v3}, Lbbp$97;-><init>(Lbbp;Lbeu;Lcma;)V

    invoke-virtual {v5, v6}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 455
    .end local v2    # "dingEventsWrapperUpdateObject":Lbeu;
    .end local v7    # "address":Ljava/lang/String;
    .end local v12    # "alarmTypeNotification":Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;
    .end local v14    # "cycleRemindRuleObject":Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;
    .end local v18    # "eventRemindMode":Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->a:Lbac$b;

    invoke-interface {v3}, Lbac$b;->g()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 460
    .restart local v7    # "address":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-wide v8, v0, Lbae;->e:J

    goto/16 :goto_3

    :cond_15
    move-object/from16 v0, p0

    iget-wide v10, v0, Lbae;->f:J

    goto/16 :goto_4

    .line 482
    .restart local v2    # "dingEventsWrapperUpdateObject":Lbeu;
    .restart local v18    # "eventRemindMode":Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;
    :cond_16
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Long;

    const/4 v4, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->getMinutes()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 7065
    iput-object v3, v2, Lbeu;->g:Ljava/util/List;

    goto/16 :goto_5

    .line 494
    .restart local v12    # "alarmTypeNotification":Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->a:Lbac$b;

    invoke-interface {v3}, Lbac$b;->l()Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    move-result-object v15

    .line 495
    .local v15, "dingAttachmentObject":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    if-eqz v15, :cond_f

    .line 496
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    const/4 v4, 0x0

    aput-object v15, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 8073
    iput-object v3, v2, Lbeu;->i:Ljava/util/List;

    goto/16 :goto_6

    .line 517
    .end local v15    # "dingAttachmentObject":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    .restart local v14    # "cycleRemindRuleObject":Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;
    :cond_18
    move-object/from16 v0, p0

    iget v3, v0, Lbae;->J:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_11

    .line 518
    move-object/from16 v0, p0

    iget v3, v0, Lbae;->J:I

    .line 10146
    iput v3, v2, Lbeu;->s:I

    .line 519
    move-object/from16 v0, p0

    iget-object v3, v0, Lbae;->K:Ljava/lang/String;

    .line 10150
    iput-object v3, v2, Lbeu;->t:Ljava/lang/String;

    goto/16 :goto_7
.end method

.method private x()Z
    .locals 18

    .prologue
    .line 569
    move-object/from16 v0, p0

    iget-object v13, v0, Lbae;->a:Lbac$b;

    invoke-interface {v13}, Lbac$b;->f()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lbae;->C:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lbae;->a:Lbac$b;

    invoke-interface {v14}, Lbac$b;->f()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v12, 0x1

    .line 570
    .local v12, "hasSubjectChanged":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lbae;->A:Ljava/lang/String;

    .line 571
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lbae;->a:Lbac$b;

    invoke-interface {v13}, Lbac$b;->g()Landroid/text/Editable;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lbae;->a:Lbac$b;

    invoke-interface {v13}, Lbac$b;->g()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lbae;->A:Ljava/lang/String;

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lbae;->a:Lbac$b;

    .line 572
    invoke-interface {v13}, Lbac$b;->g()Landroid/text/Editable;

    move-result-object v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lbae;->A:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lbae;->a:Lbac$b;

    invoke-interface {v14}, Lbac$b;->g()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    :cond_1
    const/4 v4, 0x1

    .line 573
    .local v4, "hasLocationChanged":Z
    :goto_1
    move-object/from16 v0, p0

    iget-wide v14, v0, Lbae;->e:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lbae;->g:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_6

    const/4 v11, 0x1

    .line 574
    .local v11, "hasStartTimeChanged":Z
    :goto_2
    move-object/from16 v0, p0

    iget-wide v14, v0, Lbae;->f:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lbae;->h:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_7

    const/4 v3, 0x1

    .line 575
    .local v3, "hasEndTimeChanged":Z
    :goto_3
    invoke-direct/range {p0 .. p0}, Lbae;->y()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_8

    const/4 v6, 0x1

    .line 576
    .local v6, "hasProfileUidsChanged":Z
    :goto_4
    move-object/from16 v0, p0

    iget v13, v0, Lbae;->D:I

    move-object/from16 v0, p0

    iget v14, v0, Lbae;->k:I

    if-eq v13, v14, :cond_9

    const/4 v8, 0x1

    .line 577
    .local v8, "hasRemindModeIndexChanged":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lbae;->E:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-object/from16 v0, p0

    iget-object v14, v0, Lbae;->l:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    if-eq v13, v14, :cond_a

    const/4 v9, 0x1

    .line 578
    .local v9, "hasRemindTypeChanged":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lbae;->F:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    move-object/from16 v0, p0

    iget-object v14, v0, Lbae;->a:Lbac$b;

    invoke-interface {v14}, Lbac$b;->l()Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    move-result-object v14

    if-eq v13, v14, :cond_b

    const/4 v2, 0x1

    .line 579
    .local v2, "hasAttachmentChanged":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lbae;->H:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lbae;->a:Lbac$b;

    invoke-interface {v13}, Lbac$b;->m()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-eqz v13, :cond_c

    const/4 v7, 0x1

    .line 580
    .local v7, "hasRecorderChanged":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lbae;->p:Lcom/amap/api/services/core/PoiItem;

    move-object/from16 v0, p0

    iget-object v14, v0, Lbae;->o:Lcom/amap/api/services/core/PoiItem;

    if-eq v13, v14, :cond_d

    const/4 v5, 0x1

    .line 581
    .local v5, "hasMapLocationChanged":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lbae;->v:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    move-object/from16 v0, p0

    iget-object v14, v0, Lbae;->r:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    if-ne v13, v14, :cond_2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lbae;->w:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lbae;->s:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_e

    :cond_2
    const/4 v10, 0x1

    .line 583
    .local v10, "hasRepeatFrequency":Z
    :goto_a
    if-nez v12, :cond_3

    if-nez v4, :cond_3

    if-nez v11, :cond_3

    if-nez v3, :cond_3

    if-nez v6, :cond_3

    if-nez v8, :cond_3

    if-nez v9, :cond_3

    if-nez v2, :cond_3

    if-nez v7, :cond_3

    if-nez v5, :cond_3

    if-eqz v10, :cond_f

    :cond_3
    const/4 v13, 0x1

    :goto_b
    return v13

    .line 569
    .end local v2    # "hasAttachmentChanged":Z
    .end local v3    # "hasEndTimeChanged":Z
    .end local v4    # "hasLocationChanged":Z
    .end local v5    # "hasMapLocationChanged":Z
    .end local v6    # "hasProfileUidsChanged":Z
    .end local v7    # "hasRecorderChanged":Z
    .end local v8    # "hasRemindModeIndexChanged":Z
    .end local v9    # "hasRemindTypeChanged":Z
    .end local v10    # "hasRepeatFrequency":Z
    .end local v11    # "hasStartTimeChanged":Z
    .end local v12    # "hasSubjectChanged":Z
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 572
    .restart local v12    # "hasSubjectChanged":Z
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 573
    .restart local v4    # "hasLocationChanged":Z
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 574
    .restart local v11    # "hasStartTimeChanged":Z
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 575
    .restart local v3    # "hasEndTimeChanged":Z
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 576
    .restart local v6    # "hasProfileUidsChanged":Z
    :cond_9
    const/4 v8, 0x0

    goto :goto_5

    .line 577
    .restart local v8    # "hasRemindModeIndexChanged":Z
    :cond_a
    const/4 v9, 0x0

    goto :goto_6

    .line 578
    .restart local v9    # "hasRemindTypeChanged":Z
    :cond_b
    const/4 v2, 0x0

    goto :goto_7

    .line 579
    .restart local v2    # "hasAttachmentChanged":Z
    :cond_c
    const/4 v7, 0x0

    goto :goto_8

    .line 580
    .restart local v7    # "hasRecorderChanged":Z
    :cond_d
    const/4 v5, 0x0

    goto :goto_9

    .line 581
    .restart local v5    # "hasMapLocationChanged":Z
    :cond_e
    const/4 v10, 0x0

    goto :goto_a

    .line 583
    .restart local v10    # "hasRepeatFrequency":Z
    :cond_f
    const/4 v13, 0x0

    goto :goto_b
.end method

.method private y()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 618
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 619
    .local v0, "preUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v3, p0, Lbae;->a:Lbac$b;

    invoke-interface {v3}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v1

    .line 620
    .local v1, "profileUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v1, :cond_1

    .line 621
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 622
    .local v2, "uid":Ljava/lang/Long;
    iget-object v4, p0, Lbae;->B:Ljava/util/Collection;

    invoke-interface {v4, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 623
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 627
    .end local v2    # "uid":Ljava/lang/Long;
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lbab;->a()V

    return-void
.end method

.method public final bridge synthetic a(J)V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lbab;->a(J)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0, p1}, Lbab;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic a(Z)V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0, p1}, Lbab;->a(Z)V

    return-void
.end method

.method public final bridge synthetic b()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lbab;->b()V

    return-void
.end method

.method public final bridge synthetic b(J)V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lbab;->b(J)V

    return-void
.end method

.method public final bridge synthetic b(Z)V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0, p1}, Lbab;->b(Z)V

    return-void
.end method

.method public final bridge synthetic c()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lbab;->c()V

    return-void
.end method

.method public final bridge synthetic d()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lbab;->d()V

    return-void
.end method

.method public final bridge synthetic g()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lbab;->g()V

    return-void
.end method

.method public final bridge synthetic h()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lbab;->h()V

    return-void
.end method

.method public final bridge synthetic i()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lbab;->i()V

    return-void
.end method

.method public final bridge synthetic m()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lbab;->m()V

    return-void
.end method

.method public final bridge synthetic o()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lbab;->o()V

    return-void
.end method

.method public final bridge synthetic p()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lbab;->p()V

    return-void
.end method

.method public final bridge synthetic r()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lbab;->r()V

    return-void
.end method

.method public final s()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 103
    invoke-direct {p0}, Lbae;->x()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lbae;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->e()V

    .line 108
    :goto_0
    return-void

    .line 1634
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lbae;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1635
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laxp$i;->dt_event_alert_need_give_up:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1636
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laxp$i;->dt_event_alert_give_up:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbae$6;

    invoke-direct {v2, p0}, Lbae$6;-><init>(Lbae;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1643
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laxp$i;->cancel:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbae$7;

    invoke-direct {v2, p0}, Lbae$7;-><init>(Lbae;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1648
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method public final t()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public final u()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-object v1, p0, Lbae;->a:Lbac$b;

    if-eqz v1, :cond_2

    .line 123
    iget-object v3, p0, Lbae;->a:Lbac$b;

    iget-object v1, p0, Lbae;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lbae;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    invoke-interface {v3, v2, v1}, Lbac$b;->a(ZI)V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v0, "recorderDisplayUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v1, p0, Lbae;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lbae;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 128
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

    .line 129
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_1
    iget-object v1, p0, Lbae;->a:Lbac$b;

    invoke-interface {v1, v0}, Lbac$b;->a(Ljava/util/ArrayList;)V

    .line 132
    invoke-virtual {p0}, Lbae;->n()V

    .line 134
    .end local v0    # "recorderDisplayUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    return-void

    :cond_3
    move v1, v2

    .line 123
    goto :goto_0
.end method

.method public final v()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbae;->c(Z)V

    .line 139
    return-void
.end method

.method public final w()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 143
    iget-object v1, p0, Lbae;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbae;->a:Lbac$b;

    .line 144
    invoke-interface {v1}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lbae;->a:Lbac$b;

    invoke-interface {v2}, Lbac$b;->m()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v0, "newReceiverUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v1, p0, Lbae;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lbae;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 149
    :cond_0
    iget-object v1, p0, Lbae;->a:Lbac$b;

    invoke-interface {v1}, Lbac$b;->m()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v1, p0, Lbae;->a:Lbac$b;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lbac$b;->a(Ljava/util/List;Z)V

    .line 152
    .end local v0    # "newReceiverUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    return-void
.end method
