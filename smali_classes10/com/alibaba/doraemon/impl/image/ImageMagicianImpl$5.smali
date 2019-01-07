.class Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$5;
.super Ljava/lang/Object;
.source "ImageMagicianImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->fillImage2CacheInMainThread(Landroid/view/View;Landroid/graphics/Bitmap;[BILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

.field final synthetic val$image:[B

.field final synthetic val$size:I

.field final synthetic val$url2Key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;[BILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    .prologue
    .line 2111
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$5;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$5;->val$image:[B

    iput p3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$5;->val$size:I

    iput-object p4, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$5;->val$url2Key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2114
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$5;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$600(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Lcom/alibaba/doraemon/impl/image/ImageCache;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$5;->val$image:[B

    iget v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$5;->val$size:I

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$5;->val$url2Key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/doraemon/impl/image/ImageCache;->fillCache(Ljava/lang/String;[BILjava/lang/String;)[B

    .line 2115
    return-void
.end method
