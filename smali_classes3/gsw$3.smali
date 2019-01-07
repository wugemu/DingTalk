.class final Lgsw$3;
.super Ljava/lang/Object;
.source "FaceRecordPresenter.java"

# interfaces
.implements Lgsm$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgsw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;

.field final synthetic b:Lgsw;


# direct methods
.method constructor <init>(Lgsw;Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;)V
    .locals 0
    .param p1, "this$0"    # Lgsw;

    .prologue
    .line 306
    iput-object p1, p0, Lgsw$3;->b:Lgsw;

    iput-object p2, p0, Lgsw$3;->a:Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "beautyBitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 310
    iget-object v0, p0, Lgsw$3;->b:Lgsw;

    .line 1048
    iget-object v0, v0, Lgsw;->d:Lgsv$b;

    .line 310
    const-string/jumbo v1, "face_box_record_time_track_face_recorded"

    invoke-interface {v0, v1}, Lgsv$b;->b(Ljava/lang/String;)V

    .line 311
    const-string/jumbo v0, "FaceRecordPresenter"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lgsw$3$1;

    invoke-direct {v1, p0, p1}, Lgsw$3$1;-><init>(Lgsw$3;Landroid/graphics/Bitmap;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 346
    return-void
.end method
