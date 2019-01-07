.class final Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1$1;
.super Ljava/lang/Object;
.source "FaceDecoratePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1$1;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    .line 1069
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1$1;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1;

    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1070
    if-eqz v0, :cond_0

    .line 1071
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1$1;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1;

    iget-object v1, v1, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1;->b:Lcma;

    if-eqz v1, :cond_0

    .line 1072
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1$1;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1;

    iget-object v1, v1, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1;->b:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 66
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1$1;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1;

    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1;->b:Lcma;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1$1;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1;

    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 79
    return-void
.end method
