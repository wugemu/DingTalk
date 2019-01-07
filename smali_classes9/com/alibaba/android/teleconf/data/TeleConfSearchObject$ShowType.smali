.class public final enum Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;
.super Ljava/lang/Enum;
.source "TeleConfSearchObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;

.field public static final enum AddContactItem:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;

.field public static final enum NormalItem:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;

    const-string/jumbo v1, "NormalItem"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;->NormalItem:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;

    .line 27
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;

    const-string/jumbo v1, "AddContactItem"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;->AddContactItem:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;->NormalItem:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;->AddContactItem:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;->$VALUES:[Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;->$VALUES:[Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;

    return-object v0
.end method
