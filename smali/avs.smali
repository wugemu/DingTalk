.class public final Lavs;
.super Ljava/lang/Object;
.source "CalendarObjectUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lasc;)Z
    .locals 2
    .param p0, "calendarObject"    # Lasc;

    .prologue
    .line 20
    if-eqz p0, :cond_0

    .line 1061
    iget v0, p0, Lasc;->b:I

    .line 21
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

.method public static b(Lasc;)Z
    .locals 2
    .param p0, "calendarObject"    # Lasc;

    .prologue
    .line 25
    if-eqz p0, :cond_0

    .line 2061
    iget v0, p0, Lasc;->b:I

    .line 26
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

.method static c(Lasc;)Z
    .locals 2
    .param p0, "calendarObject"    # Lasc;

    .prologue
    .line 30
    if-eqz p0, :cond_0

    .line 3061
    iget v0, p0, Lasc;->b:I

    .line 31
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

.method public static d(Lasc;)Z
    .locals 2
    .param p0, "calendarObject"    # Lasc;

    .prologue
    .line 35
    if-eqz p0, :cond_0

    .line 4061
    iget v0, p0, Lasc;->b:I

    .line 36
    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->IM:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

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
