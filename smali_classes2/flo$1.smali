.class final Lflo$1;
.super Ljava/lang/Object;
.source "AvatarUtils.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lflo$a;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lflo$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lflo$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lflo$1;->b:Lflo$a;

    iput-object p3, p0, Lflo$1;->c:Ljava/lang/String;

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
    .line 108
    return-void
.end method

.method public final onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    .locals 8
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "response"    # Lcom/alibaba/doraemon/request/Response;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 63
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v6

    if-nez v6, :cond_1

    .line 64
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v6

    new-instance v7, Lflo$1$1;

    invoke-direct {v7, p0, p2}, Lflo$1$1;-><init>(Lflo$1;Lcom/alibaba/doraemon/request/Response;)V

    invoke-virtual {v6, v7}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v4

    .line 73
    .local v4, "stream":Lcom/alibaba/doraemon/request/RequestInputStream;
    new-instance v2, Lgzt$a;

    invoke-direct {v2}, Lgzt$a;-><init>()V

    .line 74
    .local v2, "e":Lgzt$a;
    const/4 v6, 0x1

    iput-boolean v6, v2, Lgzt$a;->inJustDecodeBounds:Z

    .line 75
    iget-object v6, p0, Lflo$1;->a:Ljava/lang/String;

    iput-object v6, v2, Lgzt$a;->a:Ljava/lang/String;

    .line 77
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    const/high16 v7, 0x42400000    # 48.0f

    invoke-static {v6, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    .line 79
    .local v5, "width":I
    invoke-static {v4, v2}, Lgzt;->a(Ljava/io/InputStream;Lgzt$a;)Landroid/graphics/Bitmap;

    .line 80
    const/4 v6, 0x0

    iput-boolean v6, v2, Lgzt$a;->inJustDecodeBounds:Z

    .line 81
    iput v5, v2, Lgzt$a;->b:I

    .line 82
    iput v5, v2, Lgzt$a;->c:I

    .line 83
    invoke-static {v4, v2}, Lgzt;->a(Ljava/io/InputStream;Lgzt$a;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 84
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 85
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 87
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v6, v7, v5, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 88
    .local v1, "copyBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 89
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 91
    :cond_2
    iget-object v6, p0, Lflo$1;->b:Lflo$a;

    if-eqz v6, :cond_0

    .line 92
    iget-object v6, p0, Lflo$1;->b:Lflo$a;

    invoke-interface {v6, v1}, Lflo$a;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "copyBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "width":I
    :catch_0
    move-exception v3

    .line 95
    .local v3, "e1":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    iget-object v6, p0, Lflo$1;->c:Ljava/lang/String;

    iget-object v7, p0, Lflo$1;->b:Lflo$a;

    .line 1040
    invoke-static {v6, v7}, Lflo;->a(Ljava/lang/String;Lflo$a;)V

    goto :goto_0
.end method

.method public final onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 103
    return-void
.end method
