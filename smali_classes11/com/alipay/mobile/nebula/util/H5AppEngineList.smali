.class public Lcom/alipay/mobile/nebula/util/H5AppEngineList;
.super Ljava/lang/Object;
.source "H5AppEngineList.java"


# static fields
.field public static appEngineList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    sput-object v0, Lcom/alipay/mobile/nebula/util/H5AppEngineList;->appEngineList:Ljava/util/List;

    const-string/jumbo v1, "H5App"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5AppEngineList;->appEngineList:Ljava/util/List;

    const-string/jumbo v1, "tinyApp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5AppEngineList;->appEngineList:Ljava/util/List;

    const-string/jumbo v1, "BNApp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
