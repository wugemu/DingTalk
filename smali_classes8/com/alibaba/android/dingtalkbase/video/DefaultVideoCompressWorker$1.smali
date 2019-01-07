.class final Lcom/alibaba/android/dingtalkbase/video/DefaultVideoCompressWorker$1;
.super Ljava/lang/Object;
.source "DefaultVideoCompressWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/video/DefaultVideoCompressWorker;->compress(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

.field final synthetic c:Lcom/alibaba/android/dingtalkbase/video/DefaultVideoCompressWorker;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/video/DefaultVideoCompressWorker;Lcom/alibaba/wukong/Callback;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/video/DefaultVideoCompressWorker;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/video/DefaultVideoCompressWorker$1;->c:Lcom/alibaba/android/dingtalkbase/video/DefaultVideoCompressWorker;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/video/DefaultVideoCompressWorker$1;->a:Lcom/alibaba/wukong/Callback;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkbase/video/DefaultVideoCompressWorker$1;->b:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/video/DefaultVideoCompressWorker$1;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/video/DefaultVideoCompressWorker$1;->a:Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/video/DefaultVideoCompressWorker$1;->b:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 29
    :cond_0
    return-void
.end method
