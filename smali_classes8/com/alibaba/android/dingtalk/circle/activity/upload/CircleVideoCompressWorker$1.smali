.class final Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$1;
.super Ljava/lang/Object;
.source "CircleVideoCompressWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker;->compress(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/alibaba/wukong/Callback;

.field final synthetic f:Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker;Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$1;->f:Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$1;->b:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iput-object p4, p0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$1;->e:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$1;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$1;->b:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$1;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$1;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$1;->e:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker;->access$000(Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 36
    return-void
.end method
