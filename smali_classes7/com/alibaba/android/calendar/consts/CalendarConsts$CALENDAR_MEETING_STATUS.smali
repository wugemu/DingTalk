.class public final enum Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;
.super Ljava/lang/Enum;
.source "CalendarConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/consts/CalendarConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CALENDAR_MEETING_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;

.field public static final enum ACCEPTED:Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;

.field public static final enum INIT:Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;

.field public static final enum REJECTED:Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;

.field public static final enum UNKNOWN:Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    new-instance v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;->UNKNOWN:Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;

    .line 80
    new-instance v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;

    const-string/jumbo v1, "INIT"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;->INIT:Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;

    .line 81
    new-instance v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;

    const-string/jumbo v1, "ACCEPTED"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;->ACCEPTED:Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;

    .line 82
    new-instance v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;

    const-string/jumbo v1, "REJECTED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;->REJECTED:Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;

    .line 78
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;

    sget-object v1, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;->UNKNOWN:Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;->INIT:Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;->ACCEPTED:Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;->REJECTED:Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;->$VALUES:[Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;

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
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    iput p3, p0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;->mValue:I

    .line 88
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    const-class v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;->$VALUES:[Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;

    invoke-virtual {v0}, [Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CALENDAR_MEETING_STATUS;->mValue:I

    return v0
.end method
