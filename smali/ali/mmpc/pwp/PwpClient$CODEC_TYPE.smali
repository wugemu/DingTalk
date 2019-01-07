.class public final enum Lali/mmpc/pwp/PwpClient$CODEC_TYPE;
.super Ljava/lang/Enum;
.source "PwpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lali/mmpc/pwp/PwpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CODEC_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lali/mmpc/pwp/PwpClient$CODEC_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

.field public static final enum DIRECT_MEDIACODEC:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

.field public static final enum INDIRECT_MEDIACODEC:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

.field public static final enum SOFTWARE_CODEC:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    const-string/jumbo v1, "INDIRECT_MEDIACODEC"

    invoke-direct {v0, v1, v2}, Lali/mmpc/pwp/PwpClient$CODEC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lali/mmpc/pwp/PwpClient$CODEC_TYPE;->INDIRECT_MEDIACODEC:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    .line 72
    new-instance v0, Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    const-string/jumbo v1, "DIRECT_MEDIACODEC"

    invoke-direct {v0, v1, v3}, Lali/mmpc/pwp/PwpClient$CODEC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lali/mmpc/pwp/PwpClient$CODEC_TYPE;->DIRECT_MEDIACODEC:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    .line 73
    new-instance v0, Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    const-string/jumbo v1, "SOFTWARE_CODEC"

    invoke-direct {v0, v1, v4}, Lali/mmpc/pwp/PwpClient$CODEC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lali/mmpc/pwp/PwpClient$CODEC_TYPE;->SOFTWARE_CODEC:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    sget-object v1, Lali/mmpc/pwp/PwpClient$CODEC_TYPE;->INDIRECT_MEDIACODEC:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lali/mmpc/pwp/PwpClient$CODEC_TYPE;->DIRECT_MEDIACODEC:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lali/mmpc/pwp/PwpClient$CODEC_TYPE;->SOFTWARE_CODEC:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lali/mmpc/pwp/PwpClient$CODEC_TYPE;->$VALUES:[Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

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
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lali/mmpc/pwp/PwpClient$CODEC_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 70
    const-class v0, Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    return-object v0
.end method

.method public static values()[Lali/mmpc/pwp/PwpClient$CODEC_TYPE;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lali/mmpc/pwp/PwpClient$CODEC_TYPE;->$VALUES:[Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    invoke-virtual {v0}, [Lali/mmpc/pwp/PwpClient$CODEC_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    return-object v0
.end method
