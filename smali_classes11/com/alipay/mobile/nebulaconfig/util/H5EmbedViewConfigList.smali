.class public Lcom/alipay/mobile/nebulaconfig/util/H5EmbedViewConfigList;
.super Ljava/lang/Object;
.source "H5EmbedViewConfigList.java"


# static fields
.field public static embedViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/alipay/mobile/nebulaconfig/util/H5EmbedViewConfigList$1;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaconfig/util/H5EmbedViewConfigList$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaconfig/util/H5EmbedViewConfigList;->embedViewList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
