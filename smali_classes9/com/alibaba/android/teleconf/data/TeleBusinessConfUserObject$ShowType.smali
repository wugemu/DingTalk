.class public final enum Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;
.super Ljava/lang/Enum;
.source "TeleBusinessConfUserObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

.field public static final enum ExtraTailType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

.field public static final enum NormalNoNickType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

.field public static final enum NormalStatusType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

.field public static final enum NormalType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

.field public static final enum TailType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    const-string/jumbo v1, "NormalType"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->NormalType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    .line 25
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    const-string/jumbo v1, "NormalNoNickType"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->NormalNoNickType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    .line 26
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    const-string/jumbo v1, "NormalStatusType"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->NormalStatusType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    .line 27
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    const-string/jumbo v1, "TailType"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->TailType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    .line 28
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    const-string/jumbo v1, "ExtraTailType"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->ExtraTailType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->NormalType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->NormalNoNickType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->NormalStatusType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->TailType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->ExtraTailType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->$VALUES:[Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->$VALUES:[Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    return-object v0
.end method
