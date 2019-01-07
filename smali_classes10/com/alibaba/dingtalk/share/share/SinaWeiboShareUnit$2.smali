.class final Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2;
.super Ljava/lang/Object;
.source "SinaWeiboShareUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;
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

.field final synthetic e:Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2;->e:Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;

    iput-object p2, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2;->d:Ljava/lang/String;

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

    .line 150
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2;->a:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 151
    :cond_0
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2;->e:Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;

    invoke-static {v3}, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;->a(Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 167
    .local v0, "compressedBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    move-object v1, v0

    .line 168
    .local v1, "finalCompressedBitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2$1;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2$1;-><init>(Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 174
    return-void

    .line 153
    .end local v0    # "compressedBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "finalCompressedBitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2;->a:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/alibaba/doraemon/image/utils/BitmapUtil;->getSizeInBytes(Landroid/graphics/Bitmap;)I

    move-result v3

    const v4, 0x8000

    if-le v3, v4, :cond_3

    .line 155
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2;->a:Landroid/graphics/Bitmap;

    const/16 v4, 0x96

    const/16 v5, 0x96

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 156
    .restart local v0    # "compressedBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2;->a:Landroid/graphics/Bitmap;

    if-eq v0, v3, :cond_1

    .line 157
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    .end local v0    # "compressedBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 160
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v3, "share"

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "wb"

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

    .line 161
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2;->e:Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;

    invoke-static {v3}, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;->a(Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 162
    .restart local v0    # "compressedBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 164
    .end local v0    # "compressedBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2;->a:Landroid/graphics/Bitmap;

    .restart local v0    # "compressedBitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method
