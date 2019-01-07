.class final Lddy$9;
.super Ljava/lang/Object;
.source "ChatLoadPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lddy;->a(JJZ)V
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
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lddy;


# direct methods
.method constructor <init>(Lddy;)V
    .locals 0
    .param p1, "this$0"    # Lddy;

    .prologue
    .line 951
    iput-object p1, p0, Lddy$9;->a:Lddy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 961
    iget-object v0, p0, Lddy$9;->a:Lddy;

    .line 2066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 961
    invoke-interface {v0}, Lddx$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lddy$9;->a:Lddy;

    .line 3066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 962
    invoke-interface {v0, p1, p2}, Lddx$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 951
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    .line 951
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 3954
    iget-object v0, p0, Lddy$9;->a:Lddy;

    .line 4066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 3954
    invoke-interface {v0}, Lddx$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3955
    iget-object v1, p0, Lddy$9;->a:Lddy;

    .line 6037
    iget-object v0, v1, Lddy;->d:Lddx$b;

    invoke-interface {v0}, Lddx$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lddy;->c:Ldqq;

    if-eqz v0, :cond_0

    .line 6038
    if-eqz p1, :cond_1

    .line 6039
    iget-object v0, v1, Lddy;->c:Ldqq;

    new-instance v2, Lddy$11;

    invoke-direct {v2, v1, p1}, Lddy$11;-><init>(Lddy;Lcom/alibaba/wukong/im/Message;)V

    const-string/jumbo v1, "jump"

    invoke-virtual {v0, p1, v2, v6, v1}, Ldqq;->a(Lcom/alibaba/wukong/im/Message;Ldqq$d;ZLjava/lang/Object;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-wide v4, v2

    .line 6075
    invoke-virtual/range {v1 .. v6}, Lddy;->a(JJZ)V

    goto :goto_0
.end method
