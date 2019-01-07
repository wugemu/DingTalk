.class final Leke$1;
.super Ljava/lang/Object;
.source "ApplicationImageDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leke;->decode(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leke;


# direct methods
.method constructor <init>(Leke;)V
    .locals 0
    .param p1, "this$0"    # Leke;

    .prologue
    .line 86
    iput-object p1, p0, Leke$1;->a:Leke;

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
    .line 89
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 90
    .local v0, "magician":Lcom/alibaba/doraemon/image/ImageMagician;
    if-eqz v0, :cond_0

    .line 91
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->clearMemoryCache(F)V

    .line 93
    :cond_0
    return-void
.end method
