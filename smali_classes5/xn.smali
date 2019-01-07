.class public final Lxn;
.super Ljava/lang/Object;
.source "AlimeiFramework.java"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Lxz;

.field private static c:Lxy;

.field private static d:Landroid/os/Handler;

.field private static e:Z

.field private static f:Z

.field private static g:Lye;

.field private static h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lxq;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Lxt;

.field private static j:Lxo;

.field private static k:Lxp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 35
    sput-object v2, Lxn;->a:Landroid/content/Context;

    .line 36
    sput-object v2, Lxn;->b:Lxz;

    .line 37
    sput-object v2, Lxn;->c:Lxy;

    .line 39
    sput-boolean v0, Lxn;->e:Z

    .line 40
    sput-boolean v0, Lxn;->f:Z

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lxn;->h:Ljava/util/ArrayList;

    .line 287
    sput-object v2, Lxn;->i:Lxt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lxn;->d:Landroid/os/Handler;

    return-object v0
.end method

.method public static final a(Landroid/content/Context;Lxu;Landroid/os/Handler;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "invoker"    # Lxu;
    .param p2, "uiHandler"    # Landroid/os/Handler;

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lxn;->a(Landroid/content/Context;Lxu;Landroid/os/Handler;Z)V

    .line 113
    return-void
.end method

.method private static final declared-synchronized a(Landroid/content/Context;Lxu;Landroid/os/Handler;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "invoker"    # Lxu;
    .param p2, "uiHandler"    # Landroid/os/Handler;
    .param p3, "isBuild"    # Z

    .prologue
    .line 54
    const-class v6, Lxn;

    monitor-enter v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    :try_start_0
    invoke-static/range {v0 .. v5}, Lxn;->a(Landroid/content/Context;Lxu;Landroid/os/Handler;ZZLcom/alibaba/alimei/orm/CipherGenerator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit v6

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private static final declared-synchronized a(Landroid/content/Context;Lxu;Landroid/os/Handler;ZZLcom/alibaba/alimei/orm/CipherGenerator;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "invoker"    # Lxu;
    .param p2, "uiHandler"    # Landroid/os/Handler;
    .param p3, "isBuild"    # Z
    .param p4, "frameworkDbCipher"    # Z
    .param p5, "cipherGenerator"    # Lcom/alibaba/alimei/orm/CipherGenerator;

    .prologue
    .line 58
    const-class v1, Lxn;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lxn;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lxn;->a:Landroid/content/Context;

    if-nez v0, :cond_3

    .line 59
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 60
    sput-object v0, Lxn;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 61
    sput-object p0, Lxn;->a:Landroid/content/Context;

    .line 63
    :cond_1
    sput-object p2, Lxn;->d:Landroid/os/Handler;

    .line 64
    new-instance v0, Lxz;

    invoke-direct {v0}, Lxz;-><init>()V

    sput-object v0, Lxn;->b:Lxz;

    .line 65
    new-instance v0, Lxy;

    invoke-direct {v0}, Lxy;-><init>()V

    sput-object v0, Lxn;->c:Lxy;

    .line 66
    new-instance v0, Lyg;

    invoke-direct {v0}, Lyg;-><init>()V

    sput-object v0, Lxn;->g:Lye;

    .line 67
    invoke-static {}, Lxr;->a()Lxr;

    move-result-object v0

    iput-object p1, v0, Lxr;->a:Lxu;

    .line 69
    sget-object v0, Lxn;->a:Landroid/content/Context;

    invoke-static {}, Lxr;->a()Lxr;

    move-result-object v2

    sget-object v3, Lxn;->b:Lxz;

    sget-object v4, Lxn;->c:Lxy;

    invoke-static {v0, v2, v3, v4}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->initialize(Landroid/content/Context;Lcom/alibaba/alimei/restfulapi/ApiConfiguration;Lcom/alibaba/alimei/restfulapi/auth/AuthStore;Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;)V

    .line 72
    if-eqz p3, :cond_2

    .line 73
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lxn;->a(ZLcom/alibaba/alimei/orm/CipherGenerator;)V

    .line 76
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lxn;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_3
    monitor-exit v1

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final declared-synchronized a(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lzg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "encryptType":Ljava/lang/Class;, "Ljava/lang/Class<+Lzg;>;"
    const-class v0, Lxn;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lzh;->a(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit v0

    return-void

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Ljava/lang/Class;Lxm;)V
    .locals 1
    .param p1, "observer"    # Lxm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/framework/datasource/DataGroupModel;",
            ">;",
            "Lxm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "classType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/framework/datasource/DataGroupModel;>;"
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->registerContentObserver(Ljava/lang/Class;Lxm;)V

    .line 237
    return-void
.end method

.method public static a(Lxo;)V
    .locals 0
    .param p0, "cSpaceLogConfig"    # Lxo;

    .prologue
    .line 329
    sput-object p0, Lxn;->j:Lxo;

    .line 330
    return-void
.end method

.method public static a(Lxp;)V
    .locals 0
    .param p0, "configSwitchDelegate"    # Lxp;

    .prologue
    .line 294
    sput-object p0, Lxn;->k:Lxp;

    .line 295
    return-void
.end method

.method public static declared-synchronized a(Lxq;)V
    .locals 2
    .param p0, "bundle"    # Lxq;

    .prologue
    .line 254
    const-class v1, Lxn;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lxn;->e:Z

    if-eqz v0, :cond_0

    .line 255
    invoke-static {}, Lxr;->a()Lxr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lxr;->a(Lxq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :goto_0
    monitor-exit v1

    return-void

    .line 257
    :cond_0
    :try_start_1
    sget-object v0, Lxn;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lxt;)V
    .locals 0
    .param p0, "config"    # Lxt;

    .prologue
    .line 278
    sput-object p0, Lxn;->i:Lxt;

    .line 279
    return-void
.end method

.method public static a(Lxx;)V
    .locals 1
    .param p0, "spaceInvoker"    # Lxx;

    .prologue
    .line 195
    invoke-static {}, Lxr;->a()Lxr;

    move-result-object v0

    .line 1206
    iput-object p0, v0, Lxr;->b:Lxx;

    .line 196
    return-void
.end method

.method public static final declared-synchronized a(ZLcom/alibaba/alimei/orm/CipherGenerator;)V
    .locals 5
    .param p0, "frameworkDbCipher"    # Z
    .param p1, "cipherGenerator"    # Lcom/alibaba/alimei/orm/CipherGenerator;

    .prologue
    .line 129
    const-class v3, Lxn;

    monitor-enter v3

    :try_start_0
    sget-boolean v2, Lxn;->f:Z

    if-nez v2, :cond_2

    .line 131
    sget-object v2, Lcom/alibaba/alimei/framework/db/FrameworkConfigure;->sConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    if-eqz v2, :cond_0

    .line 132
    sget-object v2, Lcom/alibaba/alimei/framework/db/FrameworkConfigure;->sConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    invoke-virtual {v2, p0}, Lcom/alibaba/alimei/orm/Configuration;->setCipher(Z)V

    .line 134
    if-eqz p0, :cond_0

    .line 135
    sget-object v2, Lcom/alibaba/alimei/framework/db/FrameworkConfigure;->sConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    invoke-virtual {v2, p1}, Lcom/alibaba/alimei/orm/Configuration;->setCipherGenerator(Lcom/alibaba/alimei/orm/CipherGenerator;)V

    .line 139
    :cond_0
    sget-object v2, Lxn;->a:Landroid/content/Context;

    invoke-static {}, Lxn;->e()Lxu;

    move-result-object v4

    invoke-static {v2, v4}, Lxr;->a(Landroid/content/Context;Lxu;)V

    .line 140
    sget-object v2, Lxn;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 141
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lxq;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxq;

    .line 143
    .local v0, "bundle":Lxq;
    invoke-static {}, Lxr;->a()Lxr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lxr;->a(Lxq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 129
    .end local v0    # "bundle":Lxq;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lxq;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 145
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lxq;>;"
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    sput-boolean v2, Lxn;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lxq;>;"
    :cond_2
    monitor-exit v3

    return-void
.end method

.method public static final b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lxn;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static b(Ljava/lang/Class;Lxm;)V
    .locals 1
    .param p1, "observer"    # Lxm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/framework/datasource/DataGroupModel;",
            ">;",
            "Lxm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "classType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/framework/datasource/DataGroupModel;>;"
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->unregisterContentObserver(Ljava/lang/Class;Lxm;)V

    .line 245
    return-void
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 154
    sget-boolean v0, Lxn;->e:Z

    return v0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 162
    sget-boolean v0, Lxn;->f:Z

    return v0
.end method

.method public static e()Lxu;
    .locals 1

    .prologue
    .line 191
    invoke-static {}, Lxr;->a()Lxr;

    move-result-object v0

    .line 1202
    iget-object v0, v0, Lxr;->a:Lxu;

    .line 191
    return-object v0
.end method

.method public static f()Lxx;
    .locals 1

    .prologue
    .line 199
    invoke-static {}, Lxr;->a()Lxr;

    move-result-object v0

    .line 1210
    iget-object v0, v0, Lxr;->b:Lxx;

    .line 199
    return-object v0
.end method

.method public static g()Lxz;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lxn;->b:Lxz;

    return-object v0
.end method

.method public static h()Lcom/alibaba/alimei/framework/account/AccountApi;
    .locals 3

    .prologue
    .line 216
    invoke-static {}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getInstance()Lcom/alibaba/alimei/framework/api/ApiFactory;

    move-result-object v0

    const/4 v1, 0x0

    const-class v2, Lxl;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getApiInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/framework/api/AbsApiImpl;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/framework/account/AccountApi;

    return-object v0
.end method

.method public static i()Lcom/alibaba/alimei/framework/api/ApiFactory;
    .locals 1

    .prologue
    .line 220
    invoke-static {}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getInstance()Lcom/alibaba/alimei/framework/api/ApiFactory;

    move-result-object v0

    return-object v0
.end method

.method public static j()Lya;
    .locals 1

    .prologue
    .line 227
    invoke-static {}, Lxs;->a()Lxs;

    move-result-object v0

    return-object v0
.end method

.method public static k()Lxt;
    .locals 1

    .prologue
    .line 282
    sget-object v0, Lxn;->i:Lxt;

    if-nez v0, :cond_0

    .line 2016
    new-instance v0, Lxt;

    invoke-direct {v0}, Lxt;-><init>()V

    .line 283
    sput-object v0, Lxn;->i:Lxt;

    .line 285
    :cond_0
    sget-object v0, Lxn;->i:Lxt;

    return-object v0
.end method

.method public static l()Lxp;
    .locals 1

    .prologue
    .line 298
    sget-object v0, Lxn;->k:Lxp;

    return-object v0
.end method

.method public static m()Lye;
    .locals 1

    .prologue
    .line 321
    sget-object v0, Lxn;->g:Lye;

    return-object v0
.end method

.method public static n()Lxo;
    .locals 1

    .prologue
    .line 325
    sget-object v0, Lxn;->j:Lxo;

    return-object v0
.end method
