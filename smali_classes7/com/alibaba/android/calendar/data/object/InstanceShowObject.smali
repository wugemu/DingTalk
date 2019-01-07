.class public Lcom/alibaba/android/calendar/data/object/InstanceShowObject;
.super Ljava/lang/Object;
.source "InstanceShowObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3aec2dc1dd471468L


# instance fields
.field private mAllDayEvent:Z

.field private mBizId:Ljava/lang/String;

.field private mBizType:I

.field private mCalendarId:J

.field private mCalendarTypeVersion:I

.field private mColor:I

.field private mDuration:Ljava/lang/String;

.field private mEventId:J

.field private mEventStartTimeMillis:J

.field private mFolderId:Ljava/lang/String;

.field private mFolderName:Ljava/lang/String;

.field private mIcon:Ljava/lang/String;

.field private mInstanceEndTimeMillis:J

.field private mInstanceStartTimeMillis:J

.field private mIsShare:Z

.field private mLocation:Ljava/lang/String;

.field private mOwnerId:J

.field private mPrivilege:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

.field private mRRule:Ljava/lang/String;

.field private mRecurrenceId:Ljava/lang/String;

.field private mRole:I

.field private mSelfStatus:I

.field private mSenderId:J

.field private mSource:I

.field private mStartTimezone:Ljava/lang/String;

.field private mStatus:I

.field private mSubTitle:Ljava/lang/String;

.field private mSubTitleTempData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSubTitleTempId:Ljava/lang/String;

.field private mSubject:Ljava/lang/String;

.field private mUniqueId:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mVersion:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lcom/alibaba/android/calendar/db/entry/EntryInstance;)Lcom/alibaba/android/calendar/data/object/InstanceShowObject;
    .locals 7
    .param p0, "entryInstance"    # Lcom/alibaba/android/calendar/db/entry/EntryInstance;

    .prologue
    .line 303
    if-nez p0, :cond_0

    .line 304
    const/4 v2, 0x0

    .line 353
    :goto_0
    return-object v2

    .line 307
    :cond_0
    new-instance v2, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-direct {v2}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;-><init>()V

    .line 309
    .local v2, "instanceShowObject":Lcom/alibaba/android/calendar/data/object/InstanceShowObject;
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->getCalendarId()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mCalendarId:J

    .line 310
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->getEventId()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mEventId:J

    .line 311
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->getCalendarSenderId()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mSenderId:J

    .line 312
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->getCalendarTypeVersion()I

    move-result v4

    iput v4, v2, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mCalendarTypeVersion:I

    .line 313
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->getCalendarSource()I

    move-result v4

    iput v4, v2, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mSource:I

    .line 314
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->getCalendarBizType()I

    move-result v4

    iput v4, v2, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mBizType:I

    .line 315
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->getCalendarBizId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mBizId:Ljava/lang/String;

    .line 316
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->isEventAllDay()Z

    move-result v4

    iput-boolean v4, v2, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mAllDayEvent:Z

    .line 317
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->getEventStartTimezone()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mStartTimezone:Ljava/lang/String;

    .line 318
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->getEventDuration()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mDuration:Ljava/lang/String;

    .line 319
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->getEventLocation()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mLocation:Ljava/lang/String;

    .line 320
    iget-object v4, v2, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mLocation:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->getCalendarExtension()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 322
    :try_start_0
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->getCalendarExtension()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alibaba/android/calendar/data/object/InstanceShowObject$1;

    invoke-direct {v6}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject$1;-><init>()V

    .line 323
    invoke-virtual {v6}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 322
    invoke-virtual {v4, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 324
    .local v1, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 325
    const-string/jumbo v4, "m_title"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 326
    .local v3, "poiLocation":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 327
    iput-object v3, v2, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mLocation:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .end local v1    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "poiLocation":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->getEventIcon()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mIcon:Ljava/lang/String;

    .line 335
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->getEventUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mUrl:Ljava/lang/String;

    .line 336
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->getEventSubject()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mSubject:Ljava/lang/String;

    .line 337
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->getEventSubTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mSubTitle:Ljava/lang/String;

    .line 338
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->getEventSubTitleTempId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mSubTitleTempId:Ljava/lang/String;

    .line 339
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->getEventSubTitleTempData()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcob;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mSubTitleTempData:Ljava/util/List;

    .line 340
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->getInstanceBegin()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mInstanceStartTimeMillis:J

    .line 341
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->getInstanceEnd()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mInstanceEndTimeMillis:J

    .line 342
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->getCalendarStatus()I

    move-result v4

    iput v4, v2, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mStatus:I

    .line 343
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->getCalendarSelfStatus()I

    move-result v4

    iput v4, v2, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mSelfStatus:I

    .line 344
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->getCalendarRole()I

    move-result v4

    iput v4, v2, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mRole:I

    .line 345
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->getEventRRule()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mRRule:Ljava/lang/String;

    .line 346
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mUniqueId:Ljava/lang/String;

    .line 347
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->getEventRecurrenceId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mRecurrenceId:Ljava/lang/String;

    .line 348
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->getFolderId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mFolderId:Ljava/lang/String;

    .line 349
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->getCalendarVersion()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mVersion:J

    .line 350
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->getCalendarOwnerId()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mOwnerId:J

    .line 351
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->getEventDtStart()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mEventStartTimeMillis:J

    goto/16 :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "[InstanceShowObject]parse calendar extension failed"

    invoke-static {v4, v0}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private getShortName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 430
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    .end local p1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 434
    .restart local p1    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 438
    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string/jumbo v2, "***"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 358
    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    .line 377
    :cond_0
    :goto_0
    return v1

    .line 359
    :cond_1
    instance-of v2, p1, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 361
    check-cast v0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 363
    .local v0, "that":Lcom/alibaba/android/calendar/data/object/InstanceShowObject;
    iget-wide v2, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mCalendarId:J

    iget-wide v4, v0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mCalendarId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 364
    iget-wide v2, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mEventId:J

    iget-wide v4, v0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mEventId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 365
    iget-wide v2, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mVersion:J

    iget-wide v4, v0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mVersion:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 366
    iget-wide v2, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mInstanceStartTimeMillis:J

    iget-wide v4, v0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mInstanceStartTimeMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 367
    iget-wide v2, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mInstanceEndTimeMillis:J

    iget-wide v4, v0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mInstanceEndTimeMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 368
    iget-object v2, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mUniqueId:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mUniqueId:Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 370
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mRecurrenceId:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mRecurrenceId:Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mRecurrenceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mPrivilege:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mPrivilege:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    iget-object v3, v0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mPrivilege:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    if-ne v2, v3, :cond_0

    .line 377
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mFolderId:Ljava/lang/String;

    iget-object v2, v0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mFolderId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 368
    :cond_5
    iget-object v2, v0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mUniqueId:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 370
    :cond_6
    iget-object v2, v0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mRecurrenceId:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_0

    .line 373
    :cond_7
    iget-object v2, v0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mPrivilege:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    if-eqz v2, :cond_4

    goto :goto_0
.end method

.method public getBizId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mBizId:Ljava/lang/String;

    return-object v0
.end method

.method public getBizType()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mBizType:I

    return v0
.end method

.method public getCalendarId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mCalendarId:J

    return-wide v0
.end method

.method public getCalendarTypeVersion()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mCalendarTypeVersion:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mColor:I

    return v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mDuration:Ljava/lang/String;

    return-object v0
.end method

.method public getEventId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mEventId:J

    return-wide v0
.end method

.method public getEventStartTimeMillis()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 299
    iget-wide v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mEventStartTimeMillis:J

    return-wide v0
.end method

.method public getFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceEndTimeMillis()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 232
    iget-wide v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mInstanceEndTimeMillis:J

    return-wide v0
.end method

.method public getInstanceStartTimeMillis()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 224
    iget-wide v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mInstanceStartTimeMillis:J

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getNavUrl()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 162
    iget-object v2, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    const-string/jumbo v2, ""

    .line 174
    :goto_0
    return-object v2

    .line 165
    :cond_0
    invoke-static {}, Lavq;->h()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 166
    invoke-static {p0}, Lawc;->l(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 167
    invoke-static {p0}, Lawc;->d(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1169
    if-eqz p0, :cond_2

    .line 1172
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getRRule()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getRecurrenceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 168
    :goto_1
    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mUniqueId:Ljava/lang/String;

    .line 169
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 170
    iget-object v3, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mUrl:Ljava/lang/String;

    const-string/jumbo v4, "unique_id"

    iget-object v2, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mUniqueId:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string/jumbo v2, ""

    :goto_2
    invoke-static {v3, v4, v2}, Lcom/alibaba/doraemon/utils/UrlUtil;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "urlWithUniqueId":Ljava/lang/String;
    const-string/jumbo v2, "is_repeat"

    const-string/jumbo v3, "1"

    invoke-static {v0, v2, v3}, Lcom/alibaba/doraemon/utils/UrlUtil;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "urlWithUniqueIdAndRepeat":Ljava/lang/String;
    const-string/jumbo v2, "recurrence_id"

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getRecurrenceIdOrStartTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/doraemon/utils/UrlUtil;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1172
    .end local v0    # "urlWithUniqueId":Ljava/lang/String;
    .end local v1    # "urlWithUniqueIdAndRepeat":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 170
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mUniqueId:Ljava/lang/String;

    goto :goto_2

    .line 174
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOwnerId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 271
    iget-wide v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mOwnerId:J

    return-wide v0
.end method

.method public getPrivilege()Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mPrivilege:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    return-object v0
.end method

.method public getRRule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mRRule:Ljava/lang/String;

    return-object v0
.end method

.method public getRealInstanceStartTimeMillis()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 216
    invoke-static {p0}, Lawc;->c(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-wide v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mInstanceEndTimeMillis:J

    .line 220
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mInstanceStartTimeMillis:J

    goto :goto_0
.end method

.method public getRecurrenceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mRecurrenceId:Ljava/lang/String;

    return-object v0
.end method

.method public getRecurrenceIdOrStartTime()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mRecurrenceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mRecurrenceId:Ljava/lang/String;

    .line 267
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mInstanceStartTimeMillis:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRole()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mRole:I

    return v0
.end method

.method public getSelfStatus()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mSelfStatus:I

    return v0
.end method

.method public getSenderId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mSenderId:J

    return-wide v0
.end method

.method public getSource()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mSource:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mStatus:I

    return v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitleTempData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mSubTitleTempData:Ljava/util/List;

    return-object v0
.end method

.method public getSubTitleTempId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mSubTitleTempId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 179
    invoke-static {p0}, Lawc;->l(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    invoke-static {p0}, Lawc;->d(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    invoke-static {p0}, Lawc;->e(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    new-array v0, v1, [Ljava/lang/String;

    sget v1, Laow$f;->dt_calendar_meeting_canceled_prefix:I

    invoke-static {v1}, Leda;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mSubject:Ljava/lang/String;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    :goto_0
    return-object v0

    .line 183
    :cond_0
    invoke-static {p0}, Lawc;->h(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lawc;->g(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    new-array v0, v1, [Ljava/lang/String;

    sget v1, Laow$f;->dt_calendar_meeting_unresponse_prefix:I

    invoke-static {v1}, Leda;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mSubject:Ljava/lang/String;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 185
    :cond_1
    invoke-static {p0}, Lawc;->f(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    new-array v0, v1, [Ljava/lang/String;

    sget v1, Laow$f;->dt_calendar_meeting_rejected_prefix:I

    invoke-static {v1}, Leda;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mSubject:Ljava/lang/String;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mSubject:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 295
    iget-wide v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mVersion:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v3, 0x20

    const/4 v2, 0x0

    .line 382
    iget-wide v4, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mCalendarId:J

    iget-wide v6, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mCalendarId:J

    ushr-long/2addr v6, v3

    xor-long/2addr v4, v6

    long-to-int v0, v4

    .line 383
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mEventId:J

    iget-wide v6, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mEventId:J

    ushr-long/2addr v6, v3

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v0, v1, v3

    .line 384
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mUniqueId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 385
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mRecurrenceId:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mRecurrenceId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 386
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mFolderId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 387
    return v0

    :cond_1
    move v1, v2

    .line 384
    goto :goto_0
.end method

.method public isAllDayEvent()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mAllDayEvent:Z

    return v0
.end method

.method public isShare()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mIsShare:Z

    return v0
.end method

.method public setCalendarId(J)V
    .locals 1
    .param p1, "calendarId"    # J

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mCalendarId:J

    .line 77
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mColor:I

    .line 155
    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 1
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    sget v0, Laow$a;->ui_common_safe_bg_color:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mColor:I

    .line 151
    :goto_0
    return-void

    .line 150
    :cond_0
    sget v0, Laow$a;->ui_common_safe_bg_color:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    invoke-static {p1, v0}, Lavj;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mColor:I

    goto :goto_0
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0
    .param p1, "duration"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mDuration:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setEventId(J)V
    .locals 1
    .param p1, "eventId"    # J

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mEventId:J

    .line 85
    return-void
.end method

.method public setFolderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mFolderName:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mIcon:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setInstanceEndTimeMillis(J)V
    .locals 1
    .param p1, "instanceEndTimeMillis"    # J

    .prologue
    .line 236
    iput-wide p1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mInstanceEndTimeMillis:J

    .line 237
    return-void
.end method

.method public setInstanceStartTimeMillis(J)V
    .locals 1
    .param p1, "instanceStartTimeMillis"    # J

    .prologue
    .line 228
    iput-wide p1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mInstanceStartTimeMillis:J

    .line 229
    return-void
.end method

.method public setPrivilege(Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;)V
    .locals 0
    .param p1, "privilege"    # Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mPrivilege:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    .line 159
    return-void
.end method

.method public setShare(Z)V
    .locals 0
    .param p1, "share"    # Z

    .prologue
    .line 291
    iput-boolean p1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mIsShare:Z

    .line 292
    return-void
.end method

.method public setSource(I)V
    .locals 0
    .param p1, "source"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mSource:I

    .line 101
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "subTitle"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mSubTitle:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mSubject:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v4, 0x27

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "InstanceShowObject{mCalendarId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mCalendarId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mEventId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mEventId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSenderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mSenderId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCalendarTypeVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mCalendarTypeVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mBizType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mBizType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mBizId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mBizId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAllDayEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mAllDayEvent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStartTimezone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mStartTimezone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDuration=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mDuration:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLocation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIcon=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSubject=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mSubject:Ljava/lang/String;

    .line 406
    invoke-direct {p0, v1}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSubTitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mSubTitle:Ljava/lang/String;

    .line 407
    invoke-direct {p0, v1}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSubTitleTempId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mSubTitleTempId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSubTitleTempData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mSubTitleTempData:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mEventStartTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mEventStartTimeMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mInstanceStartTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mInstanceStartTimeMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mInstanceEndTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mInstanceEndTimeMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSelfStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mSelfStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mRole:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRRule=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mRRule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mUniqueId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRecurrenceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mRecurrenceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mOwnerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mOwnerId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mFolderId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mFolderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mFolderName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPrivilege="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mPrivilege:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsShare="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mIsShare:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->mVersion:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
