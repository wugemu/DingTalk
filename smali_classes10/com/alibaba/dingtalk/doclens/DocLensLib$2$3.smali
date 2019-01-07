.class final Lcom/alibaba/dingtalk/doclens/DocLensLib$2$3;
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
.field final synthetic a:Ljava/lang/Void;

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/dingtalk/doclens/DocLensLib$2;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/doclens/DocLensLib$2;Ljava/lang/Void;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/doclens/DocLensLib$2;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2$3;->c:Lcom/alibaba/dingtalk/doclens/DocLensLib$2;

    iput-object p2, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2$3;->a:Ljava/lang/Void;

    iput p3, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2$3;->b:I

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
    .line 108
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2$3;->c:Lcom/alibaba/dingtalk/doclens/DocLensLib$2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2;->e:Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2$3;->a:Ljava/lang/Void;

    iget v2, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2$3;->b:I

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onProgress(Ljava/lang/Object;I)V

    .line 109
    return-void
.end method
