.class public final Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder;
.super Ljava/lang/Object;
.source "AlbumImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder$Mode;,
        Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder$DecodeCondition;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x4

    sput v0, Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder;->a:I

    .line 297
    const/16 v0, 0xa

    sput v0, Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder;->b:I

    .line 298
    sget v0, Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder;->a:I

    add-int/lit8 v0, v0, 0x5

    sput v0, Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder;->c:I

    .line 299
    const/4 v0, 0x5

    sput v0, Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder;->d:I

    return-void
.end method
