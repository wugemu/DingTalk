.class final Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE$2;
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
    .line 133
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    sget v0, Lapg$a;->dt_calendar_event_remind_none:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE$2;->add(Ljava/lang/Object;)Z

    .line 136
    sget v0, Lapg$a;->dt_calendar_event_remind_today_9:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE$2;->add(Ljava/lang/Object;)Z

    .line 137
    sget v0, Lapg$a;->dt_calendar_event_remind_yesterday_17:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE$2;->add(Ljava/lang/Object;)Z

    .line 138
    sget v0, Lapg$a;->dt_calendar_event_remind_yesterday_9:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE$2;->add(Ljava/lang/Object;)Z

    .line 139
    sget v0, Lapg$a;->dt_calendar_event_remind_day_before_yesterday_9:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE$2;->add(Ljava/lang/Object;)Z

    .line 140
    sget v0, Lapg$a;->dt_calendar_event_remind_one_week_ago_9:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE$2;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method
