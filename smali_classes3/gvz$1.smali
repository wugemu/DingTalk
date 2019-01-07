.class final Lgvz$1;
.super Ljava/lang/Object;
.source "ShareInnerDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgvz;->a(Landroid/content/Context;Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcma;

.field final synthetic d:Lgvz;


# direct methods
.method constructor <init>(Lgvz;Ljava/lang/String;Landroid/content/Context;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgvz;

    .prologue
    .line 71
    iput-object p1, p0, Lgvz$1;->d:Lgvz;

    iput-object p2, p0, Lgvz$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lgvz$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lgvz$1;->c:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 74
    const-string/jumbo v1, "REQUEST"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/request/Request;

    .line 76
    .local v0, "audioRequest":Lcom/alibaba/doraemon/request/Request;
    iget-object v1, p0, Lgvz$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setCacheKey(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v1

    iget-object v2, p0, Lgvz$1;->a:Ljava/lang/String;

    .line 77
    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v1

    sget-object v2, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/request/Request;->setPriority(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v1

    new-instance v2, Lgvz$1$1;

    invoke-direct {v2, p0}, Lgvz$1$1;-><init>(Lgvz$1;)V

    .line 78
    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 104
    invoke-interface {v0}, Lcom/alibaba/doraemon/request/Request;->start()V

    .line 105
    return-void
.end method
