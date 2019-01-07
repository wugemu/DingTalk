.class public Lcom/alipay/mobile/nebula/util/H5SchemeWhiteList;
.super Ljava/lang/Object;
.source "H5SchemeWhiteList.java"


# static fields
.field public static sSchemeMap:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5SchemeWhiteList$1;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/util/H5SchemeWhiteList$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5SchemeWhiteList;->sSchemeMap:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
