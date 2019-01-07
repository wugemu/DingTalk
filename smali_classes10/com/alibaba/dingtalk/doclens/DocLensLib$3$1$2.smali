.class final Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1$2;
.super Ljava/lang/Object;
.source "DocLensLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:[F

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;ILjava/lang/String;Ljava/lang/String;[FII)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1$2;->g:Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;

    iput p2, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1$2;->a:I

    iput-object p3, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1$2;->d:[F

    iput p6, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1$2;->e:I

    iput p7, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1$2;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 189
    iget v1, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1$2;->a:I

    if-nez v1, :cond_0

    .line 190
    new-instance v0, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1$2;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1$2;->d:[F

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[F)V

    .line 191
    .local v0, "docInfo":Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;
    iget v1, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1$2;->e:I

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->setSourceImageHeight(I)V

    .line 192
    iget v1, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1$2;->f:I

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->setSourceImageWidth(I)V

    .line 193
    invoke-virtual {v0, v5}, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->setOrientation(I)V

    .line 194
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1$2;->g:Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;

    iget-object v1, v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$3;

    iget-object v1, v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->b:Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v0}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 199
    .end local v0    # "docInfo":Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;
    :goto_0
    return-void

    .line 196
    :cond_0
    const-string/jumbo v1, "DocLensLib"

    const-string/jumbo v2, "correction fail by ret : "

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1$2;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1018
    const-string/jumbo v3, "im"

    invoke-static {v1, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1$2;->g:Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;

    iget-object v1, v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$3;

    iget-object v1, v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->b:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v2, "-1"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "correction fail %d "

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1$2;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
