.class public final enum Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;
.super Ljava/lang/Enum;
.source "CalendarConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/base/interfaces/CalendarConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CALENDAR_SOURCE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

.field public static final enum ATTENDANCE:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

.field public static final enum DING:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

.field public static final enum HRM:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

.field public static final enum IM:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

.field public static final enum JOURNAL:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

.field public static final enum MANAGER_REPORT:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

.field public static final enum SCHEDULE:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 396
    new-instance v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    const-string/jumbo v1, "DING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->DING:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    .line 397
    new-instance v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    const-string/jumbo v1, "JOURNAL"

    invoke-direct {v0, v1, v4, v5}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->JOURNAL:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    .line 398
    new-instance v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    const-string/jumbo v1, "ATTENDANCE"

    invoke-direct {v0, v1, v5, v6}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->ATTENDANCE:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    .line 399
    new-instance v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    const-string/jumbo v1, "MANAGER_REPORT"

    invoke-direct {v0, v1, v6, v7}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->MANAGER_REPORT:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    .line 400
    new-instance v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    const-string/jumbo v1, "HRM"

    invoke-direct {v0, v1, v7, v8}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->HRM:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    .line 401
    new-instance v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    const-string/jumbo v1, "SCHEDULE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->SCHEDULE:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    .line 402
    new-instance v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    const-string/jumbo v1, "IM"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->IM:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    .line 395
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->DING:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    aput-object v2, v0, v1

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->JOURNAL:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->ATTENDANCE:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->MANAGER_REPORT:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->HRM:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->SCHEDULE:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->IM:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->$VALUES:[Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

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
    .line 406
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 407
    iput p3, p0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->mValue:I

    .line 408
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 395
    const-class v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;
    .locals 1

    .prologue
    .line 395
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->$VALUES:[Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    invoke-virtual {v0}, [Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->mValue:I

    return v0
.end method
