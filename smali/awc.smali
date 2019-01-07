.class public final Lawc;
.super Ljava/lang/Object;
.source "InstanceShowObjectUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z
    .locals 2
    .param p0, "instanceShowObject"    # Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .prologue
    .line 33
    if-eqz p0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getRole()I

    move-result v0

    sget-object v1, Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;->RECEIVER:Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z
    .locals 2
    .param p0, "instanceShowObject"    # Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .prologue
    .line 38
    if-eqz p0, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getRole()I

    move-result v0

    sget-object v1, Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;->SENDER:Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;->getValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getRole()I

    move-result v0

    sget-object v1, Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;->BOTH:Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z
    .locals 2
    .param p0, "instanceShowObject"    # Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .prologue
    .line 44
    if-eqz p0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getBizType()I

    move-result v0

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;->TASK:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z
    .locals 2
    .param p0, "instanceShowObject"    # Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .prologue
    .line 63
    if-eqz p0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getBizType()I

    move-result v0

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;->MEETING:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z
    .locals 2
    .param p0, "instanceShowObject"    # Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .prologue
    .line 68
    if-eqz p0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getStatus()I

    move-result v0

    sget-object v1, Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_STATUS;->MEETING_CANCELED:Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_STATUS;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_STATUS;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z
    .locals 2
    .param p0, "instanceShowObject"    # Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .prologue
    .line 73
    if-eqz p0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getSelfStatus()I

    move-result v0

    sget-object v1, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;->REJECTED:Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z
    .locals 2
    .param p0, "instanceShowObject"    # Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .prologue
    .line 78
    if-eqz p0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getSelfStatus()I

    move-result v0

    sget-object v1, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;->INIT:Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z
    .locals 4
    .param p0, "instanceShowObject"    # Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .prologue
    .line 83
    if-eqz p0, :cond_0

    .line 84
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getInstanceEndTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z
    .locals 2
    .param p0, "instanceShowObject"    # Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .prologue
    .line 88
    if-eqz p0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getBizType()I

    move-result v0

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;->NOTIFICATION:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z
    .locals 2
    .param p0, "instanceShowObject"    # Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .prologue
    .line 98
    if-eqz p0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getSelfStatus()I

    move-result v0

    sget-object v1, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;->UNCONFIRMED:Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static k(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z
    .locals 2
    .param p0, "instanceShowObject"    # Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .prologue
    .line 103
    if-eqz p0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getSource()I

    move-result v0

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->SCHEDULE:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static l(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z
    .locals 2
    .param p0, "instanceShowObject"    # Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .prologue
    .line 108
    if-eqz p0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getSource()I

    move-result v0

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->DING:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static m(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z
    .locals 2
    .param p0, "instanceShowObject"    # Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .prologue
    .line 113
    if-eqz p0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getSource()I

    move-result v0

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->JOURNAL:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static n(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z
    .locals 2
    .param p0, "instanceShowObject"    # Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .prologue
    .line 118
    if-eqz p0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getSource()I

    move-result v0

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->ATTENDANCE:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static o(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z
    .locals 1
    .param p0, "instanceShowObject"    # Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .prologue
    .line 183
    if-nez p0, :cond_0

    .line 184
    const/4 v0, 0x0

    .line 186
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->isShare()Z

    move-result v0

    goto :goto_0
.end method
