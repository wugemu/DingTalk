.class public final Lhri;
.super Ljava/lang/Object;
.source "AliSpecialDomains.java"


# static fields
.field public static a:Ljava/util/List;
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
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    sput-object v0, Lhri;->a:Ljava/util/List;

    const-string/jumbo v1, ".dingtalk.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v0, Lhri;->a:Ljava/util/List;

    const-string/jumbo v1, ".dingtalkapps.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v0, Lhri;->a:Ljava/util/List;

    const-string/jumbo v1, ".alibaba-inc.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v0, Lhri;->a:Ljava/util/List;

    const-string/jumbo v1, ".1688.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v0, Lhri;->a:Ljava/util/List;

    const-string/jumbo v1, ".taobao.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v0, Lhri;->a:Ljava/util/List;

    const-string/jumbo v1, ".tmall.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v0, Lhri;->a:Ljava/util/List;

    const-string/jumbo v1, ".alicdn.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v0, Lhri;->a:Ljava/util/List;

    const-string/jumbo v1, ".alipay.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v0, Lhri;->a:Ljava/util/List;

    const-string/jumbo v1, ".alibaba-inc.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lhri;->a:Ljava/util/List;

    const-string/jumbo v1, ".cainiao.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lhri;->a:Ljava/util/List;

    const-string/jumbo v1, ".aliyun-inc.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
