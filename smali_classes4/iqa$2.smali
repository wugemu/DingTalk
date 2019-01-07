.class final Liqa$2;
.super Ljava/lang/Object;
.source "JsonGwService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liqa;->a(Lcom/alipay/mobile/security/bio/api/BioResponse;Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;

.field final synthetic b:Lcom/alipay/mobile/security/bio/api/BioResponse;

.field final synthetic c:Liqa;


# direct methods
.method constructor <init>(Liqa;Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;Lcom/alipay/mobile/security/bio/api/BioResponse;)V
    .locals 0
    .param p1, "this$0"    # Liqa;

    .prologue
    .line 85
    iput-object p1, p0, Liqa$2;->c:Liqa;

    iput-object p2, p0, Liqa$2;->a:Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;

    iput-object p3, p0, Liqa$2;->b:Lcom/alipay/mobile/security/bio/api/BioResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v6, 0x3e9

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Liqa$2;->a:Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/utils/BioLog;->d(Ljava/lang/String;)V

    .line 92
    const/4 v2, 0x0

    .line 95
    .local v2, "resp":Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;
    :try_start_0
    iget-object v4, p0, Liqa$2;->c:Liqa;

    .line 1024
    iget-object v4, v4, Liqa;->e:Lcom/alipay/bis/common/service/facade/gw/zim/ZimDispatchJsonGwFacade;

    .line 95
    iget-object v5, p0, Liqa$2;->a:Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;

    invoke-interface {v4, v5}, Lcom/alipay/bis/common/service/facade/gw/zim/ZimDispatchJsonGwFacade;->validate(Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;)Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 100
    :goto_0
    if-nez v2, :cond_0

    .line 101
    new-instance v2, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;

    .end local v2    # "resp":Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;
    invoke-direct {v2}, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;-><init>()V

    .line 102
    .restart local v2    # "resp":Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;
    iput v6, v2, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->productRetCode:I

    .line 103
    iput v6, v2, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->validationRetCode:I

    .line 106
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/utils/BioLog;->d(Ljava/lang/String;)V

    .line 108
    move-object v3, v2

    .line 110
    .local v3, "response":Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;
    iget-object v4, p0, Liqa$2;->b:Lcom/alipay/mobile/security/bio/api/BioResponse;

    if-eqz v4, :cond_2

    .line 111
    iget-object v4, p0, Liqa$2;->b:Lcom/alipay/mobile/security/bio/api/BioResponse;

    invoke-virtual {v4}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getExt()Ljava/util/Map;

    move-result-object v1

    .line 112
    .local v1, "ext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 113
    iget-object v4, v3, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->extParams:Ljava/util/Map;

    if-nez v4, :cond_1

    .line 114
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->extParams:Ljava/util/Map;

    .line 116
    :cond_1
    iget-object v4, v3, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->extParams:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 119
    .end local v1    # "ext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget-object v4, p0, Liqa$2;->c:Liqa;

    iget-object v4, v4, Liqa;->c:Landroid/os/Handler;

    if-eqz v4, :cond_3

    .line 120
    iget-object v4, p0, Liqa$2;->c:Liqa;

    iget-object v4, v4, Liqa;->c:Landroid/os/Handler;

    new-instance v5, Liqa$2$1;

    invoke-direct {v5, p0, v3}, Liqa$2$1;-><init>(Liqa$2;Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    :cond_3
    return-void

    .line 96
    .end local v3    # "response":Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
