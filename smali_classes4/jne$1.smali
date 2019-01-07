.class final Ljne$1;
.super Lcmi;
.source "DingMaHandlerV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljne;->a(Landroid/app/Activity;Lcom/alipay/mobile/mascanengine/MaScanResult;ZLcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Ljne$1;->a:Landroid/app/Activity;

    iput-object p2, p0, Ljne$1;->b:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 277
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Ljne$1;->b:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;

    invoke-static {v0}, Ljne;->a(Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V

    .line 279
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 252
    check-cast p1, Ljava/lang/String;

    .line 1257
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1259
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1265
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1269
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    iget-object v3, p0, Ljne$1;->a:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0, v1}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    :cond_0
    iget-object v0, p0, Ljne$1;->b:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;

    invoke-static {v0}, Ljne;->a(Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V

    .line 252
    return-void

    .line 1260
    :catch_0
    move-exception v0

    .line 1261
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
