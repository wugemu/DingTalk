.class public Lorg/webrtc/CameraEnumerationAndroid;
.super Ljava/lang/Object;
.source "CameraEnumerationAndroid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/CameraEnumerationAndroid$ClosestComparator;,
        Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;
    }
.end annotation


# static fields
.field static final COMMON_RESOLUTIONS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/webrtc/Size;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CameraEnumerationAndroid"


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0xa0

    const/16 v8, 0x400

    const/16 v7, 0x280

    const/16 v6, 0xf0

    const/16 v5, 0x1e0

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    new-array v1, v1, [Lorg/webrtc/Size;

    const/4 v2, 0x0

    new-instance v3, Lorg/webrtc/Size;

    const/16 v4, 0x78

    invoke-direct {v3, v9, v4}, Lorg/webrtc/Size;-><init>(II)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/webrtc/Size;

    invoke-direct {v3, v6, v9}, Lorg/webrtc/Size;-><init>(II)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/webrtc/Size;

    const/16 v4, 0x140

    invoke-direct {v3, v4, v6}, Lorg/webrtc/Size;-><init>(II)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lorg/webrtc/Size;

    const/16 v4, 0x190

    invoke-direct {v3, v4, v6}, Lorg/webrtc/Size;-><init>(II)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lorg/webrtc/Size;

    const/16 v4, 0x140

    invoke-direct {v3, v5, v4}, Lorg/webrtc/Size;-><init>(II)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lorg/webrtc/Size;

    const/16 v4, 0x168

    invoke-direct {v3, v7, v4}, Lorg/webrtc/Size;-><init>(II)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lorg/webrtc/Size;

    invoke-direct {v3, v7, v5}, Lorg/webrtc/Size;-><init>(II)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lorg/webrtc/Size;

    const/16 v4, 0x300

    invoke-direct {v3, v4, v5}, Lorg/webrtc/Size;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lorg/webrtc/Size;

    const/16 v4, 0x356

    invoke-direct {v3, v4, v5}, Lorg/webrtc/Size;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lorg/webrtc/Size;

    const/16 v4, 0x320

    const/16 v5, 0x258

    invoke-direct {v3, v4, v5}, Lorg/webrtc/Size;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-instance v3, Lorg/webrtc/Size;

    const/16 v4, 0x3c0

    const/16 v5, 0x21c

    invoke-direct {v3, v4, v5}, Lorg/webrtc/Size;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-instance v3, Lorg/webrtc/Size;

    const/16 v4, 0x3c0

    invoke-direct {v3, v4, v7}, Lorg/webrtc/Size;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-instance v3, Lorg/webrtc/Size;

    const/16 v4, 0x240

    invoke-direct {v3, v8, v4}, Lorg/webrtc/Size;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-instance v3, Lorg/webrtc/Size;

    const/16 v4, 0x258

    invoke-direct {v3, v8, v4}, Lorg/webrtc/Size;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-instance v3, Lorg/webrtc/Size;

    const/16 v4, 0x500

    const/16 v5, 0x2d0

    invoke-direct {v3, v4, v5}, Lorg/webrtc/Size;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-instance v3, Lorg/webrtc/Size;

    const/16 v4, 0x500

    invoke-direct {v3, v4, v8}, Lorg/webrtc/Size;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0x10

    new-instance v3, Lorg/webrtc/Size;

    const/16 v4, 0x780

    const/16 v5, 0x438

    invoke-direct {v3, v4, v5}, Lorg/webrtc/Size;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0x11

    new-instance v3, Lorg/webrtc/Size;

    const/16 v4, 0x780

    const/16 v5, 0x5a0

    invoke-direct {v3, v4, v5}, Lorg/webrtc/Size;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0x12

    new-instance v3, Lorg/webrtc/Size;

    const/16 v4, 0xa00

    const/16 v5, 0x5a0

    invoke-direct {v3, v4, v5}, Lorg/webrtc/Size;-><init>(II)V

    aput-object v3, v1, v2

    const/16 v2, 0x13

    new-instance v3, Lorg/webrtc/Size;

    const/16 v4, 0xf00

    const/16 v5, 0x870

    invoke-direct {v3, v4, v5}, Lorg/webrtc/Size;-><init>(II)V

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/webrtc/CameraEnumerationAndroid;->COMMON_RESOLUTIONS:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    return-void
.end method

.method public static getClosestSupportedFramerateRange(Ljava/util/List;I)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;
    .locals 1
    .param p1, "requestedFps"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;",
            ">;I)",
            "Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "supportedFramerates":Ljava/util/List;, "Ljava/util/List<Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;>;"
    new-instance v0, Lorg/webrtc/CameraEnumerationAndroid$1;

    invoke-direct {v0, p1}, Lorg/webrtc/CameraEnumerationAndroid$1;-><init>(I)V

    invoke-static {p0, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    return-object v0
.end method

.method public static getClosestSupportedSize(Ljava/util/List;II)Lorg/webrtc/Size;
    .locals 5
    .param p1, "requestedWidth"    # I
    .param p2, "requestedHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/Size;",
            ">;II)",
            "Lorg/webrtc/Size;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "supportedSizes":Ljava/util/List;, "Ljava/util/List<Lorg/webrtc/Size;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v0, "filteredSupportedSizes":Ljava/util/List;, "Ljava/util/List<Lorg/webrtc/Size;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/Size;

    .line 201
    .local v1, "size":Lorg/webrtc/Size;
    iget v3, v1, Lorg/webrtc/Size;->width:I

    if-lt v3, p1, :cond_0

    iget v3, v1, Lorg/webrtc/Size;->height:I

    if-lt v3, p2, :cond_0

    .line 202
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    .end local v1    # "size":Lorg/webrtc/Size;
    :cond_1
    const-string/jumbo v2, "CameraEnumerationAndroid"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Filtered supported sizes: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    new-instance v2, Lorg/webrtc/CameraEnumerationAndroid$2;

    invoke-direct {v2, p1, p2}, Lorg/webrtc/CameraEnumerationAndroid$2;-><init>(II)V

    invoke-static {v0, v2}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/webrtc/Size;

    return-object v2
.end method

.method static reportCameraResolution(Lorg/webrtc/Histogram;Lorg/webrtc/Size;)V
    .locals 2
    .param p0, "histogram"    # Lorg/webrtc/Histogram;
    .param p1, "resolution"    # Lorg/webrtc/Size;

    .prologue
    .line 216
    sget-object v1, Lorg/webrtc/CameraEnumerationAndroid;->COMMON_RESOLUTIONS:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 219
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lorg/webrtc/Histogram;->addSample(I)V

    .line 220
    return-void
.end method
