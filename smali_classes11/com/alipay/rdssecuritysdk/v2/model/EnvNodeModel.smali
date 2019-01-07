.class public Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;
.super Liqm;
.source "EnvNodeModel.java"


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "asdk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "board"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "brand"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "device"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "displayid"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "em"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "manufacturer"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "model"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "incremental"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "os"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "qemu"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "release"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "kerver"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "root"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "tags"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "processor"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "pf"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "pn"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "pm"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Liqm;-><init>()V

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->b:Ljava/util/Map;

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;-><init>()V

    .line 54
    invoke-static {}, Litq;->a()Litq;

    move-result-object v1

    .line 55
    .local v1, "envInfo":Litq;
    invoke-static {}, Lito;->a()Lito;

    move-result-object v0

    .line 56
    .local v0, "devInfo":Lito;
    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v3, "asdk"

    invoke-static {}, Litq;->m()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v3, "board"

    invoke-static {}, Litq;->d()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v3, "brand"

    invoke-static {}, Litq;->e()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v3, "device"

    invoke-static {}, Litq;->f()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v3, "displayid"

    invoke-static {}, Litq;->g()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v3, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v4, "em"

    invoke-static {p1}, Litq;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "true"

    :goto_0
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v3, "manufacturer"

    invoke-static {}, Litq;->i()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v3, "model"

    invoke-static {}, Litq;->j()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v3, "name"

    invoke-static {}, Litq;->k()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v3, "incremental"

    invoke-static {}, Litq;->h()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v3, "os"

    const-string/jumbo v4, "android"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v3, "qemu"

    .line 1000
    const-string/jumbo v4, "ro.kernel.qemu"

    const-string/jumbo v5, "0"

    invoke-static {v4, v5}, Litq;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 67
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v3, "release"

    invoke-static {}, Litq;->l()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v3, "kerver"

    invoke-static {}, Lito;->p()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v3, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v4, "root"

    invoke-static {}, Litq;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "true"

    :goto_1
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v3, "tags"

    invoke-static {}, Litq;->n()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v3, "processor"

    invoke-static {}, Lito;->i()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v3, "pf"

    invoke-virtual {v0}, Lito;->h()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v3, "pn"

    invoke-virtual {v0}, Lito;->g()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v3, "pm"

    invoke-static {}, Lito;->f()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void

    .line 61
    :cond_0
    const-string/jumbo v2, "false"

    goto/16 :goto_0

    .line 70
    :cond_1
    const-string/jumbo v2, "false"

    goto :goto_1
.end method
