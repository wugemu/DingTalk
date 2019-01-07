.class final Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2$2;
.super Ljava/lang/Object;
.source "FaceBoxImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2$2;->b:Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;

    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 202
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2$2;->b:Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;->a:Lgrt;

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lgrt;->a(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2$2;->b:Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;->b:Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2$2;->b:Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;->b:Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->recycle()V

    .line 207
    :cond_0
    return-void
.end method
