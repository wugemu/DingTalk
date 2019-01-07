.class public Lcom/taobao/taolive/GLBeautyRender;
.super Ljava/lang/Thread;
.source "GLBeautyRender.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GLBeautyRender"


# instance fields
.field private volatile beautyRunable:Z

.field private volatile taoLive:Lcom/taobao/taolive/TaoLive;


# direct methods
.method public constructor <init>(Lcom/taobao/taolive/TaoLive;)V
    .locals 4
    .param p1, "taoLive"    # Lcom/taobao/taolive/TaoLive;

    .prologue
    const/4 v3, 0x1

    .line 15
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 11
    iput-boolean v3, p0, Lcom/taobao/taolive/GLBeautyRender;->beautyRunable:Z

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/taolive/GLBeautyRender;->taoLive:Lcom/taobao/taolive/TaoLive;

    .line 16
    const-string/jumbo v0, "GLBeautyRender"

    const-string/jumbo v1, "GLBeautyRender"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    iput-object p1, p0, Lcom/taobao/taolive/GLBeautyRender;->taoLive:Lcom/taobao/taolive/TaoLive;

    .line 18
    iput-boolean v3, p0, Lcom/taobao/taolive/GLBeautyRender;->beautyRunable:Z

    .line 19
    return-void
.end method

.method public static native draw()V
.end method

.method public static native initGLInv()V
.end method

.method public static native releaseGLInv()V
.end method


# virtual methods
.method public destoryBeauty()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 22
    const-string/jumbo v0, "GLBeautyRender"

    const-string/jumbo v1, "destoryBeauty"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iput-boolean v3, p0, Lcom/taobao/taolive/GLBeautyRender;->beautyRunable:Z

    .line 24
    return-void
.end method

.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 28
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 29
    const-string/jumbo v1, "GLBeautyRender"

    const-string/jumbo v2, "initGLInv start"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-static {}, Lcom/taobao/taolive/GLBeautyRender;->initGLInv()V

    .line 31
    const-string/jumbo v1, "GLBeautyRender"

    const-string/jumbo v2, "initGLInv end"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iget-object v1, p0, Lcom/taobao/taolive/GLBeautyRender;->taoLive:Lcom/taobao/taolive/TaoLive;

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Lcom/taobao/taolive/TaoLive;->enableFacebeauty(Ljava/lang/String;)I

    .line 33
    const-string/jumbo v1, "GLBeautyRender"

    const-string/jumbo v2, "enableFacebeauty"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    :goto_0
    iget-boolean v1, p0, Lcom/taobao/taolive/GLBeautyRender;->beautyRunable:Z

    if-eqz v1, :cond_0

    .line 36
    const-wide/16 v2, 0x1e

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_1
    iget-object v1, p0, Lcom/taobao/taolive/GLBeautyRender;->taoLive:Lcom/taobao/taolive/TaoLive;

    invoke-virtual {v1}, Lcom/taobao/taolive/TaoLive;->doFacebeauty()I

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 42
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const-string/jumbo v1, "GLBeautyRender"

    const-string/jumbo v2, "disableFacebeauty start"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-object v1, p0, Lcom/taobao/taolive/GLBeautyRender;->taoLive:Lcom/taobao/taolive/TaoLive;

    invoke-virtual {v1}, Lcom/taobao/taolive/TaoLive;->disableFacebeauty()I

    .line 44
    const-string/jumbo v1, "GLBeautyRender"

    const-string/jumbo v2, "disableFacebeauty end"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-static {}, Lcom/taobao/taolive/GLBeautyRender;->releaseGLInv()V

    .line 46
    const-string/jumbo v1, "GLBeautyRender"

    const-string/jumbo v2, "releaseGLInv"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/taobao/taolive/GLBeautyRender;->taoLive:Lcom/taobao/taolive/TaoLive;

    .line 48
    return-void
.end method
