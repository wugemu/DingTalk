.class public final enum Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;
.super Ljava/lang/Enum;
.source "TeleConfFunctionObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;

.field public static final enum ItemAdCard:Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;

.field public static final enum ItemInfoCard:Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;

.field public static final enum ItemUnknown:Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;

    const-string/jumbo v1, "ItemUnknown"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;->ItemUnknown:Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;

    .line 48
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;

    const-string/jumbo v1, "ItemAdCard"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;->ItemAdCard:Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;

    .line 49
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;

    const-string/jumbo v1, "ItemInfoCard"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;->ItemInfoCard:Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;->ItemUnknown:Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;->ItemAdCard:Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;->ItemInfoCard:Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;->$VALUES:[Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;->$VALUES:[Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;

    return-object v0
.end method
