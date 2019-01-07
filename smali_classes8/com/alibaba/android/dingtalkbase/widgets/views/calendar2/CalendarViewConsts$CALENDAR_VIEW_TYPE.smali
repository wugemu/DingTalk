.class public final enum Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;
.super Ljava/lang/Enum;
.source "CalendarViewConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CALENDAR_VIEW_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

.field public static final enum MONTH:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

.field public static final enum WEEK:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    const-string/jumbo v1, "MONTH"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;->MONTH:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    .line 29
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    const-string/jumbo v1, "WEEK"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;->WEEK:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;->MONTH:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;->WEEK:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;->$VALUES:[Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;->$VALUES:[Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarViewConsts$CALENDAR_VIEW_TYPE;

    return-object v0
.end method
