.class public final enum Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;
.super Ljava/lang/Enum;
.source "PwpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lali/mmpc/pwp/PwpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ADAPTION_STRETEGY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

.field public static final enum CLARITY_FIRST:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

.field public static final enum FLUENCY_FIRST:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    const-string/jumbo v1, "CLARITY_FIRST"

    invoke-direct {v0, v1, v2}, Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;->CLARITY_FIRST:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    .line 67
    new-instance v0, Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    const-string/jumbo v1, "FLUENCY_FIRST"

    invoke-direct {v0, v1, v3}, Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;->FLUENCY_FIRST:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    sget-object v1, Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;->CLARITY_FIRST:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    aput-object v1, v0, v2

    sget-object v1, Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;->FLUENCY_FIRST:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    aput-object v1, v0, v3

    sput-object v0, Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;->$VALUES:[Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    const-class v0, Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    return-object v0
.end method

.method public static values()[Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;->$VALUES:[Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    invoke-virtual {v0}, [Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    return-object v0
.end method
