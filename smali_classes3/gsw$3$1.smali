.class final Lgsw$3$1;
.super Ljava/lang/Object;
.source "FaceRecordPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgsw$3;->a(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lgsw$3;


# direct methods
.method constructor <init>(Lgsw$3;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lgsw$3;

    .prologue
    .line 311
    iput-object p1, p0, Lgsw$3$1;->b:Lgsw$3;

    iput-object p2, p0, Lgsw$3$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 315
    iget-object v2, p0, Lgsw$3$1;->b:Lgsw$3;

    iget-object v2, v2, Lgsw$3;->b:Lgsw;

    .line 1048
    iget-object v2, v2, Lgsw;->d:Lgsv$b;

    .line 315
    invoke-interface {v2}, Lgsv$b;->d()Z

    move-result v2

    if-nez v2, :cond_0

    .line 316
    const-string/jumbo v2, "FaceRecord"

    const-string/jumbo v3, "FaceRecordPresenter"

    const-string/jumbo v4, "view finish, showDetectorFace ignore callback"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :goto_0
    return-void

    .line 321
    :cond_0
    :try_start_0
    iget-object v2, p0, Lgsw$3$1;->b:Lgsw$3;

    iget-object v2, v2, Lgsw$3;->b:Lgsw;

    iget-object v3, p0, Lgsw$3$1;->b:Lgsw$3;

    iget-object v3, v3, Lgsw$3;->a:Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;

    iget-object v4, p0, Lgsw$3$1;->a:Landroid/graphics/Bitmap;

    .line 2048
    invoke-virtual {v2, v3, v4}, Lgsw;->a(Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;Landroid/graphics/Bitmap;)Lgsw$a;

    move-result-object v1

    .line 322
    .local v1, "info":Lgsw$a;
    if-nez v1, :cond_1

    .line 323
    iget-object v2, p0, Lgsw$3$1;->b:Lgsw$3;

    iget-object v2, v2, Lgsw$3;->b:Lgsw;

    .line 3048
    const/4 v3, 0x0

    iput-boolean v3, v2, Lgsw;->b:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 339
    .end local v1    # "info":Lgsw$a;
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 341
    iget-object v2, p0, Lgsw$3$1;->b:Lgsw$3;

    iget-object v2, v2, Lgsw$3;->b:Lgsw;

    .line 6048
    iput-boolean v6, v2, Lgsw;->b:Z

    .line 342
    const-string/jumbo v2, "FaceRecord"

    const-string/jumbo v3, "FaceRecordPresenter"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "save face image error,"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 326
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "info":Lgsw$a;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lgsw$3$1;->b:Lgsw$3;

    iget-object v2, v2, Lgsw$3;->b:Lgsw;

    .line 4048
    iput-object v1, v2, Lgsw;->c:Lgsw$a;

    .line 328
    iget-object v2, p0, Lgsw$3$1;->b:Lgsw$3;

    iget-object v2, v2, Lgsw$3;->b:Lgsw;

    .line 5048
    iget-object v2, v2, Lgsw;->g:Landroid/os/Handler;

    .line 328
    new-instance v3, Lgsw$3$1$1;

    invoke-direct {v3, p0}, Lgsw$3$1$1;-><init>(Lgsw$3$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
