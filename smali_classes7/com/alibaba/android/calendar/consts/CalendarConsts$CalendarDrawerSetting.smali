.class public final enum Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;
.super Ljava/lang/Enum;
.source "CalendarConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/consts/CalendarConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CalendarDrawerSetting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;

.field public static final enum ALI_MAIL:Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;

.field public static final enum SCHEDULE:Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;

.field public static final enum TASK:Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 122
    new-instance v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;

    const-string/jumbo v1, "SCHEDULE"

    const-string/jumbo v2, "-1"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;->SCHEDULE:Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;

    .line 123
    new-instance v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;

    const-string/jumbo v1, "TASK"

    const-string/jumbo v2, "-2"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;->TASK:Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;

    .line 124
    new-instance v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;

    const-string/jumbo v1, "ALI_MAIL"

    const-string/jumbo v2, "-3"

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;->ALI_MAIL:Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;

    .line 121
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;

    sget-object v1, Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;->SCHEDULE:Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;->TASK:Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;->ALI_MAIL:Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;->$VALUES:[Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 129
    iput-object p3, p0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;->mValue:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 121
    const-class v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;->$VALUES:[Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;

    invoke-virtual {v0}, [Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;->mValue:Ljava/lang/String;

    return-object v0
.end method
