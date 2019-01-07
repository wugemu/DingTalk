.class public Lcom/alibaba/android/calendar/data/object/SystemEvent;
.super Ljava/lang/Object;
.source "SystemEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mAllDay:Z

.field private mCalendarAccessLevel:I

.field private mCalendarColor:I

.field private mCalendarDisplayName:Ljava/lang/String;

.field private mCalendarId:I

.field private mDescription:Ljava/lang/String;

.field private mEnd:J

.field private mEventId:J

.field private mLocation:Ljava/lang/String;

.field private mRRule:Ljava/lang/String;

.field private mReminderMinutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStart:J

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;ILjava/lang/String;Ljava/util/List;II)V
    .locals 1
    .param p1, "eventId"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "location"    # Ljava/lang/String;
    .param p5, "calendarDisplayName"    # Ljava/lang/String;
    .param p6, "allDay"    # Z
    .param p7, "start"    # J
    .param p9, "end"    # J
    .param p11, "rRule"    # Ljava/lang/String;
    .param p12, "calendarAccessLevel"    # I
    .param p13, "description"    # Ljava/lang/String;
    .param p15, "calendarId"    # I
    .param p16, "calendarColor"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZJJ",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p14, "reminderMinutes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mEventId:J

    .line 44
    iput-object p3, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mTitle:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mLocation:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mCalendarDisplayName:Ljava/lang/String;

    .line 47
    iput-boolean p6, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mAllDay:Z

    .line 48
    iput-wide p7, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mStart:J

    .line 49
    iput-wide p9, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mEnd:J

    .line 50
    iput-object p11, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mRRule:Ljava/lang/String;

    .line 51
    iput p12, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mCalendarAccessLevel:I

    .line 52
    iput-object p13, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mDescription:Ljava/lang/String;

    .line 53
    iput-object p14, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mReminderMinutes:Ljava/util/List;

    .line 54
    move/from16 v0, p15

    iput v0, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mCalendarId:I

    .line 55
    move/from16 v0, p16

    iput v0, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mCalendarColor:I

    .line 56
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    if-ne p0, p1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v1

    .line 133
    :cond_1
    instance-of v3, p1, Lcom/alibaba/android/calendar/data/object/SystemEvent;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 135
    check-cast v0, Lcom/alibaba/android/calendar/data/object/SystemEvent;

    .line 137
    .local v0, "that":Lcom/alibaba/android/calendar/data/object/SystemEvent;
    iget-wide v4, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mEventId:J

    iget-wide v6, v0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mEventId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_0

    .line 138
    :cond_3
    iget-boolean v3, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mAllDay:Z

    iget-boolean v4, v0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mAllDay:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 139
    :cond_4
    iget-wide v4, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mStart:J

    iget-wide v6, v0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mStart:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 140
    :cond_5
    iget-wide v4, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mEnd:J

    iget-wide v6, v0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mEnd:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 141
    :cond_6
    iget v3, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mCalendarAccessLevel:I

    iget v4, v0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mCalendarAccessLevel:I

    if-eq v3, v4, :cond_7

    move v1, v2

    goto :goto_0

    .line 142
    :cond_7
    iget v3, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mCalendarId:I

    iget v4, v0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mCalendarId:I

    if-eq v3, v4, :cond_8

    move v1, v2

    goto :goto_0

    .line 143
    :cond_8
    iget v3, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mCalendarColor:I

    iget v4, v0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mCalendarColor:I

    if-eq v3, v4, :cond_9

    move v1, v2

    goto :goto_0

    .line 144
    :cond_9
    iget-object v3, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mTitle:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    move v1, v2

    goto :goto_0

    :cond_b
    iget-object v3, v0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mTitle:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 145
    :cond_c
    iget-object v3, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mLocation:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mLocation:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mLocation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_d
    move v1, v2

    .line 146
    goto :goto_0

    .line 145
    :cond_e
    iget-object v3, v0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mLocation:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 147
    :cond_f
    iget-object v3, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mCalendarDisplayName:Ljava/lang/String;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mCalendarDisplayName:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mCalendarDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    :cond_10
    move v1, v2

    .line 148
    goto/16 :goto_0

    .line 147
    :cond_11
    iget-object v3, v0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mCalendarDisplayName:Ljava/lang/String;

    if-nez v3, :cond_10

    .line 149
    :cond_12
    iget-object v3, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mRRule:Ljava/lang/String;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mRRule:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mRRule:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    :cond_13
    move v1, v2

    goto/16 :goto_0

    :cond_14
    iget-object v3, v0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mRRule:Ljava/lang/String;

    if-nez v3, :cond_13

    .line 150
    :cond_15
    iget-object v3, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mDescription:Ljava/lang/String;

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mDescription:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    :cond_16
    move v1, v2

    .line 151
    goto/16 :goto_0

    .line 150
    :cond_17
    iget-object v3, v0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mDescription:Ljava/lang/String;

    if-nez v3, :cond_16

    .line 152
    :cond_18
    iget-object v3, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mReminderMinutes:Ljava/util/List;

    if-eqz v3, :cond_19

    iget-object v1, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mReminderMinutes:Ljava/util/List;

    iget-object v2, v0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mReminderMinutes:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0

    :cond_19
    iget-object v3, v0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mReminderMinutes:Ljava/util/List;

    if-eqz v3, :cond_0

    move v1, v2

    goto/16 :goto_0
.end method

.method public getCalendarColor()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mCalendarColor:I

    return v0
.end method

.method public getCalendarId()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mCalendarId:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mEnd:J

    return-wide v0
.end method

.method public getEventId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mEventId:J

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getReminderMinutes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mReminderMinutes:Ljava/util/List;

    return-object v0
.end method

.method public getStart()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mStart:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v6, 0x20

    .line 157
    iget-wide v2, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mEventId:J

    iget-wide v4, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mEventId:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    .line 158
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mStart:J

    iget-wide v4, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mStart:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 159
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mEnd:J

    iget-wide v4, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mEnd:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 160
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mCalendarId:I

    add-int v0, v1, v2

    .line 161
    return v0
.end method

.method public isAllDay()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mAllDay:Z

    return v0
.end method

.method public setEnd(J)V
    .locals 1
    .param p1, "end"    # J

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mEnd:J

    .line 112
    return-void
.end method

.method public setStart(J)V
    .locals 1
    .param p1, "start"    # J

    .prologue
    .line 103
    iput-wide p1, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mStart:J

    .line 104
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 60
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mEventId:J

    .line 61
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mTitle:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mLocation:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mCalendarDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mAllDay:Z

    .line 69
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-wide v2, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mStart:J

    .line 71
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-wide v2, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mEnd:J

    .line 73
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget v2, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mCalendarAccessLevel:I

    .line 75
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget v2, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mCalendarId:I

    .line 77
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget v2, p0, Lcom/alibaba/android/calendar/data/object/SystemEvent;->mCalendarColor:I

    .line 79
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 60
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
