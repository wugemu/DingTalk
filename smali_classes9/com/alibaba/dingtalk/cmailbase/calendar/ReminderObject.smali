.class public Lcom/alibaba/dingtalk/cmailbase/calendar/ReminderObject;
.super Ljava/lang/Object;
.source "ReminderObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mEventId:J

.field private mId:J

.field private mMethod:I

.field private mMinutes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public getEventId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/ReminderObject;->mEventId:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/ReminderObject;->mId:J

    return-wide v0
.end method

.method public getMethod()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/ReminderObject;->mMethod:I

    return v0
.end method

.method public getMinutes()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/ReminderObject;->mMinutes:I

    return v0
.end method

.method public setEventId(J)V
    .locals 1
    .param p1, "eventId"    # J

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/ReminderObject;->mEventId:J

    .line 45
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/ReminderObject;->mId:J

    .line 37
    return-void
.end method

.method public setMethod(I)V
    .locals 0
    .param p1, "method"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/ReminderObject;->mMethod:I

    .line 61
    return-void
.end method

.method public setMinutes(I)V
    .locals 0
    .param p1, "minutes"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/ReminderObject;->mMinutes:I

    .line 53
    return-void
.end method
