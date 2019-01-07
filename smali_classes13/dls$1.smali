.class final Ldls$1;
.super Ljava/lang/Object;
.source "ForwardBatchTask.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldls;->a(Ldlm;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ldlm;

.field final synthetic c:Ldls;


# direct methods
.method constructor <init>(Ldls;ZLdlm;)V
    .locals 0
    .param p1, "this$0"    # Ldls;

    .prologue
    .line 51
    iput-object p1, p0, Ldls$1;->c:Ldls;

    iput-boolean p2, p0, Ldls$1;->a:Z

    iput-object p3, p0, Ldls$1;->b:Ldlm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    iget-object v1, p0, Ldls$1;->b:Ldlm;

    invoke-static {v1, p1, p2}, Ldls;->a(Ldlm;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "ForwardCombineTask"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "forward failed, code="

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ", reason="

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "errorMsg":Ljava/lang/String;
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "ForwardCombineTask"

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    check-cast p1, Ljava/util/List;

    .line 1054
    iget-boolean v0, p0, Ldls$1;->a:Z

    if-eqz v0, :cond_1

    .line 1055
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1056
    iget-object v0, p0, Ldls$1;->b:Ldlm;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ldls;->a(Ldlm;Ljava/lang/Object;)V

    .line 1058
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldls$1;->b:Ldlm;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "receive messages is empty"

    invoke-static {v0, v1, v2}, Ldls;->a(Ldlm;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1061
    :cond_1
    iget-object v0, p0, Ldls$1;->b:Ldlm;

    invoke-static {v0, p1}, Ldls;->a(Ldlm;Ljava/lang/Object;)V

    goto :goto_0
.end method
