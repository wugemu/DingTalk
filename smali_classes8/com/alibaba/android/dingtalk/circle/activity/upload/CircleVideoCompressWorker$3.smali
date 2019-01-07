.class final Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$3;
.super Ljava/lang/Object;
.source "CircleVideoCompressWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker;->doAfterCompress(Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/Callback;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$3;->a:Lcom/alibaba/wukong/Callback;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$3;->b:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

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
    .line 92
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$3;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$3;->a:Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$3;->b:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 95
    :cond_0
    return-void
.end method
