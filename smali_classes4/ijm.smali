.class public final Lijm;
.super Lijj;
.source "LruMemCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lijj",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 30
    invoke-direct {p0}, Lijj;-><init>()V

    .line 31
    new-instance v0, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache$1;-><init>(Lijm;IFZ)V

    iput-object v0, p0, Lijm;->a:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lijm;->b:Ljava/util/HashMap;

    .line 50
    return-void
.end method
