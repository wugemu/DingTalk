.class final Lhbb$1;
.super Ljava/lang/Object;
.source "PreDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhbb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lhbb$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lhbb$1;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lhbb$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-static {}, Lhbb;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "fillImage2MemoryCache->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lhbb$1;->a:Ljava/lang/String;

    invoke-static {v2}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lhbb;->b()Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    iget-object v1, p0, Lhbb$1;->b:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v4, p0, Lhbb$1;->c:Ljava/lang/String;

    move v5, v3

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/image/ImageMagician;->fillImage2MemoryCache(Landroid/graphics/Bitmap;[BILjava/lang/String;I)V

    .line 80
    invoke-static {}, Lhbb;->b()Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    iget-object v1, p0, Lhbb$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lhbb$1;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->cloneBitmpaInCache(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    return-void
.end method
