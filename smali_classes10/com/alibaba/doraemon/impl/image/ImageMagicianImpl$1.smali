.class Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$1;
.super Ljava/lang/Object;
.source "ImageMagicianImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$1;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$1;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$000(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->forceGC(J)V

    .line 123
    return-void
.end method
