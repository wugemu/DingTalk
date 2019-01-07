.class public final enum Lcom/alibaba/android/calendar/v2/data/object/EventType;
.super Ljava/lang/Enum;
.source "EventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/calendar/v2/data/object/EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/calendar/v2/data/object/EventType;

.field public static final enum CURRENT_TIME:Lcom/alibaba/android/calendar/v2/data/object/EventType;

.field public static final enum DUE_TODAY_TASK:Lcom/alibaba/android/calendar/v2/data/object/EventType;

.field public static final enum DUE_TODAY_TASK_HEADER:Lcom/alibaba/android/calendar/v2/data/object/EventType;

.field public static final enum EMPTY:Lcom/alibaba/android/calendar/v2/data/object/EventType;

.field public static final enum HEADER:Lcom/alibaba/android/calendar/v2/data/object/EventType;

.field public static final enum HEADER_NEW_TAB:Lcom/alibaba/android/calendar/v2/data/object/EventType;

.field public static final enum MAIL:Lcom/alibaba/android/calendar/v2/data/object/EventType;

.field public static final enum OVERDUE:Lcom/alibaba/android/calendar/v2/data/object/EventType;

.field public static final enum SHOW:Lcom/alibaba/android/calendar/v2/data/object/EventType;

.field public static final enum SYSTEM:Lcom/alibaba/android/calendar/v2/data/object/EventType;

.field public static final enum UNKNOWN:Lcom/alibaba/android/calendar/v2/data/object/EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/calendar/v2/data/object/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;->UNKNOWN:Lcom/alibaba/android/calendar/v2/data/object/EventType;

    .line 9
    new-instance v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;

    const-string/jumbo v1, "HEADER"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/calendar/v2/data/object/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;->HEADER:Lcom/alibaba/android/calendar/v2/data/object/EventType;

    .line 10
    new-instance v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;

    const-string/jumbo v1, "HEADER_NEW_TAB"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/calendar/v2/data/object/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;->HEADER_NEW_TAB:Lcom/alibaba/android/calendar/v2/data/object/EventType;

    .line 11
    new-instance v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;

    const-string/jumbo v1, "DUE_TODAY_TASK_HEADER"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/android/calendar/v2/data/object/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;->DUE_TODAY_TASK_HEADER:Lcom/alibaba/android/calendar/v2/data/object/EventType;

    .line 12
    new-instance v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;

    const-string/jumbo v1, "OVERDUE"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/android/calendar/v2/data/object/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;->OVERDUE:Lcom/alibaba/android/calendar/v2/data/object/EventType;

    .line 13
    new-instance v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;

    const-string/jumbo v1, "CURRENT_TIME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/calendar/v2/data/object/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;->CURRENT_TIME:Lcom/alibaba/android/calendar/v2/data/object/EventType;

    .line 14
    new-instance v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;

    const-string/jumbo v1, "SYSTEM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/calendar/v2/data/object/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;->SYSTEM:Lcom/alibaba/android/calendar/v2/data/object/EventType;

    .line 15
    new-instance v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;

    const-string/jumbo v1, "MAIL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/calendar/v2/data/object/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;->MAIL:Lcom/alibaba/android/calendar/v2/data/object/EventType;

    .line 16
    new-instance v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;

    const-string/jumbo v1, "SHOW"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/calendar/v2/data/object/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;->SHOW:Lcom/alibaba/android/calendar/v2/data/object/EventType;

    .line 17
    new-instance v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;

    const-string/jumbo v1, "DUE_TODAY_TASK"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/calendar/v2/data/object/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;->DUE_TODAY_TASK:Lcom/alibaba/android/calendar/v2/data/object/EventType;

    .line 18
    new-instance v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;

    const-string/jumbo v1, "EMPTY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/calendar/v2/data/object/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;->EMPTY:Lcom/alibaba/android/calendar/v2/data/object/EventType;

    .line 7
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/alibaba/android/calendar/v2/data/object/EventType;

    sget-object v1, Lcom/alibaba/android/calendar/v2/data/object/EventType;->UNKNOWN:Lcom/alibaba/android/calendar/v2/data/object/EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/calendar/v2/data/object/EventType;->HEADER:Lcom/alibaba/android/calendar/v2/data/object/EventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/calendar/v2/data/object/EventType;->HEADER_NEW_TAB:Lcom/alibaba/android/calendar/v2/data/object/EventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/calendar/v2/data/object/EventType;->DUE_TODAY_TASK_HEADER:Lcom/alibaba/android/calendar/v2/data/object/EventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/calendar/v2/data/object/EventType;->OVERDUE:Lcom/alibaba/android/calendar/v2/data/object/EventType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/calendar/v2/data/object/EventType;->CURRENT_TIME:Lcom/alibaba/android/calendar/v2/data/object/EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/calendar/v2/data/object/EventType;->SYSTEM:Lcom/alibaba/android/calendar/v2/data/object/EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/calendar/v2/data/object/EventType;->MAIL:Lcom/alibaba/android/calendar/v2/data/object/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/android/calendar/v2/data/object/EventType;->SHOW:Lcom/alibaba/android/calendar/v2/data/object/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/android/calendar/v2/data/object/EventType;->DUE_TODAY_TASK:Lcom/alibaba/android/calendar/v2/data/object/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alibaba/android/calendar/v2/data/object/EventType;->EMPTY:Lcom/alibaba/android/calendar/v2/data/object/EventType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;->$VALUES:[Lcom/alibaba/android/calendar/v2/data/object/EventType;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/calendar/v2/data/object/EventType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/calendar/v2/data/object/EventType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;->$VALUES:[Lcom/alibaba/android/calendar/v2/data/object/EventType;

    invoke-virtual {v0}, [Lcom/alibaba/android/calendar/v2/data/object/EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/calendar/v2/data/object/EventType;

    return-object v0
.end method
