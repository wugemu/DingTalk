.class Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver$2;
.super Ljava/lang/Object;
.source "ImageMagicianImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;->onProgressChange(Lcom/alibaba/doraemon/request/Request;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;

.field final synthetic val$downloadSize:J

.field final synthetic val$request:Lcom/alibaba/doraemon/request/Request;

.field final synthetic val$totalSize:J


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;JJLcom/alibaba/doraemon/request/Request;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;

    .prologue
    .line 1705
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver$2;->this$1:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;

    iput-wide p2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver$2;->val$downloadSize:J

    iput-wide p4, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver$2;->val$totalSize:J

    iput-object p6, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver$2;->val$request:Lcom/alibaba/doraemon/request/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1708
    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver$2;->val$downloadSize:J

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    long-to-float v1, v2

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver$2;->val$totalSize:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 1709
    .local v0, "progress":I
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver$2;->this$1:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;

    iget-object v1, v1, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver$2;->val$request:Lcom/alibaba/doraemon/request/Request;

    invoke-static {v1, v2, v0}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$1100(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;Lcom/alibaba/doraemon/request/Request;I)V

    .line 1710
    return-void
.end method
