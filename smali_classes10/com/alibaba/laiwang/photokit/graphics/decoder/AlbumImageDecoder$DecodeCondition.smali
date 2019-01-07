.class public final enum Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder$DecodeCondition;
.super Ljava/lang/Enum;
.source "AlbumImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DecodeCondition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder$DecodeCondition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder$DecodeCondition;

.field public static final enum Album:Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder$DecodeCondition;

.field public static final enum Chat:Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder$DecodeCondition;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder$DecodeCondition;

    const-string/jumbo v1, "Chat"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder$DecodeCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder$DecodeCondition;->Chat:Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder$DecodeCondition;

    .line 37
    new-instance v0, Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder$DecodeCondition;

    const-string/jumbo v1, "Album"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder$DecodeCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder$DecodeCondition;->Album:Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder$DecodeCondition;

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder$DecodeCondition;

    sget-object v1, Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder$DecodeCondition;->Chat:Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder$DecodeCondition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder$DecodeCondition;->Album:Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder$DecodeCondition;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder$DecodeCondition;->$VALUES:[Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder$DecodeCondition;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder$DecodeCondition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder$DecodeCondition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder$DecodeCondition;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder$DecodeCondition;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder$DecodeCondition;->$VALUES:[Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder$DecodeCondition;

    invoke-virtual {v0}, [Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder$DecodeCondition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/laiwang/photokit/graphics/decoder/AlbumImageDecoder$DecodeCondition;

    return-object v0
.end method
