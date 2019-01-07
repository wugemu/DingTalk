.class final Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2$5;
.super Ljava/lang/Object;
.source "FaceBoxImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2$5;->a:Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2$5;->a:Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;->a:Lgrt;

    invoke-interface {v0}, Lgrt;->a()V

    .line 246
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2$5;->a:Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;->b:Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2$5;->a:Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;->b:Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->recycle()V

    .line 249
    :cond_0
    return-void
.end method
