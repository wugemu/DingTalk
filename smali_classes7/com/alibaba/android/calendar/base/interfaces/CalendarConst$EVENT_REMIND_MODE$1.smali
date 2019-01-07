.class final Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE$1;
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
        "Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->NONE:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE$1;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->TODAY_9:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE$1;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->YESTERDAY_17:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE$1;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->YESTERDAY_9:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE$1;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->DAY_BEFORE_YESTERDAY_9:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE$1;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->ONE_WEEK_AGO_9:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE$1;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method
