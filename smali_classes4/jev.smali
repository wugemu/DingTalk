.class public final Ljev;
.super Ljava/lang/Object;
.source "DefaultConfig.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const-string/jumbo v0, "online-server"

    sput-object v0, Ljev;->a:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljev;->b:Ljava/util/HashMap;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljev;->c:Ljava/util/HashMap;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljev;->d:Ljava/util/HashMap;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljev;->e:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljev;->f:Ljava/util/HashMap;

    .line 28
    sget-object v0, Ljev;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "gateway_url"

    const-string/jumbo v2, "https://bkmobilegw.mybank.cn/mgw.htm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Ljev;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "alipay_gateway_url"

    const-string/jumbo v2, "https://mobilegw.alipay.com/mgw.htm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Ljev;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "home_url"

    const-string/jumbo v2, "https://dingding.mybank.cn/render/p/s/dingtalk-mybank-account/www/"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Ljev;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "evn"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Ljev;->c:Ljava/util/HashMap;

    const-string/jumbo v1, "gateway_url"

    const-string/jumbo v2, "http://bkmobilegwpre.mybank.cn/mgw.htm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Ljev;->c:Ljava/util/HashMap;

    const-string/jumbo v1, "alipay_gateway_url"

    const-string/jumbo v2, "https://mobilegwpre.alipay.com/mgw.htm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Ljev;->c:Ljava/util/HashMap;

    const-string/jumbo v1, "home_url"

    const-string/jumbo v2, "https://dingdingpre.mybank.cn/render/p/s/dingtalk-mybank-account/www/"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Ljev;->c:Ljava/util/HashMap;

    const-string/jumbo v1, "evn"

    const-string/jumbo v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Ljev;->e:Ljava/util/HashMap;

    const-string/jumbo v1, "gateway_url"

    const-string/jumbo v2, "http://bkmobilegw.sit.mayibank.net/mgw.htm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Ljev;->e:Ljava/util/HashMap;

    const-string/jumbo v1, "alipay_gateway_url"

    const-string/jumbo v2, "http://mobilegw.test.alipay.net/mgw.htm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Ljev;->e:Ljava/util/HashMap;

    const-string/jumbo v1, "home_url"

    const-string/jumbo v2, "http://bkebank.sit.mayibank.net/dingtalk-mybank-account/"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Ljev;->e:Ljava/util/HashMap;

    const-string/jumbo v1, "evn"

    const-string/jumbo v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Ljev;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "gateway_url"

    const-string/jumbo v2, "http://bkmobilegw.stable.mayibank.net/mgw.htm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Ljev;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "alipay_gateway_url"

    const-string/jumbo v2, "http://mobilegw.aaa.alipay.net/mgw.htm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Ljev;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "home_url"

    const-string/jumbo v2, "http://bkebank.d4231.mayibank.net/dingtalk-mybank-account/"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Ljev;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "evn"

    const-string/jumbo v2, "4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Ljev;->f:Ljava/util/HashMap;

    const-string/jumbo v1, "gateway_url"

    const-string/jumbo v2, "http://bkmobilegw.dev.mayibank.net/mgw.htm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Ljev;->f:Ljava/util/HashMap;

    const-string/jumbo v1, "alipay_gateway_url"

    const-string/jumbo v2, "http://mobilegw.aaa.alipay.net/mgw.htm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Ljev;->f:Ljava/util/HashMap;

    const-string/jumbo v1, "home_url"

    const-string/jumbo v2, "http://bkebank.d4231.mayibank.net/dingtalk-mybank-account/"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Ljev;->f:Ljava/util/HashMap;

    const-string/jumbo v1, "evn"

    const-string/jumbo v2, "4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
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
    .locals 1

    .prologue
    .line 103
    sget-object v0, Ljev;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1059
    .local v1, "applicationContext":Landroid/content/Context;
    invoke-static {v1}, Ljfr;->a(Landroid/content/Context;)Z

    move-result v4

    .line 66
    if-eqz v4, :cond_3

    .line 68
    const-string/jumbo v4, "com.mybank.android.phone.config"

    const-string/jumbo v5, "server_type"

    const-string/jumbo v6, ""

    invoke-static {p0, v4, v5, v6}, Ljfv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "configType":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 70
    sput-object v2, Ljev;->a:Ljava/lang/String;

    .line 72
    :cond_0
    const-string/jumbo v4, "disable_uc"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 73
    const-string/jumbo v4, "com.mybank.android.phone.config"

    const-string/jumbo v5, "disable_uc"

    const-string/jumbo v6, ""

    invoke-static {p0, v4, v5, v6}, Ljfv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    .end local v2    # "configType":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 76
    .restart local v2    # "configType":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "allow_all"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 77
    const-string/jumbo v4, "com.mybank.android.phone.config"

    const-string/jumbo v5, "allow_all"

    const-string/jumbo v6, ""

    invoke-static {p0, v4, v5, v6}, Ljfv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "allow_all":Ljava/lang/String;
    move-object v3, v0

    .line 78
    goto :goto_0

    .line 81
    .end local v0    # "allow_all":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Ljev;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 83
    .end local v2    # "configType":Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Ljev;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 88
    sget-object v0, Ljev;->a:Ljava/lang/String;

    const-string/jumbo v1, "pre-server"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Ljev;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    :goto_0
    return-object v0

    .line 90
    :cond_0
    sget-object v0, Ljev;->a:Ljava/lang/String;

    const-string/jumbo v1, "online-server"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    sget-object v0, Ljev;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 92
    :cond_1
    sget-object v0, Ljev;->a:Ljava/lang/String;

    const-string/jumbo v1, "stable-server"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    sget-object v0, Ljev;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 94
    :cond_2
    sget-object v0, Ljev;->a:Ljava/lang/String;

    const-string/jumbo v1, "sit-server"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    sget-object v0, Ljev;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 96
    :cond_3
    sget-object v0, Ljev;->a:Ljava/lang/String;

    const-string/jumbo v1, "dev-server"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 97
    sget-object v0, Ljev;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 99
    :cond_4
    sget-object v0, Ljev;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-static {p0}, Ljfr;->a(Landroid/content/Context;)Z

    move-result v0

    .line 60
    .local v0, "ret":Z
    return v0
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 1103
    sget-object v0, Ljev;->a:Ljava/lang/String;

    .line 107
    const-string/jumbo v1, "dev-server"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2103
    sget-object v0, Ljev;->a:Ljava/lang/String;

    .line 108
    const-string/jumbo v1, "stable-server"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3103
    sget-object v0, Ljev;->a:Ljava/lang/String;

    .line 109
    const-string/jumbo v1, "sit-server"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 107
    goto :goto_0
.end method
