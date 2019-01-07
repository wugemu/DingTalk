.class public final enum Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;
.super Ljava/lang/Enum;
.source "ApmtBaseObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/data/ApmtBaseObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApmtConfType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

.field public static final enum APMT_CALL:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

.field public static final enum APMT_UNKNOWN:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

.field public static final enum APMT_VIDEO:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

.field public static final enum APMT_VIDEO_EXTRA:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    const-string/jumbo v1, "APMT_UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_UNKNOWN:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    .line 12
    new-instance v0, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    const-string/jumbo v1, "APMT_VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_VIDEO:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    .line 13
    new-instance v0, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    const-string/jumbo v1, "APMT_CALL"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_CALL:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    .line 14
    new-instance v0, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    const-string/jumbo v1, "APMT_VIDEO_EXTRA"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_VIDEO_EXTRA:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    sget-object v1, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_UNKNOWN:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_VIDEO:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_CALL:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_VIDEO_EXTRA:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->$VALUES:[Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->$VALUES:[Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    return-object v0
.end method
