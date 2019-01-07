.class public final enum Lali/mmpc/avengine/video/VideoPixelFormatType;
.super Ljava/lang/Enum;
.source "VideoPixelFormatType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lali/mmpc/avengine/video/VideoPixelFormatType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lali/mmpc/avengine/video/VideoPixelFormatType;

.field public static final enum kVideoABGR:Lali/mmpc/avengine/video/VideoPixelFormatType;

.field public static final enum kVideoARGB:Lali/mmpc/avengine/video/VideoPixelFormatType;

.field public static final enum kVideoARGB1555:Lali/mmpc/avengine/video/VideoPixelFormatType;

.field public static final enum kVideoARGB4444:Lali/mmpc/avengine/video/VideoPixelFormatType;

.field public static final enum kVideoBGRA:Lali/mmpc/avengine/video/VideoPixelFormatType;

.field public static final enum kVideoI420:Lali/mmpc/avengine/video/VideoPixelFormatType;

.field public static final enum kVideoIYUV:Lali/mmpc/avengine/video/VideoPixelFormatType;

.field public static final enum kVideoMJPEG:Lali/mmpc/avengine/video/VideoPixelFormatType;

.field public static final enum kVideoNV12:Lali/mmpc/avengine/video/VideoPixelFormatType;

.field public static final enum kVideoNV21:Lali/mmpc/avengine/video/VideoPixelFormatType;

.field public static final enum kVideoRGB24:Lali/mmpc/avengine/video/VideoPixelFormatType;

.field public static final enum kVideoRGB565:Lali/mmpc/avengine/video/VideoPixelFormatType;

.field public static final enum kVideoUYVY:Lali/mmpc/avengine/video/VideoPixelFormatType;

.field public static final enum kVideoUnknown:Lali/mmpc/avengine/video/VideoPixelFormatType;

.field public static final enum kVideoYUY2:Lali/mmpc/avengine/video/VideoPixelFormatType;

.field public static final enum kVideoYV12:Lali/mmpc/avengine/video/VideoPixelFormatType;


# instance fields
.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5
    new-instance v0, Lali/mmpc/avengine/video/VideoPixelFormatType;

    const-string/jumbo v1, "kVideoI420"

    invoke-direct {v0, v1, v4, v4}, Lali/mmpc/avengine/video/VideoPixelFormatType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoI420:Lali/mmpc/avengine/video/VideoPixelFormatType;

    new-instance v0, Lali/mmpc/avengine/video/VideoPixelFormatType;

    const-string/jumbo v1, "kVideoYV12"

    invoke-direct {v0, v1, v5, v5}, Lali/mmpc/avengine/video/VideoPixelFormatType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoYV12:Lali/mmpc/avengine/video/VideoPixelFormatType;

    new-instance v0, Lali/mmpc/avengine/video/VideoPixelFormatType;

    const-string/jumbo v1, "kVideoYUY2"

    invoke-direct {v0, v1, v6, v6}, Lali/mmpc/avengine/video/VideoPixelFormatType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoYUY2:Lali/mmpc/avengine/video/VideoPixelFormatType;

    new-instance v0, Lali/mmpc/avengine/video/VideoPixelFormatType;

    const-string/jumbo v1, "kVideoUYVY"

    invoke-direct {v0, v1, v7, v7}, Lali/mmpc/avengine/video/VideoPixelFormatType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoUYVY:Lali/mmpc/avengine/video/VideoPixelFormatType;

    new-instance v0, Lali/mmpc/avengine/video/VideoPixelFormatType;

    const-string/jumbo v1, "kVideoIYUV"

    invoke-direct {v0, v1, v8, v8}, Lali/mmpc/avengine/video/VideoPixelFormatType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoIYUV:Lali/mmpc/avengine/video/VideoPixelFormatType;

    new-instance v0, Lali/mmpc/avengine/video/VideoPixelFormatType;

    const-string/jumbo v1, "kVideoARGB"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/avengine/video/VideoPixelFormatType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoARGB:Lali/mmpc/avengine/video/VideoPixelFormatType;

    .line 6
    new-instance v0, Lali/mmpc/avengine/video/VideoPixelFormatType;

    const-string/jumbo v1, "kVideoRGB24"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/avengine/video/VideoPixelFormatType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoRGB24:Lali/mmpc/avengine/video/VideoPixelFormatType;

    new-instance v0, Lali/mmpc/avengine/video/VideoPixelFormatType;

    const-string/jumbo v1, "kVideoRGB565"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/avengine/video/VideoPixelFormatType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoRGB565:Lali/mmpc/avengine/video/VideoPixelFormatType;

    new-instance v0, Lali/mmpc/avengine/video/VideoPixelFormatType;

    const-string/jumbo v1, "kVideoARGB4444"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/avengine/video/VideoPixelFormatType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoARGB4444:Lali/mmpc/avengine/video/VideoPixelFormatType;

    new-instance v0, Lali/mmpc/avengine/video/VideoPixelFormatType;

    const-string/jumbo v1, "kVideoARGB1555"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/avengine/video/VideoPixelFormatType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoARGB1555:Lali/mmpc/avengine/video/VideoPixelFormatType;

    .line 7
    new-instance v0, Lali/mmpc/avengine/video/VideoPixelFormatType;

    const-string/jumbo v1, "kVideoMJPEG"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/avengine/video/VideoPixelFormatType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoMJPEG:Lali/mmpc/avengine/video/VideoPixelFormatType;

    new-instance v0, Lali/mmpc/avengine/video/VideoPixelFormatType;

    const-string/jumbo v1, "kVideoNV12"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/avengine/video/VideoPixelFormatType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoNV12:Lali/mmpc/avengine/video/VideoPixelFormatType;

    new-instance v0, Lali/mmpc/avengine/video/VideoPixelFormatType;

    const-string/jumbo v1, "kVideoNV21"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/avengine/video/VideoPixelFormatType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoNV21:Lali/mmpc/avengine/video/VideoPixelFormatType;

    new-instance v0, Lali/mmpc/avengine/video/VideoPixelFormatType;

    const-string/jumbo v1, "kVideoBGRA"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/avengine/video/VideoPixelFormatType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoBGRA:Lali/mmpc/avengine/video/VideoPixelFormatType;

    new-instance v0, Lali/mmpc/avengine/video/VideoPixelFormatType;

    const-string/jumbo v1, "kVideoABGR"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/avengine/video/VideoPixelFormatType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoABGR:Lali/mmpc/avengine/video/VideoPixelFormatType;

    new-instance v0, Lali/mmpc/avengine/video/VideoPixelFormatType;

    const-string/jumbo v1, "kVideoUnknown"

    const/16 v2, 0xf

    const/16 v3, 0x63

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/avengine/video/VideoPixelFormatType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoUnknown:Lali/mmpc/avengine/video/VideoPixelFormatType;

    .line 4
    const/16 v0, 0x10

    new-array v0, v0, [Lali/mmpc/avengine/video/VideoPixelFormatType;

    sget-object v1, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoI420:Lali/mmpc/avengine/video/VideoPixelFormatType;

    aput-object v1, v0, v4

    sget-object v1, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoYV12:Lali/mmpc/avengine/video/VideoPixelFormatType;

    aput-object v1, v0, v5

    sget-object v1, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoYUY2:Lali/mmpc/avengine/video/VideoPixelFormatType;

    aput-object v1, v0, v6

    sget-object v1, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoUYVY:Lali/mmpc/avengine/video/VideoPixelFormatType;

    aput-object v1, v0, v7

    sget-object v1, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoIYUV:Lali/mmpc/avengine/video/VideoPixelFormatType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoARGB:Lali/mmpc/avengine/video/VideoPixelFormatType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoRGB24:Lali/mmpc/avengine/video/VideoPixelFormatType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoRGB565:Lali/mmpc/avengine/video/VideoPixelFormatType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoARGB4444:Lali/mmpc/avengine/video/VideoPixelFormatType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoARGB1555:Lali/mmpc/avengine/video/VideoPixelFormatType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoMJPEG:Lali/mmpc/avengine/video/VideoPixelFormatType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoNV12:Lali/mmpc/avengine/video/VideoPixelFormatType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoNV21:Lali/mmpc/avengine/video/VideoPixelFormatType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoBGRA:Lali/mmpc/avengine/video/VideoPixelFormatType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoABGR:Lali/mmpc/avengine/video/VideoPixelFormatType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoUnknown:Lali/mmpc/avengine/video/VideoPixelFormatType;

    aput-object v2, v0, v1

    sput-object v0, Lali/mmpc/avengine/video/VideoPixelFormatType;->$VALUES:[Lali/mmpc/avengine/video/VideoPixelFormatType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "_id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lali/mmpc/avengine/video/VideoPixelFormatType;->id:I

    .line 23
    return-void
.end method

.method public static fromInteger(I)Lali/mmpc/avengine/video/VideoPixelFormatType;
    .locals 5
    .param p0, "_id"    # I

    .prologue
    .line 13
    invoke-static {}, Lali/mmpc/avengine/video/VideoPixelFormatType;->values()[Lali/mmpc/avengine/video/VideoPixelFormatType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 14
    .local v0, "type":Lali/mmpc/avengine/video/VideoPixelFormatType;
    iget v4, v0, Lali/mmpc/avengine/video/VideoPixelFormatType;->id:I

    if-ne v4, p0, :cond_0

    .line 18
    .end local v0    # "type":Lali/mmpc/avengine/video/VideoPixelFormatType;
    :goto_1
    return-object v0

    .line 13
    .restart local v0    # "type":Lali/mmpc/avengine/video/VideoPixelFormatType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    .end local v0    # "type":Lali/mmpc/avengine/video/VideoPixelFormatType;
    :cond_1
    sget-object v0, Lali/mmpc/avengine/video/VideoPixelFormatType;->kVideoUnknown:Lali/mmpc/avengine/video/VideoPixelFormatType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lali/mmpc/avengine/video/VideoPixelFormatType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lali/mmpc/avengine/video/VideoPixelFormatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lali/mmpc/avengine/video/VideoPixelFormatType;

    return-object v0
.end method

.method public static values()[Lali/mmpc/avengine/video/VideoPixelFormatType;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lali/mmpc/avengine/video/VideoPixelFormatType;->$VALUES:[Lali/mmpc/avengine/video/VideoPixelFormatType;

    invoke-virtual {v0}, [Lali/mmpc/avengine/video/VideoPixelFormatType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lali/mmpc/avengine/video/VideoPixelFormatType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lali/mmpc/avengine/video/VideoPixelFormatType;->id:I

    return v0
.end method
