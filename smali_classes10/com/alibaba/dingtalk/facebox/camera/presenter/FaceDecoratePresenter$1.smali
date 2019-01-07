.class public final Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1;
.super Ljava/lang/Object;
.source "FaceDecoratePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcma;

.field final synthetic c:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;


# direct methods
.method public constructor <init>(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1;->c:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;

    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 60
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 61
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1;->b:Lcma;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1;->b:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1;->c:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;

    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1;->a:Ljava/lang/String;

    new-instance v3, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1$1;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1$1;-><init>(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$1;)V

    invoke-static {v1, v2, v3}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;->a(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method
