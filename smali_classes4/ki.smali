.class public final Lki;
.super Ljava/lang/Object;
.source "DispatchConstants.java"


# static fields
.field public static a:[Ljava/lang/String;

.field public static b:[Ljava/lang/String;

.field public static c:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 41
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "h5.m.taobao.com"

    aput-object v1, v0, v4

    const-string/jumbo v1, "gw.alicdn.com"

    aput-object v1, v0, v5

    const-string/jumbo v1, "g.alicdn.com"

    aput-object v1, v0, v6

    const-string/jumbo v1, "wwc.alicdn.com"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string/jumbo v2, "g.tbcdn.cn"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "img.alicdn.com"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "dorangesource.alicdn.com"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "api.m.taobao.com"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "upload.m.taobao.com"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "mobilegw.alipay.com"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "ynuf.alipay.com"

    aput-object v2, v0, v1

    sput-object v0, Lki;->a:[Ljava/lang/String;

    .line 55
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "amdc.m.taobao.com"

    aput-object v1, v0, v4

    const-string/jumbo v1, "amdc.wapa.taobao.com"

    aput-object v1, v0, v5

    const-string/jumbo v1, "api.waptest.taobao.com"

    aput-object v1, v0, v6

    sput-object v0, Lki;->b:[Ljava/lang/String;

    .line 60
    new-array v0, v3, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-wide v2, 0x20a4e1024fL

    invoke-static {v2, v3}, Lla;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-wide v2, 0x20a4e0f67fL

    invoke-static {v2, v3}, Lla;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-wide v2, 0x18aec047e6L

    invoke-static {v2, v3}, Lla;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [Ljava/lang/String;

    const-wide v2, 0x2610c5a0dL

    invoke-static {v2, v3}, Lla;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object v1, v0, v6

    sput-object v0, Lki;->c:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lki;->b:[Ljava/lang/String;

    invoke-static {}, Lic;->d()Lanet/channel/entity/ENV;

    move-result-object v1

    invoke-virtual {v1}, Lanet/channel/entity/ENV;->getEnvMode()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 90
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lki;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lki;->c:[[Ljava/lang/String;

    invoke-static {}, Lic;->d()Lanet/channel/entity/ENV;

    move-result-object v1

    invoke-virtual {v1}, Lanet/channel/entity/ENV;->getEnvMode()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
