.class final Ldsc$1;
.super Ljava/lang/Object;
.source "ShareDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldsc;->a(Landroid/content/Context;Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcma;

.field final synthetic d:Ldsc;


# direct methods
.method constructor <init>(Ldsc;Ljava/lang/String;Landroid/content/Context;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldsc;

    .prologue
    .line 73
    iput-object p1, p0, Ldsc$1;->d:Ldsc;

    iput-object p2, p0, Ldsc$1;->a:Ljava/lang/String;

    iput-object p3, p0, Ldsc$1;->b:Landroid/content/Context;

    iput-object p4, p0, Ldsc$1;->c:Lcma;

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
    .line 76
    const-string/jumbo v1, "REQUEST"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/request/Request;

    .line 78
    .local v0, "audioRequest":Lcom/alibaba/doraemon/request/Request;
    iget-object v1, p0, Ldsc$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setCacheKey(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v1

    iget-object v2, p0, Ldsc$1;->a:Ljava/lang/String;

    .line 79
    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v1

    sget-object v2, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/request/Request;->setPriority(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v1

    new-instance v2, Ldsc$1$1;

    invoke-direct {v2, p0}, Ldsc$1$1;-><init>(Ldsc$1;)V

    .line 80
    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 106
    invoke-interface {v0}, Lcom/alibaba/doraemon/request/Request;->start()V

    .line 107
    return-void
.end method
