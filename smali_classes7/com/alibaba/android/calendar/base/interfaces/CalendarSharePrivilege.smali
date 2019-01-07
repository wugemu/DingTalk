.class public final enum Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;
.super Ljava/lang/Enum;
.source "CalendarSharePrivilege.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

.field public static final enum EDIT:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum NO_PERMISSION:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

.field public static final enum READ:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum SCHEDULE_VIEW:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

.field public static final enum UNKNOWN:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

.field public static final enum VIEW_FREE_BUSY:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->UNKNOWN:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    .line 18
    new-instance v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    const-string/jumbo v1, "NO_PERMISSION"

    invoke-direct {v0, v1, v4, v3}, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->NO_PERMISSION:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    .line 22
    new-instance v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    const-string/jumbo v1, "VIEW_FREE_BUSY"

    invoke-direct {v0, v1, v5, v4}, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->VIEW_FREE_BUSY:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    .line 26
    new-instance v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    const-string/jumbo v1, "SCHEDULE_VIEW"

    invoke-direct {v0, v1, v6, v5}, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->SCHEDULE_VIEW:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    .line 28
    new-instance v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    const-string/jumbo v1, "READ"

    invoke-direct {v0, v1, v7, v6}, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->READ:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    .line 31
    new-instance v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    const-string/jumbo v1, "EDIT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v7}, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->EDIT:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    .line 9
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->UNKNOWN:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->NO_PERMISSION:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->VIEW_FREE_BUSY:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->SCHEDULE_VIEW:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->READ:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->EDIT:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->$VALUES:[Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->mValue:I

    .line 39
    return-void
.end method

.method public static from(I)Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 47
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->SCHEDULE_VIEW:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 48
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->SCHEDULE_VIEW:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    .line 55
    :goto_0
    return-object v0

    .line 49
    :cond_0
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->VIEW_FREE_BUSY:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_1

    .line 50
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->VIEW_FREE_BUSY:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    goto :goto_0

    .line 51
    :cond_1
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->NO_PERMISSION:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_2

    .line 52
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->NO_PERMISSION:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    goto :goto_0

    .line 55
    :cond_2
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->UNKNOWN:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->$VALUES:[Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    invoke-virtual {v0}, [Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->mValue:I

    return v0
.end method
