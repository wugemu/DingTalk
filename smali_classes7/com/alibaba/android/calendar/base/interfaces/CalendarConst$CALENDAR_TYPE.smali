.class public final enum Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;
.super Ljava/lang/Enum;
.source "CalendarConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/base/interfaces/CalendarConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CALENDAR_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;

.field public static final enum MEETING:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;

.field public static final enum NOTIFICATION:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;

.field public static final enum TASK:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 380
    new-instance v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;

    const-string/jumbo v1, "TASK"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;->TASK:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;

    .line 381
    new-instance v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;

    const-string/jumbo v1, "MEETING"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;->MEETING:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;

    .line 382
    new-instance v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;

    const-string/jumbo v1, "NOTIFICATION"

    invoke-direct {v0, v1, v3, v5}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;->NOTIFICATION:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;

    .line 379
    new-array v0, v5, [Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;->TASK:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;->MEETING:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;->NOTIFICATION:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;->$VALUES:[Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;

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
    .line 386
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 387
    iput p3, p0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;->mValue:I

    .line 388
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 379
    const-class v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;
    .locals 1

    .prologue
    .line 379
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;->$VALUES:[Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;

    invoke-virtual {v0}, [Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;->mValue:I

    return v0
.end method
