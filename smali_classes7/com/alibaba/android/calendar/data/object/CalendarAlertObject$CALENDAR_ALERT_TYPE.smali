.class public final enum Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;
.super Ljava/lang/Enum;
.source "CalendarAlertObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CALENDAR_ALERT_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;

.field public static final enum CALENDAR:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;

.field public static final enum CALENDAR_REMIND:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;

.field public static final enum CUSTOM:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    new-instance v0, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;

    const-string/jumbo v1, "CUSTOM"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;->CUSTOM:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;

    .line 108
    new-instance v0, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;

    const-string/jumbo v1, "CALENDAR"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;->CALENDAR:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;

    .line 109
    new-instance v0, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;

    const-string/jumbo v1, "CALENDAR_REMIND"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;->CALENDAR_REMIND:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;

    .line 106
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;

    sget-object v1, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;->CUSTOM:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;->CALENDAR:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;->CALENDAR_REMIND:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;->$VALUES:[Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;

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
    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 114
    iput p3, p0, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;->mValue:I

    .line 115
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 106
    const-class v0, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;->$VALUES:[Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;

    invoke-virtual {v0}, [Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject$CALENDAR_ALERT_TYPE;->mValue:I

    return v0
.end method
