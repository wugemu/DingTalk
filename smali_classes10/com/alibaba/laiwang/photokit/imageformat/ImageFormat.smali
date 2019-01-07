.class public final enum Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;
.super Ljava/lang/Enum;
.source "ImageFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

.field public static final enum BMP:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

.field public static final enum GIF:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

.field public static final enum JPEG:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

.field public static final enum PNG:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

.field public static final enum UNKNOWN:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

.field public static final enum WEBP_ANIMATED:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

.field public static final enum WEBP_EXTENDED:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

.field public static final enum WEBP_EXTENDED_WITH_ALPHA:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

.field public static final enum WEBP_LOSSLESS:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

.field public static final enum WEBP_SIMPLE:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    const-string/jumbo v1, "WEBP_SIMPLE"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->WEBP_SIMPLE:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    .line 18
    new-instance v0, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    const-string/jumbo v1, "WEBP_LOSSLESS"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->WEBP_LOSSLESS:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    .line 19
    new-instance v0, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    const-string/jumbo v1, "WEBP_EXTENDED"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->WEBP_EXTENDED:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    .line 20
    new-instance v0, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    const-string/jumbo v1, "WEBP_EXTENDED_WITH_ALPHA"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->WEBP_EXTENDED_WITH_ALPHA:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    .line 21
    new-instance v0, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    const-string/jumbo v1, "WEBP_ANIMATED"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->WEBP_ANIMATED:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    .line 22
    new-instance v0, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    const-string/jumbo v1, "JPEG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->JPEG:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    .line 23
    new-instance v0, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    const-string/jumbo v1, "PNG"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->PNG:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    .line 24
    new-instance v0, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    const-string/jumbo v1, "GIF"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->GIF:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    .line 25
    new-instance v0, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    const-string/jumbo v1, "BMP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->BMP:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    .line 29
    new-instance v0, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    const-string/jumbo v1, "UNKNOWN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->UNKNOWN:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    .line 15
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    sget-object v1, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->WEBP_SIMPLE:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->WEBP_LOSSLESS:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->WEBP_EXTENDED:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->WEBP_EXTENDED_WITH_ALPHA:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->WEBP_ANIMATED:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->JPEG:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->PNG:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->GIF:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->BMP:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->UNKNOWN:Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->$VALUES:[Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    return-void
.end method

.method public static isWebp(Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;)Z
    .locals 2
    .param p0, "format"    # Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    .prologue
    .line 38
    sget-object v0, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat$1;->a:[I

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 45
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 43
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->$VALUES:[Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    invoke-virtual {v0}, [Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    return-object v0
.end method
