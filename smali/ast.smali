.class public final Last;
.super Ljava/lang/Object;
.source "ScheduleObject.java"


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/calendar/data/object/AlarmObject;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;)Last;
    .locals 8
    .param p0, "scheduleCreateModel"    # Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;

    .prologue
    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 129
    if-nez p0, :cond_0

    .line 130
    const/4 v1, 0x0

    .line 155
    :goto_0
    return-object v1

    .line 133
    :cond_0
    new-instance v1, Last;

    invoke-direct {v1}, Last;-><init>()V

    .line 134
    .local v1, "scheduleObject":Last;
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getScheduleContent()Ljava/lang/String;

    move-result-object v2

    .line 1063
    iput-object v2, v1, Last;->c:Ljava/lang/String;

    .line 135
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getAllDay()Ljava/lang/Boolean;

    move-result-object v2

    .line 2022
    invoke-static {v2, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 2071
    iput-boolean v2, v1, Last;->d:Z

    .line 136
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getStart()Ljava/lang/Long;

    move-result-object v2

    .line 3044
    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 4039
    iput-wide v2, v1, Last;->a:J

    .line 137
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getEnd()Ljava/lang/Long;

    move-result-object v2

    .line 4044
    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 4047
    iput-wide v2, v1, Last;->b:J

    .line 139
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getRemindMinutes()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getRemindMinutes()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_1

    .line 140
    new-instance v0, Lcom/alibaba/android/calendar/data/object/AlarmObject;

    invoke-direct {v0}, Lcom/alibaba/android/calendar/data/object/AlarmObject;-><init>()V

    .line 142
    .local v0, "alarmObject":Lcom/alibaba/android/calendar/data/object/AlarmObject;
    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->APP:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/calendar/data/object/AlarmObject;->setType(I)V

    .line 143
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getRemindMinutes()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/calendar/data/object/AlarmObject;->setTime(J)V

    .line 144
    new-array v2, v5, [Lcom/alibaba/android/calendar/data/object/AlarmObject;

    aput-object v0, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 4079
    iput-object v2, v1, Last;->f:Ljava/util/List;

    .line 153
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getComment()Ljava/lang/String;

    move-result-object v2

    .line 5087
    iput-object v2, v1, Last;->g:Ljava/lang/String;

    goto :goto_0

    .line 146
    .end local v0    # "alarmObject":Lcom/alibaba/android/calendar/data/object/AlarmObject;
    :cond_1
    new-instance v0, Lcom/alibaba/android/calendar/data/object/AlarmObject;

    invoke-direct {v0}, Lcom/alibaba/android/calendar/data/object/AlarmObject;-><init>()V

    .line 148
    .restart local v0    # "alarmObject":Lcom/alibaba/android/calendar/data/object/AlarmObject;
    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->APP:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/calendar/data/object/AlarmObject;->setType(I)V

    .line 149
    invoke-virtual {v0, v6, v7}, Lcom/alibaba/android/calendar/data/object/AlarmObject;->setTime(J)V

    .line 150
    new-array v2, v5, [Lcom/alibaba/android/calendar/data/object/AlarmObject;

    aput-object v0, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 5079
    iput-object v2, v1, Last;->f:Ljava/util/List;

    goto :goto_1
.end method


# virtual methods
.method public final a()Lara;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 92
    new-instance v2, Lara;

    invoke-direct {v2}, Lara;-><init>()V

    .line 93
    .local v2, "scheduleModel":Lara;
    iget-wide v4, p0, Last;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lara;->a:Ljava/lang/Long;

    .line 94
    iget-wide v4, p0, Last;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lara;->b:Ljava/lang/Long;

    .line 95
    const/4 v3, 0x0

    iput-object v3, v2, Lara;->c:Ljava/lang/String;

    .line 96
    iget-object v3, p0, Last;->c:Ljava/lang/String;

    iput-object v3, v2, Lara;->d:Ljava/lang/String;

    .line 97
    iget-boolean v3, p0, Last;->d:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lara;->e:Ljava/lang/Integer;

    .line 99
    iget-object v3, p0, Last;->e:Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;

    if-eqz v3, :cond_0

    .line 100
    iget-object v3, p0, Last;->e:Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;

    invoke-virtual {v3}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->a()Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;

    move-result-object v3

    iput-object v3, v2, Lara;->f:Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;

    .line 113
    :cond_0
    iget-object v3, p0, Last;->f:Ljava/util/List;

    if-eqz v3, :cond_4

    iget-object v3, p0, Last;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Last;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    .local v0, "alarmModelList":Ljava/util/List;, "Ljava/util/List<Lapz;>;"
    iget-object v3, p0, Last;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/calendar/data/object/AlarmObject;

    .line 116
    .local v1, "alarmObject":Lcom/alibaba/android/calendar/data/object/AlarmObject;
    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {v1}, Lcom/alibaba/android/calendar/data/object/AlarmObject;->toIDLModel()Lapz;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 97
    .end local v0    # "alarmModelList":Ljava/util/List;, "Ljava/util/List<Lapz;>;"
    .end local v1    # "alarmObject":Lcom/alibaba/android/calendar/data/object/AlarmObject;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 120
    .restart local v0    # "alarmModelList":Ljava/util/List;, "Ljava/util/List<Lapz;>;"
    :cond_3
    iput-object v0, v2, Lara;->i:Ljava/util/List;

    .line 123
    .end local v0    # "alarmModelList":Ljava/util/List;, "Ljava/util/List<Lapz;>;"
    :cond_4
    iget-object v3, p0, Last;->g:Ljava/lang/String;

    iput-object v3, v2, Lara;->j:Ljava/lang/String;

    .line 125
    return-object v2
.end method
