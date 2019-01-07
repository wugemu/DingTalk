.class public final enum Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;
.super Ljava/lang/Enum;
.source "AlbumImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;

.field public static final enum Left:Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;

.field public static final enum Normal:Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;

.field public static final enum Right:Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;

    const-string/jumbo v1, "Right"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;->Right:Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;

    .line 48
    new-instance v0, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;

    const-string/jumbo v1, "Left"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;->Left:Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;

    .line 49
    new-instance v0, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;

    const-string/jumbo v1, "Normal"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;->Normal:Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;

    sget-object v1, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;->Right:Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;->Left:Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;->Normal:Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;->$VALUES:[Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;->$VALUES:[Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;

    invoke-virtual {v0}, [Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;

    return-object v0
.end method
