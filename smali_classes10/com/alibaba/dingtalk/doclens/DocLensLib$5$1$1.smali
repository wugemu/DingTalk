.class final Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1$1;
.super Ljava/lang/Object;
.source "DocLensLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1;ILjava/io/File;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1$1;->c:Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1;

    iput p2, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1$1;->a:I

    iput-object p3, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1$1;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 265
    iget v0, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1$1;->a:I

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1$1;->c:Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1;

    iget-object v0, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$5;

    iget-object v0, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$5;->a:Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1$1;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->setCorrectDocPath(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1$1;->c:Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1;

    iget-object v0, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$5;

    iget-object v0, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$5;->b:Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1$1;->c:Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1;

    iget-object v1, v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$5;

    iget-object v1, v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$5;->a:Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 272
    :goto_0
    return-void

    .line 269
    :cond_0
    const-string/jumbo v0, "DocLensLib"

    const-string/jumbo v1, "correctionByQuad fail, ret = %d"

    new-array v2, v4, [Ljava/lang/Object;

    iget v3, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1$1;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1$1;->c:Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1;

    iget-object v0, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$5;

    iget-object v0, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$5;->b:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v1, "-1"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "correction fail %d "

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$5$1$1;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
