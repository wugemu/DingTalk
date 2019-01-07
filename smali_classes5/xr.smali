.class public final Lxr;
.super Ljava/lang/Object;
.source "FrameworkConfiguration.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/ApiConfiguration;


# static fields
.field private static d:Lxr;


# instance fields
.field a:Lxu;

.field b:Lxx;

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/framework/account/AccountListener;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lxr;->e:Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lxr;->c:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Lxr$1;

    invoke-direct {v0, p0}, Lxr$1;-><init>(Lxr;)V

    iput-object v0, p0, Lxr;->e:Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    .line 79
    return-void
.end method

.method public static a()Lxr;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lxr;->d:Lxr;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lxr;

    invoke-direct {v0}, Lxr;-><init>()V

    sput-object v0, Lxr;->d:Lxr;

    .line 54
    :cond_0
    sget-object v0, Lxr;->d:Lxr;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lxu;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "invoker"    # Lxu;

    .prologue
    .line 38
    sget-object v0, Lcom/alibaba/alimei/framework/db/FrameworkConfigure;->sConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    invoke-static {p0, v0}, Lcom/alibaba/alimei/orm/AlimeiOrm;->initialize(Landroid/content/Context;Lcom/alibaba/alimei/orm/Configuration;)V

    .line 39
    invoke-static {}, Lxr;->a()Lxr;

    move-result-object v0

    iput-object p1, v0, Lxr;->a:Lxu;

    .line 40
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 3
    .param p1, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 216
    if-eqz p1, :cond_0

    .line 217
    iget-object v2, p0, Lxr;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 218
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/framework/account/AccountListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/framework/account/AccountListener;

    .line 220
    .local v1, "l":Lcom/alibaba/alimei/framework/account/AccountListener;
    invoke-interface {v1, p1}, Lcom/alibaba/alimei/framework/account/AccountListener;->onAccountLogin(Lcom/alibaba/alimei/framework/model/UserAccountModel;)V

    goto :goto_0

    .line 223
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/framework/account/AccountListener;>;"
    .end local v1    # "l":Lcom/alibaba/alimei/framework/account/AccountListener;
    :cond_0
    return-void
.end method

.method public final a(Lxq;)V
    .locals 4
    .param p1, "bundle"    # Lxq;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 247
    if-nez p1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    invoke-virtual {p1}, Lxq;->b()Ljava/util/List;

    move-result-object v1

    .line 251
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/orm/Configuration;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 252
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/orm/Configuration;

    .line 253
    .local v0, "config":Lcom/alibaba/alimei/orm/Configuration;
    iget-boolean v3, p1, Lxq;->c:Z

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/orm/Configuration;->setCipher(Z)V

    .line 254
    iget-object v3, p1, Lxq;->d:Lcom/alibaba/alimei/orm/CipherGenerator;

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/orm/Configuration;->setCipherGenerator(Lcom/alibaba/alimei/orm/CipherGenerator;)V

    goto :goto_1

    .line 256
    .end local v0    # "config":Lcom/alibaba/alimei/orm/Configuration;
    :cond_2
    invoke-static {}, Lxn;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alibaba/alimei/orm/AlimeiOrm;->initialize(Landroid/content/Context;Ljava/util/List;)V

    .line 258
    :cond_3
    invoke-virtual {p1}, Lxq;->a()Lcom/alibaba/alimei/framework/account/AccountListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 259
    iget-object v2, p0, Lxr;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lxq;->a()Lcom/alibaba/alimei/framework/account/AccountListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lxr;->a:Lxu;

    invoke-interface {v0}, Lxu;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lxr;->a:Lxu;

    invoke-interface {v0}, Lxu;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lxr;->a:Lxu;

    invoke-interface {v0}, Lxu;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lxr;->a:Lxu;

    invoke-interface {v0}, Lxu;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getClientSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lxr;->a:Lxu;

    invoke-interface {v0}, Lxu;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getConfigSwitch(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 164
    invoke-static {}, Lxn;->l()Lxp;

    move-result-object v0

    .line 166
    .local v0, "configSwitchDelegate":Lxp;
    if-nez v0, :cond_0

    .line 170
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_0
    invoke-interface {v0, p1, p2}, Lxp;->a(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0
.end method

.method public final getDevEnvironment()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lxr;->b:Lxx;

    if-nez v0, :cond_0

    sget v0, Lcom/alibaba/alimei/restfulapi/constant/Constant;->DEV_ONLINE:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lxr;->b:Lxx;

    invoke-interface {v0}, Lxx;->b()I

    move-result v0

    goto :goto_0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lxr;->b:Lxx;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lxr;->b:Lxx;

    invoke-interface {v0}, Lxx;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getDingtalkSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lxr;->a:Lxu;

    invoke-interface {v0}, Lxu;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHostName(I)Ljava/lang/String;
    .locals 1
    .param p1, "domainType"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lxr;->b:Lxx;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lxr;->b:Lxx;

    invoke-interface {v0, p1}, Lxx;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getHostUrl(I)Ljava/lang/String;
    .locals 1
    .param p1, "domainType"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lxr;->b:Lxx;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lxr;->b:Lxx;

    invoke-interface {v0, p1}, Lxx;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getHttpClientFactory()Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lxr;->e:Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    return-object v0
.end method

.method public final getIpByHttpDns(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)Ljava/lang/String;
    .locals 2
    .param p1, "hostAddress"    # Ljava/lang/String;
    .param p2, "method"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 185
    if-eqz p2, :cond_1

    iget v0, p2, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    const/16 v1, 0xfa0

    if-ne v0, v1, :cond_1

    .line 186
    iget-object v0, p0, Lxr;->b:Lxx;

    if-eqz v0, :cond_0

    .line 187
    const/4 p1, 0x0

    .line 193
    .end local p1    # "hostAddress":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "hostAddress":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lxr;->a:Lxu;

    invoke-interface {v0, p1}, Lxu;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lxr;->a:Lxu;

    invoke-interface {v0}, Lxu;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNetInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lxr;->a:Lxu;

    invoke-interface {v0}, Lxu;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOKHttpFactory()Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;
    .locals 1

    .prologue
    .line 118
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getOkHttpFactory()Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;

    move-result-object v0

    return-object v0
.end method

.method public final getSecurity_ua(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v0, p0, Lxr;->a:Lxu;

    invoke-interface {v0, p1}, Lxu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSecurity_umid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lxr;->a:Lxu;

    invoke-interface {v0}, Lxu;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Lxn;->a()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public final isFeatureOpen(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "featureSwitch"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 153
    invoke-static {}, Lxn;->l()Lxp;

    move-result-object v0

    .line 155
    .local v0, "configSwitchDelegate":Lxp;
    if-nez v0, :cond_0

    .line 159
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_0
    invoke-interface {v0, p1, p2}, Lxp;->b(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0
.end method
