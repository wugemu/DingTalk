.class final Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$1;
.super Ljava/lang/Object;
.source "WeixinGroupShareUnit.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$1;->e:Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;

    iput-object p2, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChange(Lcom/alibaba/doraemon/request/Request;JJ)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "l"    # J
    .param p4, "l1"    # J

    .prologue
    .line 124
    return-void
.end method

.method public final onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    .locals 10
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "response"    # Lcom/alibaba/doraemon/request/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 98
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    const-string/jumbo v3, "share"

    new-array v4, v9, [Ljava/lang/String;

    const-string/jumbo v5, "wxg"

    aput-object v5, v4, v6

    const-string/jumbo v5, " download suc"

    aput-object v5, v4, v8

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v7, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v1

    .line 102
    .local v1, "stream":Lcom/alibaba/doraemon/request/RequestInputStream;
    const/4 v0, 0x0

    .line 104
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$1;->e:Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;

    iget-object v4, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$1;->a:Ljava/lang/String;

    invoke-static {v3, v1, v4}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->a(Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;Lcom/alibaba/doraemon/request/RequestInputStream;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 109
    :goto_0
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$1;->e:Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;

    iget-object v4, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$1;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$1;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$1;->d:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6, v0}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->a(Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 114
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "stream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :goto_1
    return-void

    .line 105
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "stream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :catch_0
    move-exception v2

    .line 106
    .local v2, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    const-string/jumbo v3, "share"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "wxg"

    aput-object v5, v4, v6

    const-string/jumbo v5, " decode exception:"

    aput-object v5, v4, v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v7, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "stream":Lcom/alibaba/doraemon/request/RequestInputStream;
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :cond_0
    const-string/jumbo v3, "share"

    new-array v4, v9, [Ljava/lang/String;

    const-string/jumbo v5, "wxg"

    aput-object v5, v4, v6

    const-string/jumbo v5, " download fail"

    aput-object v5, v4, v8

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v7, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$1;->e:Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;

    iget-object v4, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$1;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$1;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$1;->d:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6, v7}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->a(Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public final onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 119
    return-void
.end method
