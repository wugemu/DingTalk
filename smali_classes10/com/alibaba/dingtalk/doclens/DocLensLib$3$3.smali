.class final Lcom/alibaba/dingtalk/doclens/DocLensLib$3$3;
.super Ljava/lang/Object;
.source "DocLensLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/doclens/DocLensLib$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/dingtalk/doclens/DocLensLib$3;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/doclens/DocLensLib$3;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/doclens/DocLensLib$3;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$3;->b:Lcom/alibaba/dingtalk/doclens/DocLensLib$3;

    iput p2, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$3;->a:I

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
    .line 226
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$3;->b:Lcom/alibaba/dingtalk/doclens/DocLensLib$3;

    iget-object v0, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->b:Lcom/alibaba/wukong/Callback;

    const/4 v1, 0x0

    iget v2, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$3;->a:I

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onProgress(Ljava/lang/Object;I)V

    .line 227
    return-void
.end method
