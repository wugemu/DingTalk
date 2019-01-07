.class final Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1$1;
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
.field final synthetic a:Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;

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
    .line 144
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;

    iget-object v0, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$3;

    iget-object v0, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->b:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "correction fail by bitmap null"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method
