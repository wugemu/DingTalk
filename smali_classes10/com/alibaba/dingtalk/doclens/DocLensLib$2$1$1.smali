.class final Lcom/alibaba/dingtalk/doclens/DocLensLib$2$1$1;
.super Ljava/lang/Object;
.source "DocLensLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/doclens/DocLensLib$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/dingtalk/doclens/DocLensLib$2$1;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/doclens/DocLensLib$2$1;I)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/dingtalk/doclens/DocLensLib$2$1;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2$1$1;->b:Lcom/alibaba/dingtalk/doclens/DocLensLib$2$1;

    iput p2, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2$1$1;->a:I

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
    .line 78
    iget v0, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2$1$1;->a:I

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2$1$1;->b:Lcom/alibaba/dingtalk/doclens/DocLensLib$2$1;

    iget-object v0, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2;->e:Lcom/alibaba/wukong/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2$1$1;->b:Lcom/alibaba/dingtalk/doclens/DocLensLib$2$1;

    iget-object v0, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2;->e:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v1, "-1"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "fail to detect quad %d "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2$1$1;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
