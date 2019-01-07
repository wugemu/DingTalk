.class final Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2;
.super Ljava/lang/Object;
.source "WeixinFriendShareUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;
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

.field final synthetic e:Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2;->e:Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;

    iput-object p2, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 154
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 157
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2;->a:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 158
    :cond_0
    iget-object v4, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2;->e:Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;

    invoke-static {v4}, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;->a(Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 171
    .local v1, "compressedBitmap":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 172
    iget-object v4, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2;->e:Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;

    invoke-static {v4}, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;->a(Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 174
    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x50

    invoke-virtual {v1, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 181
    .end local v1    # "compressedBitmap":Landroid/graphics/Bitmap;
    :goto_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2$1;

    invoke-direct {v5, p0, v0}, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2$1;-><init>(Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2;Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v4, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 193
    return-void

    .line 160
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2;->a:Landroid/graphics/Bitmap;

    invoke-static {v4}, Lcom/alibaba/doraemon/image/utils/BitmapUtil;->getSizeInBytes(Landroid/graphics/Bitmap;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    const v5, 0x8c00

    if-le v4, v5, :cond_3

    .line 162
    :try_start_2
    iget-object v4, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2;->a:Landroid/graphics/Bitmap;

    const/16 v5, 0x96

    const/16 v6, 0x96

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .restart local v1    # "compressedBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 163
    .end local v1    # "compressedBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 164
    .local v3, "throwable":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v4, "share"

    const/4 v5, 0x0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "wxf"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, " compressBitmap exception:"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v4, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2;->e:Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;

    invoke-static {v4}, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;->a(Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 166
    .restart local v1    # "compressedBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 168
    .end local v1    # "compressedBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :cond_3
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$2;->a:Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .restart local v1    # "compressedBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 175
    .end local v1    # "compressedBitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v2

    .line 176
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    const-string/jumbo v4, "share"

    const/4 v5, 0x0

    new-array v6, v12, [Ljava/lang/String;

    const-string/jumbo v7, "wxf"

    aput-object v7, v6, v10

    const-string/jumbo v7, " compressBitmap exception:"

    aput-object v7, v6, v9

    .line 178
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 177
    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
