.class final Lflj$4$1;
.super Ljava/lang/Object;
.source "ManagerOrgCustomizePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflj$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/doraemon/image/ImageMagician;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lflj$4;


# direct methods
.method constructor <init>(Lflj$4;Lcom/alibaba/doraemon/image/ImageMagician;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lflj$4;

    .prologue
    .line 289
    iput-object p1, p0, Lflj$4$1;->e:Lflj$4;

    iput-object p2, p0, Lflj$4$1;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object p3, p0, Lflj$4$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lflj$4$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lflj$4$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 292
    iget-object v0, p0, Lflj$4$1;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lflj$4$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lflj$4$1;->e:Lflj$4;

    iget-object v2, v2, Lflj$4;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->fillImage2Cache(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lflj$4$1$1;

    invoke-direct {v1, p0}, Lflj$4$1$1;-><init>(Lflj$4$1;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 321
    iget-object v0, p0, Lflj$4$1;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lflj$4$1;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->removeImageCache(Ljava/lang/String;)V

    .line 322
    return-void
.end method
