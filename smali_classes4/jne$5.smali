.class final Ljne$5;
.super Ljava/lang/Object;
.source "DingMaHandlerV2.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljne;->a(Landroid/app/Activity;Lcom/alipay/mobile/mascanengine/MaScanResult;ZLcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Landroid/net/Uri;


# direct methods
.method constructor <init>(Ljava/util/Set;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Ljne$5;->a:Ljava/util/Set;

    iput-object p2, p0, Ljne$5;->b:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 347
    :try_start_0
    iget-object v5, p0, Ljne$5;->a:Ljava/util/Set;

    if-eqz v5, :cond_1

    iget-object v5, p0, Ljne$5;->a:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 348
    iget-object v5, p0, Ljne$5;->a:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 349
    .local v3, "key":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 352
    iget-object v6, p0, Ljne$5;->b:Landroid/net/Uri;

    invoke-virtual {v6, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, "decoded":Ljava/lang/String;
    const-string/jumbo v6, "UTF-8"

    invoke-static {v1, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 354
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 355
    invoke-static {v4}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v0

    .line 356
    .local v0, "data":Lcom/laiwang/protocol/media/MediaId;
    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaId;->getSequence()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 363
    .end local v0    # "data":Lcom/laiwang/protocol/media/MediaId;
    :goto_1
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 367
    .end local v1    # "decoded":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 368
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 370
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-object p1

    .line 361
    .restart local v1    # "decoded":Ljava/lang/String;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    :cond_2
    move-object v4, v1

    goto :goto_1

    .line 365
    .end local v1    # "decoded":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string/jumbo v5, "from"

    const-string/jumbo v6, "scan"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
