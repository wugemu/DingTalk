.class final Lcom/alibaba/dingtalk/doclens/DocLensLib$1;
.super Ljava/lang/Object;
.source "DocLensLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/doclens/DocLensLib;->a(Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Lcom/alibaba/dingtalk/doclens/DocLensLib;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/doclens/DocLensLib;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/doclens/DocLensLib;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$1;->b:Lcom/alibaba/dingtalk/doclens/DocLensLib;

    iput-object p2, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$1;->a:Lcom/alibaba/wukong/Callback;

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
    .line 48
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$1;->a:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "cpu abi not support"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method
