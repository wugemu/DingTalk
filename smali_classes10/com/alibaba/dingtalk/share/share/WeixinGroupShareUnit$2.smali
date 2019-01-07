.class final Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2;
.super Ljava/lang/Object;
.source "WeixinGroupShareUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2;->e:Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;

    iput-object p2, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 139
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 141
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2;->a:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    :cond_0
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2;->e:Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;

    invoke-static {v3}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->a(Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 155
    .local v1, "compressedBitmap":Landroid/graphics/Bitmap;
    :goto_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x50

    invoke-virtual {v1, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 156
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2$1;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2$1;-><init>(Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2;Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 162
    return-void

    .line 144
    .end local v1    # "compressedBitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2;->a:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/alibaba/doraemon/image/utils/BitmapUtil;->getSizeInBytes(Landroid/graphics/Bitmap;)I

    move-result v3

    const v4, 0x8c00

    if-le v3, v4, :cond_2

    .line 146
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2;->a:Landroid/graphics/Bitmap;

    const/16 v4, 0x96

    const/16 v5, 0x96

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1    # "compressedBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 147
    .end local v1    # "compressedBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 148
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v3, "share"

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "wxg"

    aput-object v7, v5, v6

    const-string/jumbo v6, " compressBitmap exception:"

    aput-object v6, v5, v8

    const/4 v6, 0x2

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2;->e:Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;

    invoke-static {v3}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;->a(Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 150
    .restart local v1    # "compressedBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 152
    .end local v1    # "compressedBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit$2;->a:Landroid/graphics/Bitmap;

    .restart local v1    # "compressedBitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method
