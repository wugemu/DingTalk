.class public final enum Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;
.super Ljava/lang/Enum;
.source "BigShowObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CloseBtnType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;

.field public static final enum BLACK:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;

.field public static final enum WHITE:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;

    const-string/jumbo v1, "WHITE"

    const-string/jumbo v2, "0"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;->WHITE:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;

    new-instance v0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;

    const-string/jumbo v1, "BLACK"

    const-string/jumbo v2, "1"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;->BLACK:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;->WHITE:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;->BLACK:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;->$VALUES:[Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;->mValue:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;->$VALUES:[Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject$CloseBtnType;->mValue:Ljava/lang/String;

    return-object v0
.end method
