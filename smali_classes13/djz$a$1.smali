.class final Ldjz$a$1;
.super Ljava/lang/Object;
.source "MessageCountDownManager.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjz$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic a:Ldjz$a;


# direct methods
.method constructor <init>(Ldjz$a;)V
    .locals 0
    .param p1, "this$1"    # Ldjz$a;

    .prologue
    .line 697
    iput-object p1, p0, Ldjz$a$1;->a:Ldjz$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 706
    iget-object v1, p0, Ldjz$a$1;->a:Ldjz$a;

    iget-object v1, v1, Ldjz$a;->h:Ldjz;

    iget-object v2, p0, Ldjz$a$1;->a:Ldjz$a;

    .line 1637
    iget-object v2, v2, Ldjz$a;->b:Lcom/alibaba/wukong/im/Message;

    .line 706
    invoke-static {v1, v2}, Ldjz;->f(Ldjz;Lcom/alibaba/wukong/im/Message;)V

    .line 707
    const-string/jumbo v1, "im"

    sget-object v2, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->n:Ljava/lang/String;

    invoke-static {v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v0

    .line 708
    .local v0, "trace":Lcom/alibaba/doraemon/trace/Trace;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "burn msg fail, msgId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ldjz$a$1;->a:Ldjz$a;

    .line 2637
    iget-object v4, v4, Ldjz$a;->b:Lcom/alibaba/wukong/im/Message;

    .line 708
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V

    .line 709
    invoke-interface {v0}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 710
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 697
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 697
    .line 2700
    iget-object v0, p0, Ldjz$a$1;->a:Ldjz$a;

    iget-object v0, v0, Ldjz$a;->h:Ldjz;

    iget-object v1, p0, Ldjz$a$1;->a:Ldjz$a;

    .line 3637
    iget-object v1, v1, Ldjz$a;->b:Lcom/alibaba/wukong/im/Message;

    .line 2700
    invoke-static {v0, v1}, Ldjz;->e(Ldjz;Lcom/alibaba/wukong/im/Message;)V

    .line 2701
    iget-object v0, p0, Ldjz$a$1;->a:Ldjz$a;

    iget-object v0, v0, Ldjz$a;->h:Ldjz;

    iget-object v1, p0, Ldjz$a$1;->a:Ldjz$a;

    .line 4637
    iget-object v1, v1, Ldjz$a;->b:Lcom/alibaba/wukong/im/Message;

    .line 2701
    invoke-virtual {v0, v1}, Ldjz;->c(Lcom/alibaba/wukong/im/Message;)V

    .line 697
    return-void
.end method
