.class public Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;
.super Ljava/lang/Object;
.source "AttendeeObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final RELATIONSHIP_ATTENDEE:I = 0x1

.field public static final RELATIONSHIP_NONE:I = 0x0

.field public static final RELATIONSHIP_ORGANIZER:I = 0x2


# instance fields
.field private mAttendeeEmail:Ljava/lang/String;

.field private mAttendeeName:Ljava/lang/String;

.field private mAttendeeRelationship:I

.field private mAttendeeStatus:I

.field private mAttendeeType:I

.field private mEventId:J

.field private mId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public getAttendeeEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->mAttendeeEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getAttendeeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->mAttendeeName:Ljava/lang/String;

    return-object v0
.end method

.method public getAttendeeRelationship()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->mAttendeeRelationship:I

    return v0
.end method

.method public getAttendeeStatus()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->mAttendeeStatus:I

    return v0
.end method

.method public getAttendeeType()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->mAttendeeType:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->mAttendeeName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->mAttendeeName:Ljava/lang/String;

    .line 116
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->mAttendeeEmail:Ljava/lang/String;

    goto :goto_0
.end method

.method public getEventId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->mEventId:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->mId:J

    return-wide v0
.end method

.method public isOrganizer()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 109
    iget v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->mAttendeeRelationship:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAttendeeEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "attendeeEmail"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->mAttendeeEmail:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setAttendeeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "attendeeName"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->mAttendeeName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setAttendeeRelationship(I)V
    .locals 0
    .param p1, "attendeeRelationship"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->mAttendeeRelationship:I

    .line 98
    return-void
.end method

.method public setAttendeeStatus(I)V
    .locals 0
    .param p1, "attendeeStatus"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->mAttendeeStatus:I

    .line 90
    return-void
.end method

.method public setAttendeeType(I)V
    .locals 0
    .param p1, "attendeeType"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->mAttendeeType:I

    .line 106
    return-void
.end method

.method public setEventId(J)V
    .locals 1
    .param p1, "eventId"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->mEventId:J

    .line 66
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->mId:J

    .line 58
    return-void
.end method
