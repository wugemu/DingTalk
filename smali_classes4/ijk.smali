.class public final Lijk;
.super Lijj;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lijj",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public c:J


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 34
    invoke-direct {p0}, Lijj;-><init>()V

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lijk;->c:J

    .line 36
    new-instance v0, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache$1;-><init>(Lijk;IFZ)V

    iput-object v0, p0, Lijk;->a:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lijk;->b:Ljava/util/HashMap;

    .line 54
    return-void
.end method
