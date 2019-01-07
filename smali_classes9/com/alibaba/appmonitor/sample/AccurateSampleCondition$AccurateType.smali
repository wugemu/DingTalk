.class final enum Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;
.super Ljava/lang/Enum;
.source "AccurateSampleCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/appmonitor/sample/AccurateSampleCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AccurateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;

.field public static final enum IN:Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;

.field public static final enum NOT_IN:Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;

    const-string/jumbo v1, "IN"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;->IN:Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;

    new-instance v0, Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;

    const-string/jumbo v1, "NOT_IN"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;->NOT_IN:Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;

    sget-object v1, Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;->IN:Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;->NOT_IN:Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;->$VALUES:[Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getAccurateType(I)Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 42
    if-nez p0, :cond_0

    .line 43
    sget-object v0, Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;->NOT_IN:Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;

    .line 45
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;->IN:Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;->$VALUES:[Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;

    invoke-virtual {v0}, [Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;

    return-object v0
.end method
