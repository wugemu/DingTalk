.class public final Lbbp$117;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbfi;

.field final synthetic c:Lcom/alibaba/wukong/Callback;

.field final synthetic d:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Ljava/util/List;Lbfi;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 1106
    iput-object p1, p0, Lbbp$117;->d:Lbbp;

    iput-object p2, p0, Lbbp$117;->a:Ljava/util/List;

    iput-object p3, p0, Lbbp$117;->b:Lbfi;

    iput-object p4, p0, Lbbp$117;->c:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .prologue
    .line 1109
    move-object/from16 v0, p0

    iget-object v2, v0, Lbbp$117;->d:Lbbp;

    invoke-static {v2}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lbbp$117;->a:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lbbp$117;->b:Lbfi;

    move-object/from16 v0, p0

    iget-object v7, v0, Lbbp$117;->c:Lcom/alibaba/wukong/Callback;

    .line 5024
    if-nez v6, :cond_0

    .line 5025
    const-string/jumbo v2, "create failed"

    const-string/jumbo v3, "invalidate params"

    invoke-static {v7, v2, v3}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 5026
    :goto_0
    return-void

    .line 5029
    :cond_0
    iget-object v8, v4, Lbbo;->h:Lbbk;

    .line 5140
    new-instance v9, Lbcn;

    invoke-direct {v9}, Lbcn;-><init>()V

    .line 5142
    iget-object v2, v6, Lbfi;->a:Lbfh;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    .line 5144
    :goto_1
    iput-object v2, v9, Lbcn;->a:Lcom/alibaba/android/ding/base/objects/idl/EventModel;

    .line 5146
    iget-object v2, v9, Lbcn;->a:Lcom/alibaba/android/ding/base/objects/idl/EventModel;

    if-eqz v2, :cond_1

    .line 5147
    iget-object v2, v9, Lbcn;->a:Lcom/alibaba/android/ding/base/objects/idl/EventModel;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lbkm;->a(Lcom/alibaba/android/ding/base/objects/idl/EventModel;Z)Z

    .line 5150
    :cond_1
    iget v2, v6, Lbfi;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v9, Lbcn;->b:Ljava/lang/Integer;

    .line 5151
    iget v2, v6, Lbfi;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v9, Lbcn;->c:Ljava/lang/Integer;

    .line 5152
    iget-object v2, v6, Lbfi;->d:Ljava/util/Map;

    iput-object v2, v9, Lbcn;->d:Ljava/util/Map;

    .line 5153
    iget-object v2, v6, Lbfi;->e:Ljava/lang/String;

    iput-object v2, v9, Lbcn;->e:Ljava/lang/String;

    .line 5155
    const/4 v2, 0x0

    .line 5156
    iget-object v3, v6, Lbfi;->f:Ljava/util/List;

    if-eqz v3, :cond_8

    iget-object v3, v6, Lbfi;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 5157
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5158
    iget-object v2, v6, Lbfi;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 5159
    if-eqz v2, :cond_2

    .line 5163
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->toIDLModel()Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;

    move-result-object v2

    .line 5164
    if-eqz v2, :cond_2

    .line 5168
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5142
    :cond_3
    iget-object v10, v6, Lbfi;->a:Lbfh;

    .line 5310
    new-instance v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;

    invoke-direct {v3}, Lcom/alibaba/android/ding/base/objects/idl/EventModel;-><init>()V

    .line 5312
    const/4 v2, 0x0

    iput-object v2, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->eventType:Ljava/lang/String;

    .line 5313
    iget-wide v12, v10, Lbfh;->a:J

    iget-wide v14, v10, Lbfh;->a:J

    const-wide/32 v16, 0xea60

    rem-long v14, v14, v16

    sub-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->startTime:Ljava/lang/Long;

    .line 5314
    iget-wide v12, v10, Lbfh;->b:J

    iget-wide v14, v10, Lbfh;->b:J

    const-wide/32 v16, 0xea60

    rem-long v14, v14, v16

    sub-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->endTime:Ljava/lang/Long;

    .line 5315
    iget-boolean v2, v10, Lbfh;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->allDayEvent:Ljava/lang/Boolean;

    .line 5316
    iget-object v2, v10, Lbfh;->d:Ljava/lang/String;

    iput-object v2, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->subject:Ljava/lang/String;

    .line 5317
    const/4 v2, 0x0

    iput-object v2, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->desc:Ljava/lang/String;

    .line 5318
    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->organizerUid:Ljava/lang/Long;

    .line 5319
    iget-object v2, v10, Lbfh;->e:Ljava/lang/String;

    iput-object v2, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->location:Ljava/lang/String;

    .line 5320
    iget-wide v12, v10, Lbfh;->f:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->locationCode:Ljava/lang/Long;

    .line 5321
    iget-wide v12, v10, Lbfh;->g:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->locationOrgId:Ljava/lang/Long;

    .line 5322
    iget-object v2, v10, Lbfh;->h:Ljava/util/List;

    iput-object v2, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->alarmList:Ljava/util/List;

    .line 5323
    iget-object v2, v10, Lbfh;->i:Ljava/util/List;

    if-nez v2, :cond_5

    .line 5324
    const/4 v2, 0x0

    iput-object v2, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->attendeeList:Ljava/util/List;

    .line 5338
    :cond_4
    const/4 v2, 0x0

    iput-object v2, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->exceptionDateList:Ljava/util/List;

    .line 5339
    iget v2, v10, Lbfh;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->alarmType:Ljava/lang/Integer;

    .line 5340
    const/4 v2, 0x0

    iput-object v2, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->organizerName:Ljava/lang/String;

    .line 5341
    const/4 v2, 0x0

    iput-object v2, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->organizerEmail:Ljava/lang/String;

    .line 5342
    iget-object v2, v10, Lbfh;->k:Ljava/util/Map;

    iput-object v2, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->extension:Ljava/util/Map;

    .line 5343
    iget-object v2, v10, Lbfh;->l:Ljava/util/List;

    iput-object v2, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->recurRuleList:Ljava/util/List;

    move-object v2, v3

    .line 5345
    goto/16 :goto_1

    .line 5326
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->attendeeList:Ljava/util/List;

    .line 5327
    iget-object v2, v10, Lbfh;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ding/data/object/AttendeeObject;

    .line 5328
    if-eqz v2, :cond_6

    .line 5331
    invoke-virtual {v2}, Lcom/alibaba/android/ding/data/object/AttendeeObject;->toAttendeeModel()Lcom/alibaba/android/ding/base/objects/idl/AttendeeModel;

    move-result-object v2

    .line 5332
    if-eqz v2, :cond_6

    .line 5335
    iget-object v12, v3, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->attendeeList:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    move-object v2, v3

    .line 5171
    :cond_8
    iput-object v2, v9, Lbcn;->f:Ljava/util/List;

    .line 5172
    iget v2, v6, Lbfi;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v9, Lbcn;->g:Ljava/lang/Integer;

    .line 5173
    iget-wide v2, v6, Lbfi;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v9, Lbcn;->h:Ljava/lang/Long;

    .line 5029
    new-instance v2, Lbbo$51;

    invoke-direct {v2, v4, v7, v5, v6}, Lbbo$51;-><init>(Lbbo;Lcom/alibaba/wukong/Callback;Ljava/util/List;Lbfi;)V

    invoke-virtual {v8, v9, v2}, Lbbk;->a(Lbcn;Lcma;)V

    goto/16 :goto_0
.end method
