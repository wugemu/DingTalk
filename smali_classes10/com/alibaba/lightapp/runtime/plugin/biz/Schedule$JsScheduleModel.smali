.class public Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$JsScheduleModel;
.super Ljava/lang/Object;
.source "Schedule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JsScheduleModel"
.end annotation


# instance fields
.field public allDay:Ljava/lang/Boolean;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "allDay"
    .end annotation
.end field

.field public comment:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "comment"
    .end annotation
.end field

.field public end:Ljava/lang/Long;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "endTime"
    .end annotation
.end field

.field public remindMinutes:Ljava/lang/Integer;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "remindMinutes"
    .end annotation
.end field

.field public remindType:Ljava/lang/Integer;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "remindType"
    .end annotation
.end field

.field public repeat:Ljava/lang/Integer;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "repeat"
    .end annotation
.end field

.field public scheduleContent:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "text"
    .end annotation
.end field

.field public start:Ljava/lang/Long;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "startTime"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toScheduleCreateModel()Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 149
    new-instance v0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;

    invoke-direct {v0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;-><init>()V

    .line 151
    .local v0, "builder":Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$JsScheduleModel;->scheduleContent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$JsScheduleModel;->scheduleContent:Ljava/lang/String;

    .line 1173
    iput-object v1, v0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->a:Ljava/lang/String;

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$JsScheduleModel;->allDay:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$JsScheduleModel;->allDay:Ljava/lang/Boolean;

    .line 1178
    iput-object v1, v0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->b:Ljava/lang/Boolean;

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$JsScheduleModel;->start:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$JsScheduleModel;->start:Ljava/lang/Long;

    .line 1183
    iput-object v1, v0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->c:Ljava/lang/Long;

    .line 163
    :cond_2
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$JsScheduleModel;->end:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 164
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$JsScheduleModel;->end:Ljava/lang/Long;

    .line 1188
    iput-object v1, v0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->d:Ljava/lang/Long;

    .line 167
    :cond_3
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$JsScheduleModel;->remindMinutes:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 168
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$JsScheduleModel;->remindMinutes:Ljava/lang/Integer;

    .line 1193
    iput-object v1, v0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->e:Ljava/lang/Integer;

    .line 171
    :cond_4
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$JsScheduleModel;->remindType:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 172
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$JsScheduleModel;->remindType:Ljava/lang/Integer;

    .line 1198
    iput-object v1, v0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->f:Ljava/lang/Integer;

    .line 175
    :cond_5
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$JsScheduleModel;->repeat:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 176
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$JsScheduleModel;->repeat:Ljava/lang/Integer;

    .line 1203
    iput-object v1, v0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->g:Ljava/lang/Integer;

    .line 179
    :cond_6
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$JsScheduleModel;->comment:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 180
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Schedule$JsScheduleModel;->comment:Ljava/lang/String;

    .line 1208
    iput-object v1, v0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->h:Ljava/lang/String;

    .line 183
    :cond_7
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->a()Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;

    move-result-object v1

    return-object v1
.end method
