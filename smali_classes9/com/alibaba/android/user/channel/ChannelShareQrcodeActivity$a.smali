.class final Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;
.super Ljava/lang/Object;
.source "ChannelShareQrcodeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "activity"    # Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-object p2, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;->a:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    .line 337
    iput-object p1, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;->b:Ljava/lang/String;

    .line 338
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 342
    iget-object v5, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;->a:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    if-eqz v5, :cond_0

    .line 343
    const/4 v4, 0x0

    .line 345
    .local v4, "qrcodeBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;->b:Ljava/lang/String;

    const/16 v6, 0x21c

    .line 348
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lezg$e;->group_qrcode_color:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 349
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lezg$e;->group_qrcode_bg_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 345
    invoke-static {v5, v6, v7, v8}, Lixg;->a(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 365
    :goto_0
    move-object v2, v4

    .line 366
    .local v2, "finalQrcodeBitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v5

    new-instance v6, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a$1;

    invoke-direct {v6, p0, v2}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a$1;-><init>(Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 385
    .end local v2    # "finalQrcodeBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "qrcodeBitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void

    .line 351
    .restart local v4    # "qrcodeBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v5

    const-string/jumbo v5, "IMAGE"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 352
    .local v3, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    const-wide/16 v6, 0x0

    invoke-interface {v3, v6, v7}, Lcom/alibaba/doraemon/image/ImageMagician;->clearMemoryCache(J)V

    .line 354
    :try_start_1
    iget-object v5, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$a;->b:Ljava/lang/String;

    const/16 v6, 0x21c

    .line 357
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lezg$e;->group_qrcode_color:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 358
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lezg$e;->group_qrcode_bg_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 354
    invoke-static {v5, v6, v7, v8}, Lixg;->a(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Lcom/google/zxing/WriterException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_0

    .line 359
    :catch_1
    move-exception v1

    .line 360
    .local v1, "ex":Lcom/google/zxing/WriterException;
    invoke-static {}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/zxing/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 362
    .end local v1    # "ex":Lcom/google/zxing/WriterException;
    .end local v3    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    :catch_2
    move-exception v0

    .line 363
    .local v0, "e":Lcom/google/zxing/WriterException;
    invoke-static {}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/zxing/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
