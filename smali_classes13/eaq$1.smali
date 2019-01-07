.class final Leaq$1;
.super Ljava/lang/Object;
.source "GroupRingDownload.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leaq;->a(Landroid/content/Context;Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcma;

.field final synthetic d:Leaq;


# direct methods
.method constructor <init>(Leaq;Landroid/content/Context;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Leaq;

    .prologue
    .line 83
    iput-object p1, p0, Leaq$1;->d:Leaq;

    iput-object p2, p0, Leaq$1;->a:Landroid/content/Context;

    iput-object p3, p0, Leaq$1;->b:Ljava/lang/String;

    iput-object p4, p0, Leaq$1;->c:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    iget-object v3, p0, Leaq$1;->d:Leaq;

    iget-object v4, p0, Leaq$1;->a:Landroid/content/Context;

    iget-object v5, p0, Leaq$1;->b:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Leaq;->a(Leaq;Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 88
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "destPath":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    iget-object v3, p0, Leaq$1;->d:Leaq;

    iget-object v4, p0, Leaq$1;->c:Lcma;

    invoke-static {v3, v4, v1}, Leaq;->a(Leaq;Lcma;Ljava/lang/Object;)V

    .line 127
    .end local v1    # "destPath":Ljava/lang/String;
    :goto_0
    return-void

    .line 96
    :cond_0
    const-string/jumbo v3, "REQUEST"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/request/Request;

    .line 98
    .local v0, "audioRequest":Lcom/alibaba/doraemon/request/Request;
    iget-object v3, p0, Leaq$1;->b:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/request/Request;->setCacheKey(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v3

    iget-object v4, p0, Leaq$1;->b:Ljava/lang/String;

    .line 99
    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v3

    sget-object v4, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/request/Request;->setPriority(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v3

    new-instance v4, Leaq$1$1;

    invoke-direct {v4, p0}, Leaq$1$1;-><init>(Leaq$1;)V

    .line 100
    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 126
    invoke-interface {v0}, Lcom/alibaba/doraemon/request/Request;->start()V

    goto :goto_0
.end method
