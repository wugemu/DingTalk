.class Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;
.super Landroid/os/AsyncTask;
.source "IjkMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->enableFaceDetect(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltv/danmaku/ijk/media/player/misc/IFaceDetectListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

.field final synthetic val$classifierPath:Ljava/lang/String;

.field final synthetic val$enable:Z

.field final synthetic val$listener:Ltv/danmaku/ijk/media/player/misc/IFaceDetectListener;

.field final synthetic val$modelNormalPath:Ljava/lang/String;

.field final synthetic val$modelPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltv/danmaku/ijk/media/player/misc/IFaceDetectListener;)V
    .locals 0
    .param p1, "this$0"    # Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .prologue
    .line 995
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iput-boolean p2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;->val$enable:Z

    iput-object p3, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;->val$modelPath:Ljava/lang/String;

    iput-object p4, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;->val$modelNormalPath:Ljava/lang/String;

    iput-object p5, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;->val$classifierPath:Ljava/lang/String;

    iput-object p6, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;->val$listener:Ltv/danmaku/ijk/media/player/misc/IFaceDetectListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 995
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 999
    :try_start_0
    invoke-static {}, Landroid/taobao/atlas/framework/Atlas;->getInstance()Landroid/taobao/atlas/framework/Atlas;

    move-result-object v0

    invoke-static {}, Landroid/taobao/atlas/framework/Atlas;->getInstance()Landroid/taobao/atlas/framework/Atlas;

    move-result-object v1

    const-string/jumbo v2, "com.taobao.taobao.home"

    invoke-virtual {v1, v2}, Landroid/taobao/atlas/framework/Atlas;->getBundleClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v1

    const-string/jumbo v2, "com.taobao.tao.update"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/taobao/atlas/framework/Atlas;->requestRuntimeDependency(Ljava/lang/ClassLoader;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1002
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 995
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 7
    .param p1, "aVoid"    # Ljava/lang/Void;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1008
    :try_start_0
    invoke-static {}, Lcom/taobao/update/lightapk/BundleDownLoadManager;->obtain()Lcom/taobao/update/lightapk/BundleDownLoadManager;

    move-result-object v6

    .line 1009
    .local v6, "manager":Lcom/taobao/update/lightapk/BundleDownLoadManager;
    const-string/jumbo v0, "alg.taobao.com.inovation_alg"

    invoke-virtual {v6, v0}, Lcom/taobao/update/lightapk/BundleDownLoadManager;->isRemoteBundleInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-boolean v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;->val$enable:Z

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;->val$modelPath:Ljava/lang/String;

    iget-object v3, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;->val$modelNormalPath:Ljava/lang/String;

    iget-object v4, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;->val$classifierPath:Ljava/lang/String;

    iget-object v5, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;->val$listener:Ltv/danmaku/ijk/media/player/misc/IFaceDetectListener;

    invoke-static/range {v0 .. v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$700(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltv/danmaku/ijk/media/player/misc/IFaceDetectListener;)V

    .line 1031
    .end local v6    # "manager":Lcom/taobao/update/lightapk/BundleDownLoadManager;
    :goto_0
    return-void

    .line 1012
    .restart local v6    # "manager":Lcom/taobao/update/lightapk/BundleDownLoadManager;
    :cond_0
    const-string/jumbo v0, "alg.taobao.com.inovation_alg"

    new-instance v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1$1;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1$1;-><init>(Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;)V

    invoke-virtual {v6, v0, v1}, Lcom/taobao/update/lightapk/BundleDownLoadManager;->fetchRemoteBundle(Ljava/lang/String;Lcom/taobao/update/lightapk/BundleDownLoadManager$RequestListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v6    # "manager":Lcom/taobao/update/lightapk/BundleDownLoadManager;
    :catch_0
    move-exception v0

    goto :goto_0
.end method
