.class final Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$3;
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
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lbox;

.field final synthetic c:Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;[Ljava/lang/String;Lbox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$3;->c:Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$3;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$3;->b:Lbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 314
    invoke-static {}, Lbpi;->e()Lbpi;

    move-result-object v0

    const-string/jumbo v1, "url = ?"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$3;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbpi;->e(Ljava/lang/String;[Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$3;->b:Lbox;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$3;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbox;->release(Ljava/lang/Object;)V

    .line 316
    return-void
.end method
