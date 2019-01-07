.class final Lcom/alibaba/android/dingtalkim/video/VideoCompressWorkImpl$1;
.super Ljava/lang/Object;
.source "VideoCompressWorkImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/video/VideoCompressWorkImpl;->compress(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

.field final synthetic d:Landroid/app/Activity;

.field final synthetic e:Lcom/alibaba/wukong/Callback;

.field final synthetic f:Lcom/alibaba/android/dingtalkim/video/VideoCompressWorkImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/video/VideoCompressWorkImpl;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/video/VideoCompressWorkImpl;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/VideoCompressWorkImpl$1;->f:Lcom/alibaba/android/dingtalkim/video/VideoCompressWorkImpl;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/video/VideoCompressWorkImpl$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/video/VideoCompressWorkImpl$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/video/VideoCompressWorkImpl$1;->c:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iput-object p5, p0, Lcom/alibaba/android/dingtalkim/video/VideoCompressWorkImpl$1;->d:Landroid/app/Activity;

    iput-object p6, p0, Lcom/alibaba/android/dingtalkim/video/VideoCompressWorkImpl$1;->e:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 28
    new-instance v0, Lcom/alibaba/android/dingtalkim/video/VideoExtendObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/video/VideoExtendObject;-><init>()V

    .line 29
    .local v0, "videoExtendObject":Lcom/alibaba/android/dingtalkim/video/VideoExtendObject;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/video/VideoCompressWorkImpl$1;->a:Ljava/lang/String;

    invoke-static {v2}, Lebj;->d(Ljava/lang/String;)Lebq;

    move-result-object v1

    .line 30
    .local v1, "videoInfo":Lebq;
    iget-wide v2, v1, Lebq;->a:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/video/VideoExtendObject;->duration:J

    .line 31
    iget v2, v1, Lebq;->b:I

    iput v2, v0, Lcom/alibaba/android/dingtalkim/video/VideoExtendObject;->width:I

    .line 32
    iget v2, v1, Lebq;->c:I

    iput v2, v0, Lcom/alibaba/android/dingtalkim/video/VideoExtendObject;->height:I

    .line 33
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/video/VideoCompressWorkImpl$1;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/video/VideoExtendObject;->picUrl:Ljava/lang/String;

    .line 34
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/video/VideoCompressWorkImpl$1;->c:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iput-object v0, v2, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    .line 35
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/video/VideoCompressWorkImpl$1;->d:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 36
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/video/VideoCompressWorkImpl$1;->d:Landroid/app/Activity;

    new-instance v3, Lcom/alibaba/android/dingtalkim/video/VideoCompressWorkImpl$1$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/video/VideoCompressWorkImpl$1$1;-><init>(Lcom/alibaba/android/dingtalkim/video/VideoCompressWorkImpl$1;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 45
    :cond_0
    return-void
.end method
