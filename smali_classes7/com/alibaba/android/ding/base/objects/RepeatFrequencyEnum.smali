.class public final enum Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;
.super Ljava/lang/Enum;
.source "RepeatFrequencyEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

.field public static final enum DAILY:Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

.field public static final enum HOURLY:Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

.field public static final enum MINUTELY:Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

.field public static final enum MONTHLY:Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

.field public static final enum SECONDLY:Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

.field public static final enum WEEKLY:Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

.field public static final enum YEARLY:Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;


# instance fields
.field private tipsString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

    const-string/jumbo v1, "SECONDLY"

    const-string/jumbo v2, "SECONDLY"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;->SECONDLY:Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

    .line 10
    new-instance v0, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

    const-string/jumbo v1, "MINUTELY"

    const-string/jumbo v2, "MINUTELY"

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;->MINUTELY:Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

    .line 11
    new-instance v0, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

    const-string/jumbo v1, "HOURLY"

    const-string/jumbo v2, "HOURLY"

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;->HOURLY:Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

    .line 12
    new-instance v0, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

    const-string/jumbo v1, "DAILY"

    const-string/jumbo v2, "DAILY"

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;->DAILY:Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

    .line 13
    new-instance v0, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

    const-string/jumbo v1, "WEEKLY"

    const-string/jumbo v2, "WEEKLY"

    invoke-direct {v0, v1, v8, v2}, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;->WEEKLY:Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

    .line 14
    new-instance v0, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

    const-string/jumbo v1, "MONTHLY"

    const/4 v2, 0x5

    const-string/jumbo v3, "MONTHLY"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;->MONTHLY:Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

    .line 15
    new-instance v0, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

    const-string/jumbo v1, "YEARLY"

    const/4 v2, 0x6

    const-string/jumbo v3, "YEARLY"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;->YEARLY:Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

    .line 8
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;->SECONDLY:Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;->MINUTELY:Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;->HOURLY:Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;->DAILY:Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;->WEEKLY:Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;->MONTHLY:Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;->YEARLY:Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;->$VALUES:[Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "tipsString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;->tipsString:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;->$VALUES:[Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

    invoke-virtual {v0}, [Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;

    return-object v0
.end method


# virtual methods
.method public final getTipsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/RepeatFrequencyEnum;->tipsString:Ljava/lang/String;

    return-object v0
.end method
