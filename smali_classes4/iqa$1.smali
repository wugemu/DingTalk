.class final Liqa$1;
.super Ljava/lang/Object;
.source "JsonGwService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liqa;->a(Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwRequest;

.field final synthetic b:Liqa;


# direct methods
.method constructor <init>(Liqa;Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwRequest;)V
    .locals 0
    .param p1, "this$0"    # Liqa;

    .prologue
    .line 41
    iput-object p1, p0, Liqa$1;->b:Liqa;

    iput-object p2, p0, Liqa$1;->a:Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Liqa$1;->a:Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwRequest;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->d(Ljava/lang/String;)V

    .line 48
    const/4 v1, 0x0

    .line 54
    .local v1, "resp":Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;
    :try_start_0
    iget-object v3, p0, Liqa$1;->b:Liqa;

    .line 1024
    iget-object v3, v3, Liqa;->e:Lcom/alipay/bis/common/service/facade/gw/zim/ZimDispatchJsonGwFacade;

    .line 54
    iget-object v4, p0, Liqa$1;->a:Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwRequest;

    invoke-interface {v3, v4}, Lcom/alipay/bis/common/service/facade/gw/zim/ZimDispatchJsonGwFacade;->init(Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwRequest;)Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 60
    :goto_0
    if-nez v1, :cond_0

    .line 61
    new-instance v1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;

    .end local v1    # "resp":Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;
    invoke-direct {v1}, Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;-><init>()V

    .line 62
    .restart local v1    # "resp":Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;
    const/16 v3, 0xc8

    iput v3, v1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;->retCode:I

    .line 65
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->d(Ljava/lang/String;)V

    .line 67
    move-object v2, v1

    .line 68
    .local v2, "response":Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;
    iget-object v3, p0, Liqa$1;->b:Liqa;

    iget-object v3, v3, Liqa;->c:Landroid/os/Handler;

    if-eqz v3, :cond_1

    .line 69
    iget-object v3, p0, Liqa$1;->b:Liqa;

    iget-object v3, v3, Liqa;->c:Landroid/os/Handler;

    new-instance v4, Liqa$1$1;

    invoke-direct {v4, p0, v2}, Liqa$1$1;-><init>(Liqa$1;Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    :cond_1
    return-void

    .line 56
    .end local v2    # "response":Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
