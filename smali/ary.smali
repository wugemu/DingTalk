.class public final Lary;
.super Lasx;
.source "CalendarEventObject.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/calendar/data/object/AlarmObject;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lasx;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/android/calendar/db/entry/EntryEvent;)Lary;
    .locals 4
    .param p0, "entryEvent"    # Lcom/alibaba/android/calendar/db/entry/EntryEvent;

    .prologue
    .line 117
    new-instance v0, Lary;

    invoke-direct {v0}, Lary;-><init>()V

    .line 119
    .local v0, "calendarEventObject":Lary;
    iget-wide v2, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mEventId:J

    iput-wide v2, v0, Lary;->l:J

    .line 120
    iget-wide v2, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mCalendarId:J

    iput-wide v2, v0, Lary;->m:J

    .line 121
    iget-boolean v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mAllDay:Z

    iput-boolean v1, v0, Lary;->n:Z

    .line 122
    iget-wide v2, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mDtStart:J

    iput-wide v2, v0, Lary;->o:J

    .line 123
    iget-wide v2, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mDtEnd:J

    iput-wide v2, v0, Lary;->p:J

    .line 124
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mStartTimezone:Ljava/lang/String;

    iput-object v1, v0, Lary;->q:Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mDuration:Ljava/lang/String;

    iput-object v1, v0, Lary;->r:Ljava/lang/String;

    .line 126
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mRRule:Ljava/lang/String;

    iput-object v1, v0, Lary;->s:Ljava/lang/String;

    .line 127
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mRDate:Ljava/lang/String;

    iput-object v1, v0, Lary;->t:Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mExRule:Ljava/lang/String;

    iput-object v1, v0, Lary;->u:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mExDate:Ljava/lang/String;

    iput-object v1, v0, Lary;->v:Ljava/lang/String;

    .line 130
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mLocation:Ljava/lang/String;

    iput-object v1, v0, Lary;->w:Ljava/lang/String;

    .line 131
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mIcon:Ljava/lang/String;

    iput-object v1, v0, Lary;->a:Ljava/lang/String;

    .line 132
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mUrl:Ljava/lang/String;

    iput-object v1, v0, Lary;->b:Ljava/lang/String;

    .line 133
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mSubject:Ljava/lang/String;

    iput-object v1, v0, Lary;->c:Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mSubTitle:Ljava/lang/String;

    iput-object v1, v0, Lary;->d:Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mSubTitleTempId:Ljava/lang/String;

    iput-object v1, v0, Lary;->e:Ljava/lang/String;

    .line 136
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mSubTitleTempData:Ljava/lang/String;

    invoke-static {v1}, Lcob;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lary;->f:Ljava/util/List;

    .line 137
    iget-boolean v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mIsMainEvent:Z

    iput-boolean v1, v0, Lary;->x:Z

    .line 139
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mAlarmListStr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mAlarmListStr:Ljava/lang/String;

    new-instance v2, Lary$1;

    invoke-direct {v2}, Lary$1;-><init>()V

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v1, v2, v3}, Lcoo;->a(Ljava/lang/String;Lgxp;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lary;->g:Ljava/util/List;

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mComment:Ljava/lang/String;

    iput-object v1, v0, Lary;->h:Ljava/lang/String;

    .line 144
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mUniqueId:Ljava/lang/String;

    iput-object v1, v0, Lary;->i:Ljava/lang/String;

    .line 145
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mRecurrenceId:Ljava/lang/String;

    iput-object v1, v0, Lary;->j:Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mFolderId:Ljava/lang/String;

    iput-object v1, v0, Lary;->k:Ljava/lang/String;

    .line 148
    return-object v0
.end method

.method static a(Ljava/lang/String;Laqe;Z)Lary;
    .locals 18
    .param p0, "folderId"    # Ljava/lang/String;
    .param p1, "calendarEventModel"    # Laqe;
    .param p2, "isMainEvent"    # Z

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 154
    const/4 v5, 0x0

    .line 208
    :goto_0
    return-object v5

    .line 157
    :cond_0
    move-object/from16 v0, p1

    iget-object v7, v0, Laqe;->l:Ljava/lang/Integer;

    .line 4033
    const/4 v10, 0x0

    invoke-static {v7, v10}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v7

    .line 157
    if-lez v7, :cond_3

    const/4 v6, 0x1

    .line 159
    .local v6, "isAllDay":Z
    :goto_1
    new-instance v5, Lary;

    invoke-direct {v5}, Lary;-><init>()V

    .line 161
    .local v5, "calendarEventObject":Lary;
    move-object/from16 v0, p1

    iget-object v7, v0, Laqe;->a:Ljava/lang/Long;

    .line 4044
    const-wide/16 v10, 0x0

    invoke-static {v7, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v10

    .line 161
    iput-wide v10, v5, Lary;->l:J

    .line 162
    move-object/from16 v0, p1

    iget-object v7, v0, Laqe;->b:Ljava/lang/Long;

    .line 5044
    const-wide/16 v10, 0x0

    invoke-static {v7, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v10

    .line 162
    iput-wide v10, v5, Lary;->m:J

    .line 163
    move-object/from16 v0, p1

    iget-object v7, v0, Laqe;->c:Ljava/lang/Long;

    const-wide v10, 0x7fffffffffffffffL

    invoke-static {v7, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v10

    iput-wide v10, v5, Lary;->o:J

    .line 164
    move-object/from16 v0, p1

    iget-object v7, v0, Laqe;->d:Ljava/lang/Long;

    .line 6044
    const-wide/16 v10, 0x0

    invoke-static {v7, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v10

    .line 164
    iput-wide v10, v5, Lary;->p:J

    .line 165
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lary;->q:Ljava/lang/String;

    .line 166
    move-object/from16 v0, p1

    iget-object v7, v0, Laqe;->m:Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;

    if-eqz v7, :cond_1

    .line 167
    move-object/from16 v0, p1

    iget-object v7, v0, Laqe;->d:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v0, p1

    iget-object v7, v0, Laqe;->c:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long v8, v10, v12

    .line 168
    .local v8, "seconds":J
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "P"

    aput-object v11, v7, v10

    const/4 v10, 0x1

    .line 170
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "S"

    aput-object v11, v7, v10

    .line 168
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lary;->r:Ljava/lang/String;

    .line 172
    move-object/from16 v0, p1

    iget-object v7, v0, Laqe;->c:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v0, p1

    iget-object v7, v0, Laqe;->m:Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;

    .line 7023
    if-nez v7, :cond_4

    .line 7024
    const-string/jumbo v7, ""

    .line 172
    :goto_2
    iput-object v7, v5, Lary;->s:Ljava/lang/String;

    .line 176
    .end local v8    # "seconds":J
    :cond_1
    const/4 v7, 0x0

    iput-object v7, v5, Lary;->t:Ljava/lang/String;

    .line 178
    const/4 v7, 0x0

    iput-object v7, v5, Lary;->u:Ljava/lang/String;

    .line 180
    move-object/from16 v0, p1

    iget-object v7, v0, Laqe;->p:Ljava/util/List;

    invoke-static {v7, v6}, Lary;->a(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lary;->v:Ljava/lang/String;

    .line 181
    move-object/from16 v0, p1

    iget-object v7, v0, Laqe;->e:Ljava/lang/String;

    iput-object v7, v5, Lary;->w:Ljava/lang/String;

    .line 182
    move-object/from16 v0, p1

    iget-object v7, v0, Laqe;->f:Ljava/lang/String;

    iput-object v7, v5, Lary;->a:Ljava/lang/String;

    .line 183
    move-object/from16 v0, p1

    iget-object v7, v0, Laqe;->g:Ljava/lang/String;

    iput-object v7, v5, Lary;->b:Ljava/lang/String;

    .line 184
    move-object/from16 v0, p1

    iget-object v7, v0, Laqe;->s:Ljava/lang/String;

    iput-object v7, v5, Lary;->c:Ljava/lang/String;

    .line 185
    move-object/from16 v0, p1

    iget-object v7, v0, Laqe;->i:Ljava/lang/String;

    iput-object v7, v5, Lary;->d:Ljava/lang/String;

    .line 186
    move-object/from16 v0, p1

    iget-object v7, v0, Laqe;->j:Ljava/lang/String;

    iput-object v7, v5, Lary;->e:Ljava/lang/String;

    .line 187
    move-object/from16 v0, p1

    iget-object v7, v0, Laqe;->k:Ljava/util/List;

    iput-object v7, v5, Lary;->f:Ljava/util/List;

    .line 188
    iput-boolean v6, v5, Lary;->n:Z

    .line 189
    move/from16 v0, p2

    iput-boolean v0, v5, Lary;->x:Z

    .line 191
    move-object/from16 v0, p1

    iget-object v7, v0, Laqe;->n:Ljava/util/List;

    if-eqz v7, :cond_12

    move-object/from16 v0, p1

    iget-object v7, v0, Laqe;->n:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_12

    .line 192
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v7, v0, Laqe;->n:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 193
    .local v4, "alarmObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/calendar/data/object/AlarmObject;>;"
    move-object/from16 v0, p1

    iget-object v7, v0, Laqe;->n:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lapz;

    .line 195
    .local v2, "alarmModel":Lapz;
    invoke-static {v2}, Lcom/alibaba/android/calendar/data/object/AlarmObject;->fromIDLModel(Lapz;)Lcom/alibaba/android/calendar/data/object/AlarmObject;

    move-result-object v3

    .line 196
    .local v3, "alarmObject":Lcom/alibaba/android/calendar/data/object/AlarmObject;
    if-eqz v3, :cond_2

    .line 197
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 157
    .end local v2    # "alarmModel":Lapz;
    .end local v3    # "alarmObject":Lcom/alibaba/android/calendar/data/object/AlarmObject;
    .end local v4    # "alarmObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/calendar/data/object/AlarmObject;>;"
    .end local v5    # "calendarEventObject":Lary;
    .end local v6    # "isAllDay":Z
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 7026
    .restart local v5    # "calendarEventObject":Lary;
    .restart local v6    # "isAllDay":Z
    .restart local v8    # "seconds":J
    :cond_4
    new-instance v12, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 7028
    iget-object v13, v7, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->freq:Ljava/lang/String;

    if-eqz v13, :cond_5

    .line 7029
    const-string/jumbo v13, "FREQ="

    invoke-virtual {v12, v13}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7030
    iget-object v13, v7, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->freq:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7031
    const-string/jumbo v13, ";"

    invoke-virtual {v12, v13}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7034
    :cond_5
    iget-object v13, v7, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->until:Ljava/lang/Long;

    if-eqz v13, :cond_6

    iget-object v13, v7, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->until:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_6

    .line 7035
    new-instance v13, Landroid/text/format/Time;

    const-string/jumbo v14, "UTC"

    invoke-direct {v13, v14}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 7036
    iput-boolean v6, v13, Landroid/text/format/Time;->allDay:Z

    .line 7037
    iget-object v14, v7, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->until:Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 7039
    const-string/jumbo v14, "UNTIL="

    invoke-virtual {v12, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7040
    invoke-virtual {v13}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7041
    const-string/jumbo v13, ";"

    invoke-virtual {v12, v13}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7044
    :cond_6
    iget-object v13, v7, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->count:Ljava/lang/Integer;

    if-eqz v13, :cond_7

    iget-object v13, v7, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->count:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eqz v13, :cond_7

    .line 7045
    const-string/jumbo v13, "COUNT="

    invoke-virtual {v12, v13}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7046
    iget-object v13, v7, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->count:Ljava/lang/Integer;

    invoke-virtual {v12, v13}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/Object;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7047
    const-string/jumbo v13, ";"

    invoke-virtual {v12, v13}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7050
    :cond_7
    iget-object v13, v7, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->interval:Ljava/lang/Integer;

    if-eqz v13, :cond_8

    .line 7051
    const-string/jumbo v13, "INTERVAL="

    invoke-virtual {v12, v13}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7052
    iget-object v13, v7, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->interval:Ljava/lang/Integer;

    invoke-virtual {v12, v13}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/Object;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7053
    const-string/jumbo v13, ";"

    invoke-virtual {v12, v13}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7056
    :cond_8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 7057
    invoke-virtual {v13, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 7059
    if-eqz v6, :cond_10

    .line 7060
    const-string/jumbo v10, "BYSECOND=0"

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7061
    const-string/jumbo v10, ";"

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7063
    const-string/jumbo v10, "BYMINUTE=0"

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7064
    const-string/jumbo v10, ";"

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7066
    const-string/jumbo v10, "BYHOUR=0"

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7067
    const-string/jumbo v10, ";"

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7082
    :goto_4
    iget-object v10, v7, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->byDayListOfWeek:Ljava/util/List;

    if-eqz v10, :cond_9

    iget-object v10, v7, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->byDayListOfWeek:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_9

    .line 7083
    const-string/jumbo v10, "BYDAY="

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7084
    iget-object v10, v7, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->byDayListOfWeek:Ljava/util/List;

    const-string/jumbo v11, ","

    invoke-static {v10, v11}, Lata;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7085
    const-string/jumbo v10, ";"

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7088
    :cond_9
    iget-object v10, v7, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->byDayListOfMonth:Ljava/util/List;

    if-eqz v10, :cond_a

    iget-object v10, v7, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->byDayListOfMonth:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_a

    .line 7089
    const-string/jumbo v10, "BYMONTHDAY="

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7090
    iget-object v10, v7, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->byDayListOfMonth:Ljava/util/List;

    const-string/jumbo v11, ","

    invoke-static {v10, v11}, Lata;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7091
    const-string/jumbo v10, ";"

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7094
    :cond_a
    iget-object v10, v7, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->byDayListOfYear:Ljava/util/List;

    if-eqz v10, :cond_b

    iget-object v10, v7, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->byDayListOfYear:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_b

    .line 7095
    const-string/jumbo v10, "BYYEARDAY="

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7096
    iget-object v10, v7, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->byDayListOfYear:Ljava/util/List;

    const-string/jumbo v11, ","

    invoke-static {v10, v11}, Lata;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7097
    const-string/jumbo v10, ";"

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7100
    :cond_b
    iget-object v10, v7, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->byWeekListOfYear:Ljava/util/List;

    if-eqz v10, :cond_c

    iget-object v10, v7, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->byWeekListOfYear:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_c

    .line 7101
    const-string/jumbo v10, "BYWEEKNO="

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7102
    iget-object v10, v7, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->byWeekListOfYear:Ljava/util/List;

    const-string/jumbo v11, ","

    invoke-static {v10, v11}, Lata;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7103
    const-string/jumbo v10, ";"

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7106
    :cond_c
    iget-object v10, v7, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->byMonthListOfYear:Ljava/util/List;

    if-eqz v10, :cond_d

    iget-object v10, v7, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->byMonthListOfYear:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_d

    .line 7107
    const-string/jumbo v10, "BYMONTH="

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7108
    iget-object v10, v7, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->byMonthListOfYear:Ljava/util/List;

    const-string/jumbo v11, ","

    invoke-static {v10, v11}, Lata;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7109
    const-string/jumbo v10, ";"

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7112
    :cond_d
    iget-object v10, v7, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->bySetPosList:Ljava/util/List;

    if-eqz v10, :cond_e

    iget-object v10, v7, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->bySetPosList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_e

    .line 7113
    const-string/jumbo v10, "BYSETPOS="

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7114
    iget-object v10, v7, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->bySetPosList:Ljava/util/List;

    const-string/jumbo v11, ","

    invoke-static {v10, v11}, Lata;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7115
    const-string/jumbo v10, ";"

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7118
    :cond_e
    iget-object v10, v7, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->weekStart:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 7119
    const-string/jumbo v10, "WKST="

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7120
    iget-object v7, v7, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->weekStart:Ljava/lang/String;

    invoke-virtual {v12, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7121
    const-string/jumbo v7, ";"

    invoke-virtual {v12, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7124
    :cond_f
    invoke-virtual {v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 7069
    :cond_10
    const-string/jumbo v10, "BYSECOND="

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7070
    const/16 v10, 0xd

    invoke-virtual {v13, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7071
    const-string/jumbo v10, ";"

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7073
    const-string/jumbo v10, "BYMINUTE="

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7074
    const/16 v10, 0xc

    invoke-virtual {v13, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7075
    const-string/jumbo v10, ";"

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7077
    const-string/jumbo v10, "BYHOUR="

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7078
    const/16 v10, 0xb

    invoke-virtual {v13, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7079
    const-string/jumbo v10, ";"

    invoke-virtual {v12, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_4

    .line 201
    .end local v8    # "seconds":J
    .restart local v4    # "alarmObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/calendar/data/object/AlarmObject;>;"
    :cond_11
    iput-object v4, v5, Lary;->g:Ljava/util/List;

    .line 203
    .end local v4    # "alarmObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/calendar/data/object/AlarmObject;>;"
    :cond_12
    move-object/from16 v0, p1

    iget-object v7, v0, Laqe;->o:Ljava/lang/String;

    iput-object v7, v5, Lary;->h:Ljava/lang/String;

    .line 204
    move-object/from16 v0, p1

    iget-object v7, v0, Laqe;->q:Ljava/lang/String;

    iput-object v7, v5, Lary;->i:Ljava/lang/String;

    .line 205
    move-object/from16 v0, p1

    iget-object v7, v0, Laqe;->r:Ljava/lang/String;

    iput-object v7, v5, Lary;->j:Ljava/lang/String;

    .line 206
    move-object/from16 v0, p0

    iput-object v0, v5, Lary;->k:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private static a(Ljava/util/List;Z)Ljava/lang/String;
    .locals 14
    .param p1, "isAllDay"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "exceptionDateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v13, 0x5

    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 220
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    :cond_0
    const-string/jumbo v1, ""

    .line 245
    :goto_0
    return-object v1

    .line 224
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 226
    .local v8, "exDatList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lavu;->a()Ljava/util/Calendar;

    move-result-object v7

    .line 227
    .local v7, "calendar":Ljava/util/Calendar;
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 228
    .local v0, "time":Landroid/text/format/Time;
    if-eqz p1, :cond_2

    .line 229
    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 230
    const-string/jumbo v1, "UTC"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 232
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 233
    .local v9, "exDateMills":Ljava/lang/Long;
    if-eqz v9, :cond_3

    .line 234
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 235
    if-eqz p1, :cond_4

    .line 236
    invoke-virtual {v7, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v7, v12}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v7, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/format/Time;->set(III)V

    .line 241
    :goto_2
    invoke-virtual {v0}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 238
    :cond_4
    const/16 v1, 0xd

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xb

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 239
    invoke-virtual {v7, v13}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v7, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v7, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 238
    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_2

    .line 245
    .end local v9    # "exDateMills":Ljava/lang/Long;
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Lcob;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()Lcom/alibaba/android/calendar/data/object/AlarmObject;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 73
    .line 1081
    iget-object v0, p0, Lary;->g:Ljava/util/List;

    .line 73
    if-eqz v0, :cond_0

    .line 2081
    iget-object v0, p0, Lary;->g:Ljava/util/List;

    .line 73
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    .line 3081
    :cond_1
    iget-object v0, p0, Lary;->g:Ljava/util/List;

    .line 77
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/data/object/AlarmObject;

    goto :goto_0
.end method
