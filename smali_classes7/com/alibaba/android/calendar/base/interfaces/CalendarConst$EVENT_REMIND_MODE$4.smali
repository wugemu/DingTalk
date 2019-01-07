.class final Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE$4;
.super Ljava/util/ArrayList;
.source "CalendarConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    sget v0, Lapg$a;->dt_calendar_event_remind_none:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE$4;->add(Ljava/lang/Object;)Z

    .line 158
    sget v0, Lapg$a;->dt_calendar_event_remind_happen:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE$4;->add(Ljava/lang/Object;)Z

    .line 159
    sget v0, Lapg$a;->dt_calendar_event_remind_five_minutes:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE$4;->add(Ljava/lang/Object;)Z

    .line 160
    sget v0, Lapg$a;->dt_calendar_event_remind_fifteen_minutes:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE$4;->add(Ljava/lang/Object;)Z

    .line 161
    sget v0, Lapg$a;->dt_calendar_event_remind_half_hour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE$4;->add(Ljava/lang/Object;)Z

    .line 162
    sget v0, Lapg$a;->dt_calendar_event_remind_one_hour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE$4;->add(Ljava/lang/Object;)Z

    .line 163
    sget v0, Lapg$a;->dt_calendar_event_remind_one_day:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE$4;->add(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method
