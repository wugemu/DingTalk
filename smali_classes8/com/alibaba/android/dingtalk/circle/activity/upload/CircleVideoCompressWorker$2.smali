.class final Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$2;
.super Ljava/lang/Object;
.source "CircleVideoCompressWorker.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker;->compressVideo(Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/alibaba/wukong/Callback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$2;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$2;->b:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iput-object p3, p0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$2;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$2;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$2;->e:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {p1, p2}, Lbqh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 63
    check-cast p1, Ljava/lang/String;

    .line 1066
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$2;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$2;->b:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$2;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$2;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$2;->e:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker;->access$100(Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 63
    :cond_0
    return-void
.end method
