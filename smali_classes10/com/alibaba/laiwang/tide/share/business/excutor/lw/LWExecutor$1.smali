.class Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor$1;
.super Ljao$a;
.source "LWExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor$1;->this$0:Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;

    invoke-direct {p0}, Ljao$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponceAnswer(I)I
    .locals 3
    .param p1, "ret"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    packed-switch p1, :pswitch_data_0

    .line 57
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor$1;->this$0:Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;

    invoke-static {v0}, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->access$000(Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;)Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor$1;->this$0:Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;

    invoke-static {v0}, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->access$000(Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;)Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ret="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;->onException(Ljava/lang/String;)V

    .line 62
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Ljao$a;->onResponceAnswer(I)I

    move-result v0

    return v0

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor$1;->this$0:Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;

    invoke-static {v0}, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->access$000(Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;)Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor$1;->this$0:Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;

    invoke-static {v0}, Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;->access$000(Lcom/alibaba/laiwang/tide/share/business/excutor/lw/LWExecutor;)Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;->onSuccess()V

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
