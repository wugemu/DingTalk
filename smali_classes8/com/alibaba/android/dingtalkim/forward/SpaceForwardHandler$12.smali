.class final Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$12;
.super Ljava/lang/Object;
.source "SpaceForwardHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->sendCryptImageMessageAfterGetSize(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ldiz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ldiz;

.field final synthetic d:Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;ILjava/util/Map;Ldiz;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$12;->d:Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;

    iput p2, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$12;->a:I

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$12;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$12;->c:Ldiz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 521
    check-cast p1, Ljava/lang/String;

    .line 1525
    const/16 v3, 0x1e0

    .line 1526
    const/16 v4, 0x2d0

    .line 1528
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1530
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1531
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1532
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1535
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1536
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1544
    :cond_0
    :goto_0
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    .line 1545
    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    iget v2, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$12;->a:I

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$12;->b:Ljava/util/Map;

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wukong/im/MessageBuilder;->buildEncryptImageMessage(IIIILjava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 1547
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$12;->c:Ldiz;

    .line 2500
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;)V

    .line 521
    return-void

    .line 1539
    :catch_0
    move-exception v0

    move v2, v3

    .line 1540
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v3, v2

    goto :goto_0

    .line 1539
    :catch_1
    move-exception v0

    move v2, v3

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 558
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 553
    return-void
.end method
