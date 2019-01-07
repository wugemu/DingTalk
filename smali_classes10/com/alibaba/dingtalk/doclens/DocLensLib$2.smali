.class public final Lcom/alibaba/dingtalk/doclens/DocLensLib$2;
.super Ljava/lang/Object;
.source "DocLensLib.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/doclens/DocLensLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[F

.field final synthetic b:[B

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/alibaba/wukong/Callback;

.field final synthetic f:Lcom/alibaba/dingtalk/doclens/DocLensLib;


# direct methods
.method public constructor <init>(Lcom/alibaba/dingtalk/doclens/DocLensLib;[F[BIILcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/doclens/DocLensLib;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2;->f:Lcom/alibaba/dingtalk/doclens/DocLensLib;

    iput-object p2, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2;->a:[F

    iput-object p3, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2;->b:[B

    iput p4, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2;->c:I

    iput p5, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2;->d:I

    iput-object p6, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2;->e:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2;->e:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 93
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$2$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/dingtalk/doclens/DocLensLib$2$2;-><init>(Lcom/alibaba/dingtalk/doclens/DocLensLib$2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 100
    :cond_0
    return-void
.end method

.method public final synthetic onProgress(Ljava/lang/Object;I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    check-cast p1, Ljava/lang/Void;

    .line 1104
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2;->e:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1105
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$2$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/dingtalk/doclens/DocLensLib$2$3;-><init>(Lcom/alibaba/dingtalk/doclens/DocLensLib$2;Ljava/lang/Void;I)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 67
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    .line 2070
    const-string/jumbo v0, "DocLensLib"

    const/4 v1, 0x1

    sget-object v2, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-static {v0, v1, v2}, Lhcn;->a(Ljava/lang/String;ILcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$2$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/doclens/DocLensLib$2$1;-><init>(Lcom/alibaba/dingtalk/doclens/DocLensLib$2;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 67
    return-void
.end method
