.class Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener$1;
.super Ljava/lang/Object;
.source "ImageMagicianImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener;

    .prologue
    .line 1364
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener$1;->this$1:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1368
    const-string/jumbo v1, "REQUEST"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/request/Request;

    .line 1369
    .local v0, "request":Lcom/alibaba/doraemon/request/Request;
    if-eqz v0, :cond_0

    .line 1370
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener$1;->this$1:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener;->access$400(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->addReqest2Group(Ljava/lang/String;)V

    .line 1371
    invoke-interface {v0}, Lcom/alibaba/doraemon/request/Request;->resumeGroupRequest()V

    .line 1373
    :cond_0
    return-void
.end method
