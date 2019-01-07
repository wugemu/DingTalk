.class public Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList;
.super Ljava/lang/Object;
.source "H5BizPluginList.java"


# static fields
.field public static bizPluginList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/config/H5PluginConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList;->bizPluginList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
