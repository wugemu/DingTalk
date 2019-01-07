.class final Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$10;
.super Ljava/lang/Object;
.source "SpaceForwardHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->sendEncryptedImage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ldiz;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Ldiz;

.field final synthetic e:Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;Ljava/lang/String;Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;Ljava/util/Map;Ldiz;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$10;->e:Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$10;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$10;->b:Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$10;->c:Ljava/util/Map;

    iput-object p5, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$10;->d:Ldiz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 441
    const-string/jumbo v7, "IMAGE"

    invoke-static {v7}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 442
    .local v2, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$10;->a:Ljava/lang/String;

    invoke-interface {v2, v7}, Lcom/alibaba/doraemon/image/ImageMagician;->getImageCache(Ljava/lang/String;)Lcom/alibaba/doraemon/image/ImageInputStream;

    move-result-object v4

    .line 444
    .local v4, "inputStream":Lcom/alibaba/doraemon/image/ImageInputStream;
    const/4 v6, 0x0

    .line 445
    .local v6, "width":I
    const/4 v1, 0x0

    .line 446
    .local v1, "height":I
    if-eqz v4, :cond_0

    .line 447
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 448
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 449
    invoke-static {v4, v10, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 451
    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 452
    iget v1, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 455
    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    const-class v7, Lcom/alibaba/wukong/im/MessageBuilder;

    .line 456
    invoke-static {v7}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/im/MessageBuilder;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$10;->b:Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$10;->c:Ljava/util/Map;

    invoke-interface {v7, v8, v6, v1, v9}, Lcom/alibaba/wukong/im/MessageBuilder;->buildEncryptImageContent(Lcom/alibaba/wukong/im/MessageContent;IILjava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    move-result-object v0

    .line 458
    .local v0, "content":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    if-eqz v0, :cond_1

    .line 459
    invoke-interface {v0, v10}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->setThumbId(Ljava/lang/String;)V

    .line 461
    :cond_1
    const-class v7, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v7}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v7, v0}, Lcom/alibaba/wukong/im/MessageBuilder;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v3

    .line 462
    .local v3, "imageMessage":Lcom/alibaba/wukong/im/Message;
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$10;->d:Ldiz;

    const/4 v8, 0x0

    .line 2500
    invoke-virtual {v7, v3, v8, v10}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;)V

    .line 463
    return-void
.end method
