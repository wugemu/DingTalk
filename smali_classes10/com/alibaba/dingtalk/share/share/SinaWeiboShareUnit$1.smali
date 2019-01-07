.class final Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$1;
.super Ljava/lang/Object;
.source "SinaWeiboShareUnit.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$1;->e:Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;

    iput-object p2, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$1;->b:[Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChange(Lcom/alibaba/doraemon/request/Request;JJ)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "l"    # J
    .param p4, "l2"    # J

    .prologue
    .line 128
    return-void
.end method

.method public final onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    .locals 7
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "response"    # Lcom/alibaba/doraemon/request/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 109
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v1

    .line 112
    .local v1, "stream":Lcom/alibaba/doraemon/request/RequestInputStream;
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$1;->e:Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;

    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$1;->a:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;->a(Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;Lcom/alibaba/doraemon/request/RequestInputStream;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 113
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$1;->e:Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;

    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$1;->b:[Ljava/lang/String;

    aget-object v3, v3, v5

    iget-object v4, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$1;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$1;->d:Ljava/lang/String;

    invoke-static {v2, v0, v3, v4, v5}, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;->a(Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "stream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$1;->e:Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$1;->b:[Ljava/lang/String;

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$1;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$1;->d:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;->a(Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 123
    return-void
.end method
