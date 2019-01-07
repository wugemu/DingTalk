.class public final enum Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;
.super Ljava/lang/Enum;
.source "CompeteEmotionStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

.field public static final enum compete:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

.field public static final enum ignore:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

.field public static final enum init:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    const-string/jumbo v1, "init"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;->init:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    .line 57
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    const-string/jumbo v1, "compete"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;->compete:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    .line 58
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    const-string/jumbo v1, "ignore"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;->ignore:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;->init:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;->compete:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;->ignore:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;->$VALUES:[Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

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
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    const-class v0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;->$VALUES:[Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    return-object v0
.end method
