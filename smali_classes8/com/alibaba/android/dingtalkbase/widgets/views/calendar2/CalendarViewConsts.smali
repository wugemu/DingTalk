.class public final Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts;
.super Ljava/lang/Object;
.source "CalendarViewConsts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;
    }
.end annotation


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x7

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcig$j;->and_calendar_sunday:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcig$j;->and_calendar_monday:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcig$j;->and_calendar_tuesday:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcig$j;->and_calendar_wednesday:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcig$j;->and_calendar_thursday:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcig$j;->and_calendar_friday:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcig$j;->and_calendar_saturday:I

    aput v2, v0, v1

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts;->a:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method
