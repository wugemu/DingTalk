.class final enum Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;
.super Ljava/lang/Enum;
.source "BanWordsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "BanTime"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;

.field public static final enum FIVE_MIN:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;

.field public static final enum ONE_DAY:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;

.field public static final enum ONE_HOUR:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;

.field public static final enum SEVEN_DAY:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;

.field public static final enum THIRTY_DAY:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;


# instance fields
.field public textId:I

.field public time:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 558
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;

    const-string/jumbo v2, "FIVE_MIN"

    const/4 v3, 0x0

    const-wide/32 v4, 0x493e0

    sget v6, Lctk$i;->dt_group_setting_all_silent_time_5_min:I

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;-><init>(Ljava/lang/String;IJI)V

    sput-object v1, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;->FIVE_MIN:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;

    .line 559
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;

    const-string/jumbo v2, "ONE_HOUR"

    const/4 v3, 0x1

    const-wide/32 v4, 0x36ee80

    sget v6, Lctk$i;->dt_group_setting_all_silent_time_1_hour:I

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;-><init>(Ljava/lang/String;IJI)V

    sput-object v1, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;->ONE_HOUR:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;

    .line 560
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;

    const-string/jumbo v2, "ONE_DAY"

    const/4 v3, 0x2

    const-wide/32 v4, 0x5265c00

    sget v6, Lctk$i;->dt_group_setting_all_silent_time_1_day:I

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;-><init>(Ljava/lang/String;IJI)V

    sput-object v1, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;->ONE_DAY:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;

    .line 561
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;

    const-string/jumbo v2, "SEVEN_DAY"

    const/4 v3, 0x3

    const-wide/32 v4, 0x240c8400

    sget v6, Lctk$i;->dt_group_setting_all_silent_time_7_day:I

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;-><init>(Ljava/lang/String;IJI)V

    sput-object v1, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;->SEVEN_DAY:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;

    .line 562
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;

    const-string/jumbo v2, "THIRTY_DAY"

    const/4 v3, 0x4

    const-wide v4, 0x9a7ec800L

    sget v6, Lctk$i;->dt_group_setting_all_silent_time_30_day:I

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;-><init>(Ljava/lang/String;IJI)V

    sput-object v1, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;->THIRTY_DAY:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;

    .line 556
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;->FIVE_MIN:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;->ONE_HOUR:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;->ONE_DAY:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;->SEVEN_DAY:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;->THIRTY_DAY:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;->$VALUES:[Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJI)V
    .locals 1
    .param p3, "ti"    # J
    .param p5, "te"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)V"
        }
    .end annotation

    .prologue
    .line 567
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 568
    iput-wide p3, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;->time:J

    .line 569
    iput p5, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;->textId:I

    .line 570
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 556
    const-class v0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;
    .locals 1

    .prologue
    .line 556
    sget-object v0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;->$VALUES:[Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$BanTime;

    return-object v0
.end method
