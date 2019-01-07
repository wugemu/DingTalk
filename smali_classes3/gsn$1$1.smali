.class final Lgsn$1$1;
.super Ljava/lang/Object;
.source "AlipayFaceDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgsn$1;->onFrameDetected(Lcom/alipay/mobile/security/bio/face/api/APFDFrameFaceDetail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;

.field final synthetic c:Lgsn$1;


# direct methods
.method constructor <init>(Lgsn$1;ILcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;)V
    .locals 0
    .param p1, "this$1"    # Lgsn$1;

    .prologue
    .line 262
    iput-object p1, p0, Lgsn$1$1;->c:Lgsn$1;

    iput p2, p0, Lgsn$1$1;->a:I

    iput-object p3, p0, Lgsn$1$1;->b:Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 267
    iget-object v0, p0, Lgsn$1$1;->c:Lgsn$1;

    iget-object v0, v0, Lgsn$1;->a:Lgsn;

    iget-object v0, v0, Lgsn;->s:Lgso$a;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lgsn$1$1;->c:Lgsn$1;

    iget-object v0, v0, Lgsn$1;->a:Lgsn;

    iget-object v0, v0, Lgsn;->s:Lgso$a;

    iget v1, p0, Lgsn$1$1;->a:I

    iget-object v2, p0, Lgsn$1$1;->b:Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;

    invoke-interface {v0, v1, v2}, Lgso$a;->a(ILcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;)V

    .line 270
    :cond_0
    return-void
.end method
