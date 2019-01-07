.class public Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;
.super Ljava/lang/Object;
.source "EventInstanceObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mAllDay:Z

.field private mCanOrganizerResponse:I

.field private mColor:I

.field private mDisplayName:Ljava/lang/String;

.field private mEndDay:I

.field private mEndMillis:J

.field private mEndTime:I

.field private mFolderServerId:Ljava/lang/String;

.field private mGuestsCanModify:Z

.field private mHasAlarm:Z

.field private mId:J

.field private mIsRepeating:Z

.field private mIsSystem:Z

.field private mLocation:Ljava/lang/CharSequence;

.field private mMessageAccountId:J

.field private mMessageMailboxId:J

.field private mMessageServerId:Ljava/lang/String;

.field private mMessageThreadTopic:Ljava/lang/String;

.field private mMessageThreadTopicNumber:I

.field private mMessageType:I

.field private mOrganizer:Ljava/lang/String;

.field private mOrganizerName:Ljava/lang/String;

.field private mOwerAccount:Ljava/lang/String;

.field private mParentCalendarId:J

.field private mRrule:Ljava/lang/String;

.field private mSelfAttendeeStatus:I

.field private mStartDay:I

.field private mStartMillis:J

.field private mStartTime:I

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 447
    if-ne p0, p1, :cond_1

    .line 489
    :cond_0
    :goto_0
    return v1

    .line 448
    :cond_1
    instance-of v3, p1, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 450
    check-cast v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    .line 452
    .local v0, "that":Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;
    iget-wide v4, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mId:J

    iget-wide v6, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_0

    .line 453
    :cond_3
    iget v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mColor:I

    iget v4, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mColor:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 454
    :cond_4
    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mAllDay:Z

    iget-boolean v4, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mAllDay:Z

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 455
    :cond_5
    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mGuestsCanModify:Z

    iget-boolean v4, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mGuestsCanModify:Z

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 456
    :cond_6
    iget v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mStartDay:I

    iget v4, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mStartDay:I

    if-eq v3, v4, :cond_7

    move v1, v2

    goto :goto_0

    .line 457
    :cond_7
    iget v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mEndDay:I

    iget v4, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mEndDay:I

    if-eq v3, v4, :cond_8

    move v1, v2

    goto :goto_0

    .line 458
    :cond_8
    iget v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mStartTime:I

    iget v4, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mStartTime:I

    if-eq v3, v4, :cond_9

    move v1, v2

    goto :goto_0

    .line 459
    :cond_9
    iget v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mEndTime:I

    iget v4, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mEndTime:I

    if-eq v3, v4, :cond_a

    move v1, v2

    goto :goto_0

    .line 460
    :cond_a
    iget-wide v4, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mStartMillis:J

    iget-wide v6, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mStartMillis:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_b

    move v1, v2

    goto :goto_0

    .line 461
    :cond_b
    iget-wide v4, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mEndMillis:J

    iget-wide v6, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mEndMillis:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_c

    move v1, v2

    goto :goto_0

    .line 462
    :cond_c
    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mHasAlarm:Z

    iget-boolean v4, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mHasAlarm:Z

    if-eq v3, v4, :cond_d

    move v1, v2

    goto :goto_0

    .line 463
    :cond_d
    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mIsRepeating:Z

    iget-boolean v4, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mIsRepeating:Z

    if-eq v3, v4, :cond_e

    move v1, v2

    goto/16 :goto_0

    .line 464
    :cond_e
    iget v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mSelfAttendeeStatus:I

    iget v4, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mSelfAttendeeStatus:I

    if-eq v3, v4, :cond_f

    move v1, v2

    goto/16 :goto_0

    .line 465
    :cond_f
    iget v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mCanOrganizerResponse:I

    iget v4, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mCanOrganizerResponse:I

    if-eq v3, v4, :cond_10

    move v1, v2

    goto/16 :goto_0

    .line 466
    :cond_10
    iget-wide v4, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageAccountId:J

    iget-wide v6, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageAccountId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_11

    move v1, v2

    goto/16 :goto_0

    .line 467
    :cond_11
    iget-wide v4, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageMailboxId:J

    iget-wide v6, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageMailboxId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_12

    move v1, v2

    goto/16 :goto_0

    .line 468
    :cond_12
    iget v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageThreadTopicNumber:I

    iget v4, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageThreadTopicNumber:I

    if-eq v3, v4, :cond_13

    move v1, v2

    goto/16 :goto_0

    .line 469
    :cond_13
    iget v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageType:I

    iget v4, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageType:I

    if-eq v3, v4, :cond_14

    move v1, v2

    goto/16 :goto_0

    .line 470
    :cond_14
    iget-wide v4, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mParentCalendarId:J

    iget-wide v6, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mParentCalendarId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_15

    move v1, v2

    goto/16 :goto_0

    .line 471
    :cond_15
    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mIsSystem:Z

    iget-boolean v4, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mIsSystem:Z

    if-eq v3, v4, :cond_16

    move v1, v2

    goto/16 :goto_0

    .line 472
    :cond_16
    iget-object v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mTitle:Ljava/lang/CharSequence;

    iget-object v4, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    :cond_17
    move v1, v2

    goto/16 :goto_0

    :cond_18
    iget-object v3, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mTitle:Ljava/lang/CharSequence;

    if-nez v3, :cond_17

    .line 473
    :cond_19
    iget-object v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mLocation:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mLocation:Ljava/lang/CharSequence;

    iget-object v4, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mLocation:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    :cond_1a
    move v1, v2

    .line 474
    goto/16 :goto_0

    .line 473
    :cond_1b
    iget-object v3, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mLocation:Ljava/lang/CharSequence;

    if-nez v3, :cond_1a

    .line 475
    :cond_1c
    iget-object v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mOrganizer:Ljava/lang/String;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mOrganizer:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mOrganizer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    :cond_1d
    move v1, v2

    .line 476
    goto/16 :goto_0

    .line 475
    :cond_1e
    iget-object v3, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mOrganizer:Ljava/lang/String;

    if-nez v3, :cond_1d

    .line 477
    :cond_1f
    iget-object v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mOrganizerName:Ljava/lang/String;

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mOrganizerName:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mOrganizerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    :cond_20
    move v1, v2

    .line 478
    goto/16 :goto_0

    .line 477
    :cond_21
    iget-object v3, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mOrganizerName:Ljava/lang/String;

    if-nez v3, :cond_20

    .line 479
    :cond_22
    iget-object v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mRrule:Ljava/lang/String;

    if-eqz v3, :cond_24

    iget-object v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mRrule:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mRrule:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    :cond_23
    move v1, v2

    goto/16 :goto_0

    :cond_24
    iget-object v3, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mRrule:Ljava/lang/String;

    if-nez v3, :cond_23

    .line 480
    :cond_25
    iget-object v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mOwerAccount:Ljava/lang/String;

    if-eqz v3, :cond_27

    iget-object v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mOwerAccount:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mOwerAccount:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    :cond_26
    move v1, v2

    .line 481
    goto/16 :goto_0

    .line 480
    :cond_27
    iget-object v3, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mOwerAccount:Ljava/lang/String;

    if-nez v3, :cond_26

    .line 482
    :cond_28
    iget-object v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageServerId:Ljava/lang/String;

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageServerId:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageServerId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    :cond_29
    move v1, v2

    .line 483
    goto/16 :goto_0

    .line 482
    :cond_2a
    iget-object v3, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageServerId:Ljava/lang/String;

    if-nez v3, :cond_29

    .line 484
    :cond_2b
    iget-object v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageThreadTopic:Ljava/lang/String;

    if-eqz v3, :cond_2d

    iget-object v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageThreadTopic:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageThreadTopic:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    :cond_2c
    move v1, v2

    .line 485
    goto/16 :goto_0

    .line 484
    :cond_2d
    iget-object v3, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageThreadTopic:Ljava/lang/String;

    if-nez v3, :cond_2c

    .line 486
    :cond_2e
    iget-object v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mFolderServerId:Ljava/lang/String;

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mFolderServerId:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mFolderServerId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    :cond_2f
    move v1, v2

    .line 487
    goto/16 :goto_0

    .line 486
    :cond_30
    iget-object v3, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mFolderServerId:Ljava/lang/String;

    if-nez v3, :cond_2f

    .line 489
    :cond_31
    iget-object v3, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mDisplayName:Ljava/lang/String;

    if-eqz v3, :cond_32

    iget-object v1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mDisplayName:Ljava/lang/String;

    iget-object v2, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0

    :cond_32
    iget-object v3, v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mDisplayName:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto/16 :goto_0
.end method

.method public getCanOrganizerResponse()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mCanOrganizerResponse:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mColor:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEndDay()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mEndDay:I

    return v0
.end method

.method public getEndMillis()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 274
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mEndMillis:J

    return-wide v0
.end method

.method public getEndTime()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mEndTime:I

    return v0
.end method

.method public getFolderServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mFolderServerId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mId:J

    return-wide v0
.end method

.method public getLocation()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mLocation:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getMessageAccountId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 338
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageAccountId:J

    return-wide v0
.end method

.method public getMessageMailboxId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 346
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageMailboxId:J

    return-wide v0
.end method

.method public getMessageServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageServerId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageThreadTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageThreadTopic:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageThreadTopicNumber()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageThreadTopicNumber:I

    return v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageType:I

    return v0
.end method

.method public getOrganizer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mOrganizer:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganizerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mOrganizerName:Ljava/lang/String;

    return-object v0
.end method

.method public getOwerAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mOwerAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getParentCalendarId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 378
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mParentCalendarId:J

    return-wide v0
.end method

.method public getRrule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mRrule:Ljava/lang/String;

    return-object v0
.end method

.method public getSelfAttendeeStatus()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mSelfAttendeeStatus:I

    return v0
.end method

.method public getStartDay()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mStartDay:I

    return v0
.end method

.method public getStartMillis()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 266
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mStartMillis:J

    return-wide v0
.end method

.method public getStartTime()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mStartTime:I

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v6, 0x20

    .line 494
    iget-wide v2, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mId:J

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mId:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    .line 495
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mStartMillis:J

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mStartMillis:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 496
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mEndMillis:J

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mEndMillis:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 497
    return v0
.end method

.method public isAllDay()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mAllDay:Z

    return v0
.end method

.method public isGuestsCanModify()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mGuestsCanModify:Z

    return v0
.end method

.method public isHasAlarm()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mHasAlarm:Z

    return v0
.end method

.method public isRepeating()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mIsRepeating:Z

    return v0
.end method

.method public isSystem()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mIsSystem:Z

    return v0
.end method

.method public merge(Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;)V
    .locals 2
    .param p1, "eventInstanceObject"    # Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 410
    if-nez p1, :cond_0

    .line 443
    :goto_0
    return-void

    .line 413
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mId:J

    .line 414
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getColor()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mColor:I

    .line 415
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mTitle:Ljava/lang/CharSequence;

    .line 416
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getLocation()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mLocation:Ljava/lang/CharSequence;

    .line 417
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->isAllDay()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mAllDay:Z

    .line 418
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getOrganizer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mOrganizer:Ljava/lang/String;

    .line 419
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getOrganizerName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mOrganizerName:Ljava/lang/String;

    .line 420
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->isGuestsCanModify()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mGuestsCanModify:Z

    .line 421
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getStartDay()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mStartDay:I

    .line 422
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getEndDay()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mEndDay:I

    .line 423
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getStartTime()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mStartTime:I

    .line 424
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getEndTime()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mEndTime:I

    .line 425
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getStartMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mStartMillis:J

    .line 426
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getEndMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mEndMillis:J

    .line 427
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->isHasAlarm()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mHasAlarm:Z

    .line 428
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->isRepeating()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mIsRepeating:Z

    .line 429
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getRrule()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mRrule:Ljava/lang/String;

    .line 430
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getSelfAttendeeStatus()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mSelfAttendeeStatus:I

    .line 431
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getCanOrganizerResponse()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mCanOrganizerResponse:I

    .line 432
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getOwerAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mOwerAccount:Ljava/lang/String;

    .line 433
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getMessageServerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageServerId:Ljava/lang/String;

    .line 434
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getMessageAccountId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageAccountId:J

    .line 435
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getMessageMailboxId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageMailboxId:J

    .line 436
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getMessageThreadTopic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageThreadTopic:Ljava/lang/String;

    .line 437
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getMessageThreadTopicNumber()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageThreadTopicNumber:I

    .line 438
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getMessageType()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageType:I

    .line 439
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getParentCalendarId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mParentCalendarId:J

    .line 440
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->isSystem()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mIsSystem:Z

    .line 441
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mDisplayName:Ljava/lang/String;

    .line 442
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getFolderServerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mFolderServerId:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public setAllDay(Z)V
    .locals 0
    .param p1, "allDay"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mAllDay:Z

    .line 207
    return-void
.end method

.method public setCanOrganizerResponse(I)V
    .locals 0
    .param p1, "canOrganizerResponse"    # I

    .prologue
    .line 318
    iput p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mCanOrganizerResponse:I

    .line 319
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 182
    iput p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mColor:I

    .line 183
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mDisplayName:Ljava/lang/String;

    .line 395
    return-void
.end method

.method public setEndDay(I)V
    .locals 0
    .param p1, "endDay"    # I

    .prologue
    .line 246
    iput p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mEndDay:I

    .line 247
    return-void
.end method

.method public setEndMillis(J)V
    .locals 1
    .param p1, "endMillis"    # J

    .prologue
    .line 278
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mEndMillis:J

    .line 279
    return-void
.end method

.method public setEndTime(I)V
    .locals 0
    .param p1, "endTime"    # I

    .prologue
    .line 262
    iput p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mEndTime:I

    .line 263
    return-void
.end method

.method public setFolderServerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "folderServerId"    # Ljava/lang/String;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mFolderServerId:Ljava/lang/String;

    .line 407
    return-void
.end method

.method public setGuestsCanModify(Z)V
    .locals 0
    .param p1, "guestsCanModify"    # Z

    .prologue
    .line 230
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mGuestsCanModify:Z

    .line 231
    return-void
.end method

.method public setHasAlarm(Z)V
    .locals 0
    .param p1, "hasAlarm"    # Z

    .prologue
    .line 286
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mHasAlarm:Z

    .line 287
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 174
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mId:J

    .line 175
    return-void
.end method

.method public setLocation(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/CharSequence;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mLocation:Ljava/lang/CharSequence;

    .line 199
    return-void
.end method

.method public setMessageAccountId(J)V
    .locals 1
    .param p1, "messageAccountId"    # J

    .prologue
    .line 342
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageAccountId:J

    .line 343
    return-void
.end method

.method public setMessageMailboxId(J)V
    .locals 1
    .param p1, "messageMailboxId"    # J

    .prologue
    .line 350
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageMailboxId:J

    .line 351
    return-void
.end method

.method public setMessageServerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageServerId"    # Ljava/lang/String;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageServerId:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public setMessageThreadTopic(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageThreadTopic"    # Ljava/lang/String;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageThreadTopic:Ljava/lang/String;

    .line 359
    return-void
.end method

.method public setMessageThreadTopicNumber(I)V
    .locals 0
    .param p1, "messageThreadTopicNumber"    # I

    .prologue
    .line 366
    iput p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageThreadTopicNumber:I

    .line 367
    return-void
.end method

.method public setMessageType(I)V
    .locals 0
    .param p1, "messageType"    # I

    .prologue
    .line 374
    iput p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mMessageType:I

    .line 375
    return-void
.end method

.method public setOrganizer(Ljava/lang/String;)V
    .locals 0
    .param p1, "organizer"    # Ljava/lang/String;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mOrganizer:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setOrganizerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "organizerName"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mOrganizerName:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setOwerAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "owerAccount"    # Ljava/lang/String;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mOwerAccount:Ljava/lang/String;

    .line 327
    return-void
.end method

.method public setParentCalendarId(J)V
    .locals 1
    .param p1, "parentCalendarId"    # J

    .prologue
    .line 382
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mParentCalendarId:J

    .line 383
    return-void
.end method

.method public setRepeating(Z)V
    .locals 0
    .param p1, "repeating"    # Z

    .prologue
    .line 294
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mIsRepeating:Z

    .line 295
    return-void
.end method

.method public setRrule(Ljava/lang/String;)V
    .locals 0
    .param p1, "rrule"    # Ljava/lang/String;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mRrule:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public setSelfAttendeeStatus(I)V
    .locals 0
    .param p1, "selfAttendeeStatus"    # I

    .prologue
    .line 310
    iput p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mSelfAttendeeStatus:I

    .line 311
    return-void
.end method

.method public setStartDay(I)V
    .locals 0
    .param p1, "startDay"    # I

    .prologue
    .line 238
    iput p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mStartDay:I

    .line 239
    return-void
.end method

.method public setStartMillis(J)V
    .locals 1
    .param p1, "startMillis"    # J

    .prologue
    .line 270
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mStartMillis:J

    .line 271
    return-void
.end method

.method public setStartTime(I)V
    .locals 0
    .param p1, "startTime"    # I

    .prologue
    .line 254
    iput p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mStartTime:I

    .line 255
    return-void
.end method

.method public setSystem(Z)V
    .locals 0
    .param p1, "system"    # Z

    .prologue
    .line 390
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mIsSystem:Z

    .line 391
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->mTitle:Ljava/lang/CharSequence;

    .line 191
    return-void
.end method
