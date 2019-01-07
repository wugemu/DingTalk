.class public Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;
.super Ljava/lang/Object;
.source "EventDetailObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SELF_ATTENDEE_STATUS_ACCEPTED:I = 0x1

.field public static final SELF_ATTENDEE_STATUS_INIT:I = 0x0

.field public static final SELF_ATTENDEE_STATUS_INVITED:I = 0x3

.field public static final SELF_ATTENDEE_STATUS_REJECTED:I = 0x2

.field public static final SELF_ATTENDEE_STATUS_TENTATIVE:I = 0x4


# instance fields
.field private mAllDay:Z

.field private mAttendeeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;",
            ">;"
        }
    .end annotation
.end field

.field private mCalendarId:J

.field private mCalendarParentId:J

.field private mCanOrganizerResponse:I

.field private mCanSync:I

.field private mColor:I

.field private mDescription:Ljava/lang/String;

.field private mDtStart:J

.field private mEndDay:I

.field private mEndMillis:J

.field private mEndTime:I

.field private mFolderServerId:Ljava/lang/String;

.field private mGuestsCanModify:Z

.field private mHasAlarm:Z

.field private mId:J

.field private mIsSystem:Z

.field private mLocation:Ljava/lang/String;

.field private mMessageAccountId:J

.field private mMessageMailboxId:J

.field private mMessageServerId:Ljava/lang/String;

.field private mMessageThreadTopic:Ljava/lang/String;

.field private mMessageThreadTopicNumber:I

.field private mMessageType:I

.field private mOrganizer:Ljava/lang/String;

.field private mOrganizerName:Ljava/lang/String;

.field private mOriginalId:J

.field private mOriginalSyncId:Ljava/lang/String;

.field private mOwerAccount:Ljava/lang/String;

.field private mReminderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cmailbase/calendar/ReminderObject;",
            ">;"
        }
    .end annotation
.end field

.field private mRrule:Ljava/lang/String;

.field private mSelfAttendeeStatus:I

.field private mStartDay:I

.field private mStartMillis:J

.field private mStartTime:I

.field private mStatus:I

.field private mSyncId:Ljava/lang/String;

.field private mTimezone:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    return-void
.end method


# virtual methods
.method public getAttendeeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 498
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mAttendeeList:Ljava/util/List;

    return-object v0
.end method

.method public getCalendarId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 402
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mCalendarId:J

    return-wide v0
.end method

.method public getCalendarParentId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 410
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mCalendarParentId:J

    return-wide v0
.end method

.method public getCanOrganizerResponse()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mCanOrganizerResponse:I

    return v0
.end method

.method public getCanSync()I
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mCanSync:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mColor:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mOrganizerName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mOrganizerName:Ljava/lang/String;

    .line 525
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mOrganizer:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDtStart()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 290
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mDtStart:J

    return-wide v0
.end method

.method public getEndDay()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mEndDay:I

    return v0
.end method

.method public getEndMillis()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 338
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mEndMillis:J

    return-wide v0
.end method

.method public getEndTime()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mEndTime:I

    return v0
.end method

.method public getFolderServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mFolderServerId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 218
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mId:J

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageAccountId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 442
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mMessageAccountId:J

    return-wide v0
.end method

.method public getMessageMailboxId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 450
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mMessageMailboxId:J

    return-wide v0
.end method

.method public getMessageServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mMessageServerId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageThreadTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mMessageThreadTopic:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageThreadTopicNumber()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mMessageThreadTopicNumber:I

    return v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mMessageType:I

    return v0
.end method

.method public getOrganizer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mOrganizer:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganizerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mOrganizerName:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 394
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mOriginalId:J

    return-wide v0
.end method

.method public getOriginalSyncId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mOriginalSyncId:Ljava/lang/String;

    return-object v0
.end method

.method public getOwerAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mOwerAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getReminderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cmailbase/calendar/ReminderObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 506
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mReminderList:Ljava/util/List;

    return-object v0
.end method

.method public getRrule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mRrule:Ljava/lang/String;

    return-object v0
.end method

.method public getSelfAttendeeStatus()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mSelfAttendeeStatus:I

    return v0
.end method

.method public getStartDay()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mStartDay:I

    return v0
.end method

.method public getStartMillis()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 330
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mStartMillis:J

    return-wide v0
.end method

.method public getStartTime()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mStartTime:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mStatus:I

    return v0
.end method

.method public getSyncId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mSyncId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mTimezone:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isAllDay()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mAllDay:Z

    return v0
.end method

.method public isGuestsCanModify()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mGuestsCanModify:Z

    return v0
.end method

.method public isHasAlarm()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mHasAlarm:Z

    return v0
.end method

.method public isSelfStatusAccepted()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 533
    iget v1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mSelfAttendeeStatus:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelfStatusInit()Z
    .locals 1

    .prologue
    .line 529
    iget v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mSelfAttendeeStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelfStatusRejected()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 537
    iget v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mSelfAttendeeStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelfTentative()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 541
    iget v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mSelfAttendeeStatus:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mSelfAttendeeStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSystem()Z
    .locals 1

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mIsSystem:Z

    return v0
.end method

.method public setAllDay(Z)V
    .locals 0
    .param p1, "allDay"    # Z

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mAllDay:Z

    .line 263
    return-void
.end method

.method public setAttendeeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 502
    .local p1, "attendeeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;>;"
    iput-object p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mAttendeeList:Ljava/util/List;

    .line 503
    return-void
.end method

.method public setCalendarId(J)V
    .locals 1
    .param p1, "calendarId"    # J

    .prologue
    .line 406
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mCalendarId:J

    .line 407
    return-void
.end method

.method public setCalendarParentId(J)V
    .locals 1
    .param p1, "parentId"    # J

    .prologue
    .line 414
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mCalendarParentId:J

    .line 415
    return-void
.end method

.method public setCanOrganizerResponse(I)V
    .locals 0
    .param p1, "canOrganizerResponse"    # I

    .prologue
    .line 374
    iput p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mCanOrganizerResponse:I

    .line 375
    return-void
.end method

.method public setCanSync(I)V
    .locals 0
    .param p1, "canSync"    # I

    .prologue
    .line 494
    iput p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mCanSync:I

    .line 495
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 230
    iput p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mColor:I

    .line 231
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mDescription:Ljava/lang/String;

    .line 423
    return-void
.end method

.method public setDtStart(J)V
    .locals 1
    .param p1, "dtStart"    # J

    .prologue
    .line 294
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mDtStart:J

    .line 295
    return-void
.end method

.method public setEndDay(I)V
    .locals 0
    .param p1, "endDay"    # I

    .prologue
    .line 310
    iput p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mEndDay:I

    .line 311
    return-void
.end method

.method public setEndMillis(J)V
    .locals 1
    .param p1, "endMillis"    # J

    .prologue
    .line 342
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mEndMillis:J

    .line 343
    return-void
.end method

.method public setEndTime(I)V
    .locals 0
    .param p1, "endTime"    # I

    .prologue
    .line 326
    iput p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mEndTime:I

    .line 327
    return-void
.end method

.method public setFolderServerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "folderServerId"    # Ljava/lang/String;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mFolderServerId:Ljava/lang/String;

    .line 550
    return-void
.end method

.method public setGuestsCanModify(Z)V
    .locals 0
    .param p1, "guestsCanModify"    # Z

    .prologue
    .line 286
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mGuestsCanModify:Z

    .line 287
    return-void
.end method

.method public setHasAlarm(Z)V
    .locals 0
    .param p1, "hasAlarm"    # Z

    .prologue
    .line 350
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mHasAlarm:Z

    .line 351
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 222
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mId:J

    .line 223
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mLocation:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setMessageAccountId(J)V
    .locals 1
    .param p1, "messageAccountId"    # J

    .prologue
    .line 446
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mMessageAccountId:J

    .line 447
    return-void
.end method

.method public setMessageMailboxId(J)V
    .locals 1
    .param p1, "messageMailboxId"    # J

    .prologue
    .line 454
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mMessageMailboxId:J

    .line 455
    return-void
.end method

.method public setMessageServerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageServerId"    # Ljava/lang/String;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mMessageServerId:Ljava/lang/String;

    .line 439
    return-void
.end method

.method public setMessageThreadTopic(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageThreadTopic"    # Ljava/lang/String;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mMessageThreadTopic:Ljava/lang/String;

    .line 463
    return-void
.end method

.method public setMessageThreadTopicNumber(I)V
    .locals 0
    .param p1, "messageThreadTopicNumber"    # I

    .prologue
    .line 470
    iput p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mMessageThreadTopicNumber:I

    .line 471
    return-void
.end method

.method public setMessageType(I)V
    .locals 0
    .param p1, "messageType"    # I

    .prologue
    .line 478
    iput p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mMessageType:I

    .line 479
    return-void
.end method

.method public setOrganizer(Ljava/lang/String;)V
    .locals 0
    .param p1, "organizer"    # Ljava/lang/String;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mOrganizer:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setOrganizerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "organizerName"    # Ljava/lang/String;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mOrganizerName:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public setOriginalId(J)V
    .locals 1
    .param p1, "originalId"    # J

    .prologue
    .line 398
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mOriginalId:J

    .line 399
    return-void
.end method

.method public setOriginalSyncId(Ljava/lang/String;)V
    .locals 0
    .param p1, "originalSyncId"    # Ljava/lang/String;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mOriginalSyncId:Ljava/lang/String;

    .line 391
    return-void
.end method

.method public setOwerAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "owerAccount"    # Ljava/lang/String;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mOwerAccount:Ljava/lang/String;

    .line 383
    return-void
.end method

.method public setReminderList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cmailbase/calendar/ReminderObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 510
    .local p1, "reminderList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cmailbase/calendar/ReminderObject;>;"
    iput-object p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mReminderList:Ljava/util/List;

    .line 511
    return-void
.end method

.method public setRrule(Ljava/lang/String;)V
    .locals 0
    .param p1, "rrule"    # Ljava/lang/String;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mRrule:Ljava/lang/String;

    .line 359
    return-void
.end method

.method public setSelfAttendeeStatus(I)V
    .locals 0
    .param p1, "selfAttendeeStatus"    # I

    .prologue
    .line 366
    iput p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mSelfAttendeeStatus:I

    .line 367
    return-void
.end method

.method public setStartDay(I)V
    .locals 0
    .param p1, "startDay"    # I

    .prologue
    .line 302
    iput p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mStartDay:I

    .line 303
    return-void
.end method

.method public setStartMillis(J)V
    .locals 1
    .param p1, "startMillis"    # J

    .prologue
    .line 334
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mStartMillis:J

    .line 335
    return-void
.end method

.method public setStartTime(I)V
    .locals 0
    .param p1, "startTime"    # I

    .prologue
    .line 318
    iput p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mStartTime:I

    .line 319
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 486
    iput p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mStatus:I

    .line 487
    return-void
.end method

.method public setSyncId(Ljava/lang/String;)V
    .locals 0
    .param p1, "syncId"    # Ljava/lang/String;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mSyncId:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public setSystem(Z)V
    .locals 0
    .param p1, "system"    # Z

    .prologue
    .line 518
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mIsSystem:Z

    .line 519
    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timezone"    # Ljava/lang/String;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mTimezone:Ljava/lang/String;

    .line 431
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->mTitle:Ljava/lang/String;

    .line 239
    return-void
.end method
