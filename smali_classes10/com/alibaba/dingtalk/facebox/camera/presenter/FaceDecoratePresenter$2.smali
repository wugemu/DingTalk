.class final Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$2;
.super Ljava/lang/Object;
.source "FaceDecoratePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;->a(Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcma;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcma;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$2;->b:Lcma;

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
    .line 102
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$2;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 103
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 104
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$2;->b:Lcma;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$2;->b:Lcma;

    const-string/jumbo v2, "-1"

    const-string/jumbo v3, "getDecorateDrawable is null"

    invoke-interface {v1, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$2;->b:Lcma;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$2;->b:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method
