.class public Lcom/alibaba/android/calendar/data/object/MailEvent;
.super Ljava/lang/Object;
.source "MailEvent.java"

# interfaces
.implements Lawv;
.implements Laxn;
.implements Ljava/io/Serializable;


# instance fields
.field private mDayStartTimeMillis:J

.field private mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;


# direct methods
.method public constructor <init>(JLcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;)V
    .locals 1
    .param p1, "dayStartTimeMillis"    # J
    .param p3, "mailEventInstance"    # Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mDayStartTimeMillis:J

    .line 37
    iput-object p3, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/calendar/data/object/MailEvent;)Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/data/object/MailEvent;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    return-object v0
.end method


# virtual methods
.method public canModifyStartAndEndTimeConcurrently()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public canModifyStartOrEndTimeIndividually()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 221
    if-ne p0, p1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v1

    .line 222
    :cond_1
    instance-of v3, p1, Lcom/alibaba/android/calendar/data/object/MailEvent;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 224
    check-cast v0, Lcom/alibaba/android/calendar/data/object/MailEvent;

    .line 226
    .local v0, "mailEvent":Lcom/alibaba/android/calendar/data/object/MailEvent;
    iget-wide v4, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mDayStartTimeMillis:J

    iget-wide v6, v0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mDayStartTimeMillis:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_0

    .line 227
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    iget-object v2, v0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getBodyBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBodyColor()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, -0x1

    return v0
.end method

.method public getCalendarId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDayEventDelegate()Laxn$a;
    .locals 1

    .prologue
    .line 205
    new-instance v0, Lcom/alibaba/android/calendar/data/object/MailEvent$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/calendar/data/object/MailEvent$1;-><init>(Lcom/alibaba/android/calendar/data/object/MailEvent;)V

    return-object v0
.end method

.method public getDayStartTimeMillis()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mDayStartTimeMillis:J

    return-wide v0
.end method

.method public getDescColor()I
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/data/object/MailEvent;->shouldShowStrikeThrough()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Laow$a;->ui_common_level3_text_color:I

    :goto_0
    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    return v0

    :cond_0
    sget v0, Laow$a;->ui_common_level1_text_color:I

    goto :goto_0
.end method

.method public getEventStartTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 239
    iget-wide v0, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mDayStartTimeMillis:J

    return-wide v0
.end method

.method public getFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 177
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    if-nez v0, :cond_0

    .line 178
    const-string/jumbo v0, ""

    .line 185
    :goto_0
    return-object v0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    const-string/jumbo v0, ""

    goto :goto_0

    .line 185
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Laow$f;->dt_ding_from_share_mail_event_at:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIndicatorColor()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getColor()I

    move-result v0

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getLocation()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    const-string/jumbo v0, ""

    .line 85
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getLocation()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMailEventInstance()Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    return-object v0
.end method

.method public getOwnerId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 172
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPrivilege()Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShowEndTimeMillis()J
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    if-nez v0, :cond_0

    .line 115
    const-wide/16 v0, 0x0

    .line 117
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getEndMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    .line 118
    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getStartMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1b7740

    add-long/2addr v2, v4

    .line 117
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lawj;->a(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getShowStartTimeMillis()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    if-nez v0, :cond_0

    .line 107
    const-wide/16 v0, 0x0

    .line 109
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getStartMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lawj;->a(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getSortedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    .line 65
    :cond_0
    const-string/jumbo v0, ""

    .line 67
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSortedTime()J
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    if-nez v0, :cond_0

    .line 56
    const-wide/16 v0, 0x0

    .line 58
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->isAllDay()Z

    move-result v1

    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    .line 59
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getStartMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getEndMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mDayStartTimeMillis:J

    .line 58
    invoke-static/range {v1 .. v7}, Lawo;->a(ZJJJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    invoke-static {v0}, Lavg;->a(Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleColor()I
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/data/object/MailEvent;->shouldShowStrikeThrough()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Laow$a;->ui_common_level3_text_color:I

    :goto_0
    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    return v0

    :cond_0
    sget v0, Laow$a;->ui_common_level1_text_color:I

    goto :goto_0
.end method

.method public getType()Lcom/alibaba/android/calendar/v2/data/object/EventType;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;->MAIL:Lcom/alibaba/android/calendar/v2/data/object/EventType;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 232
    iget-wide v2, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mDayStartTimeMillis:J

    iget-wide v4, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mDayStartTimeMillis:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v0, v2

    .line 233
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 234
    return v0

    .line 233
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAllDay()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->isAllDay()Z

    move-result v0

    goto :goto_0
.end method

.method public isCrossDay()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getStartMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getEndMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lawj;->b(JJ)Z

    move-result v0

    goto :goto_0
.end method

.method public isRepeatEvent()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/MailEvent;->mMailEventInstance:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getRrule()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShareCalendar()Z
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public shouldShowStrikeThrough()Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method
