.class public final enum Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;
.super Ljava/lang/Enum;
.source "CombinedPraisesModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

.field public static final enum EXPAND:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

.field public static final enum FOLD:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    const-string/jumbo v1, "FOLD"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;->FOLD:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    new-instance v0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    const-string/jumbo v1, "EXPAND"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;->EXPAND:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    sget-object v1, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;->FOLD:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;->EXPAND:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;->$VALUES:[Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;->$VALUES:[Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    return-object v0
.end method
