.class final Lhah$3;
.super Ljava/lang/Object;
.source "Compressor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhah;


# direct methods
.method constructor <init>(Lhah;)V
    .locals 0
    .param p1, "this$0"    # Lhah;

    .prologue
    .line 754
    iput-object p1, p0, Lhah$3;->a:Lhah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 757
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 758
    .local v0, "magician":Lcom/alibaba/doraemon/image/ImageMagician;
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->clearMemoryCache(F)V

    .line 759
    return-void
.end method
