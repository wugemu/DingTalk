.class Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver$1;
.super Ljava/lang/Object;
.source "ImageMagicianImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;->onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;

.field final synthetic val$request:Lcom/alibaba/doraemon/request/Request;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;Lcom/alibaba/doraemon/request/Request;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;

    .prologue
    .line 1694
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver$1;->this$1:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver$1;->val$request:Lcom/alibaba/doraemon/request/Request;

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
    .line 1697
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver$1;->this$1:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver$1;->val$request:Lcom/alibaba/doraemon/request/Request;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$1000(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;Lcom/alibaba/doraemon/request/Request;II)V

    .line 1698
    return-void
.end method
