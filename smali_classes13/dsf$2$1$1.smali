.class final Ldsf$2$1$1;
.super Ljava/lang/Object;
.source "VideoPlayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldsf$2$1;->onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/doraemon/request/Response;

.field final synthetic b:Ldsf$2$1;


# direct methods
.method constructor <init>(Ldsf$2$1;Lcom/alibaba/doraemon/request/Response;)V
    .locals 0
    .param p1, "this$2"    # Ldsf$2$1;

    .prologue
    .line 239
    iput-object p1, p0, Ldsf$2$1$1;->b:Ldsf$2$1;

    iput-object p2, p0, Ldsf$2$1$1;->a:Lcom/alibaba/doraemon/request/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 242
    iget-object v0, p0, Ldsf$2$1$1;->a:Lcom/alibaba/doraemon/request/Response;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Ldsf$2$1$1;->b:Ldsf$2$1;

    iget-object v0, v0, Ldsf$2$1;->a:Ldsf$2;

    iget-object v0, v0, Ldsf$2;->e:Ldsf$a;

    const-string/jumbo v1, "500"

    invoke-interface {v0, v1, v2}, Ldsf$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Ldsf$2$1$1;->b:Ldsf$2$1;

    iget-object v0, v0, Ldsf$2$1;->a:Ldsf$2;

    iget-object v0, v0, Ldsf$2;->e:Ldsf$a;

    const-string/jumbo v1, "40008"

    invoke-interface {v0, v1, v2}, Ldsf$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
