.class public final enum Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;
.super Ljava/lang/Enum;
.source "CalendarConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/consts/CalendarConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Role"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;

.field public static final enum BOTH:Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;

.field public static final enum RECEIVER:Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;

.field public static final enum SENDER:Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;

.field public static final enum UNKNOWN:Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 102
    new-instance v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;

    const-string/jumbo v1, "RECEIVER"

    invoke-direct {v0, v1, v6, v3}, Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;->RECEIVER:Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;

    .line 103
    new-instance v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;

    const-string/jumbo v1, "SENDER"

    invoke-direct {v0, v1, v3, v4}, Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;->SENDER:Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;

    .line 104
    new-instance v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;

    const-string/jumbo v1, "BOTH"

    invoke-direct {v0, v1, v4, v5}, Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;->BOTH:Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;

    .line 105
    new-instance v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;

    const-string/jumbo v1, "UNKNOWN"

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;->UNKNOWN:Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;

    .line 101
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;

    sget-object v1, Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;->RECEIVER:Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;->SENDER:Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;->BOTH:Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;->UNKNOWN:Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;->$VALUES:[Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;

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
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    iput p3, p0, Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;->mValue:I

    .line 111
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    const-class v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;->$VALUES:[Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;

    invoke-virtual {v0}, [Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/alibaba/android/calendar/consts/CalendarConsts$Role;->mValue:I

    return v0
.end method
