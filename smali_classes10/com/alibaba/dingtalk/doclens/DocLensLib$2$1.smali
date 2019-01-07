.class final Lcom/alibaba/dingtalk/doclens/DocLensLib$2$1;
.super Ljava/lang/Object;
.source "DocLensLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/doclens/DocLensLib$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/doclens/DocLensLib$2;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/doclens/DocLensLib$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/doclens/DocLensLib$2;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$2;

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
    .line 73
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$2;

    iget-object v1, v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$2;->f:Lcom/alibaba/dingtalk/doclens/DocLensLib;

    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$2;

    iget-object v2, v2, Lcom/alibaba/dingtalk/doclens/DocLensLib$2;->a:[F

    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$2;

    iget-object v3, v3, Lcom/alibaba/dingtalk/doclens/DocLensLib$2;->b:[B

    iget-object v4, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$2;

    iget v4, v4, Lcom/alibaba/dingtalk/doclens/DocLensLib$2;->c:I

    iget-object v5, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$2;

    iget v5, v5, Lcom/alibaba/dingtalk/doclens/DocLensLib$2;->d:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/alibaba/dingtalk/doclens/DocLensLib;->a(Lcom/alibaba/dingtalk/doclens/DocLensLib;[F[BII)I

    move-result v0

    .line 74
    .local v0, "ret":I
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$2;

    iget-object v1, v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$2;->e:Lcom/alibaba/wukong/Callback;

    if-eqz v1, :cond_0

    .line 75
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/dingtalk/doclens/DocLensLib$2$1$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/dingtalk/doclens/DocLensLib$2$1$1;-><init>(Lcom/alibaba/dingtalk/doclens/DocLensLib$2$1;I)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 86
    :cond_0
    return-void
.end method
