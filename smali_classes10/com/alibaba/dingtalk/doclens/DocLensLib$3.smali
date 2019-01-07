.class public final Lcom/alibaba/dingtalk/doclens/DocLensLib$3;
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
.field final synthetic a:[B

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:[F

.field final synthetic g:Lcom/alibaba/dingtalk/doclens/DocLensLib;


# direct methods
.method public constructor <init>(Lcom/alibaba/dingtalk/doclens/DocLensLib;[BLcom/alibaba/wukong/Callback;III[F)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/doclens/DocLensLib;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->g:Lcom/alibaba/dingtalk/doclens/DocLensLib;

    iput-object p2, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->a:[B

    iput-object p3, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->b:Lcom/alibaba/wukong/Callback;

    iput p4, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->c:I

    iput p5, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->d:I

    iput p6, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->e:I

    iput-object p7, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->f:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 209
    const-string/jumbo v0, "DocLensLib"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "correction exception : "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", msg : "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 211
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$2;-><init>(Lcom/alibaba/dingtalk/doclens/DocLensLib$3;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 218
    :cond_0
    return-void
.end method

.method public final synthetic onProgress(Ljava/lang/Object;I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    .line 1222
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1223
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$3;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$3;-><init>(Lcom/alibaba/dingtalk/doclens/DocLensLib$3;I)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 127
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    .line 2130
    new-instance v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;-><init>(Lcom/alibaba/dingtalk/doclens/DocLensLib$3;)V

    .line 2204
    const-string/jumbo v1, "DocLensLib"

    const/4 v2, 0x1

    sget-object v3, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-static {v1, v2, v3}, Lhcn;->a(Ljava/lang/String;ILcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 127
    return-void
.end method
