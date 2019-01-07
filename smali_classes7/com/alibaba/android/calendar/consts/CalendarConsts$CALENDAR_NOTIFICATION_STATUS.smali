.class public final enum Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;
.super Ljava/lang/Enum;
.source "CalendarConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/consts/CalendarConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CALENDAR_NOTIFICATION_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;

.field public static final enum CONFIRMED:Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;

.field public static final enum UNCONFIRMED:Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;

.field public static final enum UNKNOWN:Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;->UNKNOWN:Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;

    .line 60
    new-instance v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;

    const-string/jumbo v1, "UNCONFIRMED"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;->UNCONFIRMED:Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;

    .line 61
    new-instance v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;

    const-string/jumbo v1, "CONFIRMED"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;->CONFIRMED:Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;

    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;

    sget-object v1, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;->UNKNOWN:Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;->UNCONFIRMED:Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;->CONFIRMED:Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;->$VALUES:[Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;->mValue:I

    .line 67
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    const-class v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;->$VALUES:[Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;

    invoke-virtual {v0}, [Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_NOTIFICATION_STATUS;->mValue:I

    return v0
.end method
