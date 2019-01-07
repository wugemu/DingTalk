.class final Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$2;
.super Ljava/lang/Object;
.source "CircleUploadQueueTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lifv;

.field final synthetic b:Lifx;

.field final synthetic c:Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;Lifv;Lifx;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$2;->c:Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$2;->a:Lifv;

    iput-object p3, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$2;->b:Lifx;

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
    .line 287
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$2;->a:Lifv;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$2;->b:Lifx;

    invoke-interface {v0, v1}, Lifv;->onSuccess(Ljava/lang/Object;)V

    .line 288
    return-void
.end method
