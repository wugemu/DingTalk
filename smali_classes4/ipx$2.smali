.class final Lipx$2;
.super Ljava/lang/Object;
.source "ZimPlatform.java"

# interfaces
.implements Lcom/alipay/mobile/security/bio/api/BioCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lipx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lipx;


# direct methods
.method constructor <init>(Lipx;)V
    .locals 0
    .param p1, "this$0"    # Lipx;

    .prologue
    .line 253
    iput-object p1, p0, Lipx$2;->a:Lipx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/alipay/mobile/security/bio/api/BioResponse;)V
    .locals 8
    .param p1, "response"    # Lcom/alipay/mobile/security/bio/api/BioResponse;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 259
    new-instance v1, Lipv;

    iget-object v4, p0, Lipx$2;->a:Lipx;

    invoke-static {v4}, Lipx;->b(Lipx;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lipv;-><init>(Ljava/lang/String;)V

    .line 262
    .local v1, "parameter4":Lipv;
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 263
    const/4 v4, 0x1

    iput-boolean v4, v1, Lipv;->b:Z

    .line 267
    :goto_0
    iget-object v4, p0, Lipx$2;->a:Lipx;

    invoke-static {v4}, Lipx;->c(Lipx;)Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    move-result-object v4

    invoke-static {v4}, Lipw;->a(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)Lipw;

    move-result-object v4

    sget-object v5, Lipw;->g:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lipw;->a(Ljava/lang/String;Lipv;)V

    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "auth:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->isSuccess()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getResult()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    const/4 v0, 0x1

    .line 273
    .local v0, "isNeedResponse":Z
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getResult()I

    move-result v4

    const/16 v5, 0xd1

    if-eq v4, v5, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getResult()I

    move-result v4

    const/16 v5, 0x1f4

    if-ne v4, v5, :cond_2

    .line 277
    :cond_0
    new-instance v2, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;

    invoke-direct {v2}, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;-><init>()V

    .line 278
    .local v2, "request":Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;
    iget-object v4, p0, Lipx$2;->a:Lipx;

    invoke-static {v4}, Lipx;->b(Lipx;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;->zimId:Ljava/lang/String;

    .line 279
    const-string/jumbo v4, ""

    iput-object v4, v2, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;->zimData:Ljava/lang/String;

    .line 280
    iget-object v4, p0, Lipx$2;->a:Lipx;

    invoke-static {v4}, Lipx;->c(Lipx;)Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    move-result-object v4

    invoke-static {v4}, Lipw;->a(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)Lipw;

    move-result-object v4

    sget-object v5, Lipw;->h:Ljava/lang/String;

    new-instance v6, Lipu;

    iget-object v7, p0, Lipx$2;->a:Lipx;

    invoke-static {v7}, Lipx;->b(Lipx;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lipu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lipw;->a(Ljava/lang/String;Lipu;)V

    .line 282
    iget-object v4, p0, Lipx$2;->a:Lipx;

    invoke-static {v4}, Lipx;->a(Lipx;)Lcom/alipay/biometrics/ui/widget/LoadingProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/biometrics/ui/widget/LoadingProgressDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 283
    iget-object v4, p0, Lipx$2;->a:Lipx;

    invoke-static {v4}, Lipx;->a(Lipx;)Lcom/alipay/biometrics/ui/widget/LoadingProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/biometrics/ui/widget/LoadingProgressDialog;->show()V

    .line 286
    :cond_1
    iget-object v4, p0, Lipx$2;->a:Lipx;

    invoke-static {v4}, Lipx;->f(Lipx;)Lipy;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Lipy;->a(Lcom/alipay/mobile/security/bio/api/BioResponse;Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;)V

    .line 287
    const/4 v0, 0x0

    .line 291
    .end local v2    # "request":Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;
    :cond_2
    if-eqz v0, :cond_4

    .line 292
    new-instance v3, Lcom/alipay/mobile/security/zim/api/ZIMResponse;

    invoke-direct {v3}, Lcom/alipay/mobile/security/zim/api/ZIMResponse;-><init>()V

    .line 293
    .local v3, "zimResponse":Lcom/alipay/mobile/security/zim/api/ZIMResponse;
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getResult()I

    move-result v4

    const/16 v5, 0x65

    if-eq v4, v5, :cond_3

    .line 294
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getResult()I

    move-result v4

    const/16 v5, 0xcd

    if-eq v4, v5, :cond_3

    .line 295
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getResult()I

    move-result v4

    const/16 v5, 0x64

    if-ne v4, v5, :cond_6

    .line 296
    :cond_3
    const/16 v4, 0x3e9

    iput v4, v3, Lcom/alipay/mobile/security/zim/api/ZIMResponse;->code:I

    .line 300
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getResult()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/mobile/security/zim/api/ZIMResponse;->reason:Ljava/lang/String;

    .line 301
    iget-object v4, p0, Lipx$2;->a:Lipx;

    invoke-static {v4, v3}, Lipx;->a(Lipx;Lcom/alipay/mobile/security/zim/api/ZIMResponse;)V

    .line 302
    iget-object v4, p0, Lipx$2;->a:Lipx;

    invoke-static {v4}, Lipx;->d(Lipx;)Lcom/alipay/mobile/security/zim/api/ZIMCallback;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/alipay/mobile/security/zim/api/ZIMCallback;->response(Lcom/alipay/mobile/security/zim/api/ZIMResponse;)V

    .line 304
    .end local v3    # "zimResponse":Lcom/alipay/mobile/security/zim/api/ZIMResponse;
    :cond_4
    return-void

    .line 265
    .end local v0    # "isNeedResponse":Z
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getResult()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lipv;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 298
    .restart local v0    # "isNeedResponse":Z
    .restart local v3    # "zimResponse":Lcom/alipay/mobile/security/zim/api/ZIMResponse;
    :cond_6
    const/16 v4, 0x3eb

    iput v4, v3, Lcom/alipay/mobile/security/zim/api/ZIMResponse;->code:I

    goto :goto_1
.end method
