.class final Ldvf$4;
.super Ljava/lang/Object;
.source "ForwardCombineSelectHandler.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldvf;
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
.field final synthetic a:Ldll;

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:Ldvf;


# direct methods
.method constructor <init>(Ldvf;Ldll;ZI)V
    .locals 0
    .param p1, "this$0"    # Ldvf;

    .prologue
    .line 291
    iput-object p1, p0, Ldvf$4;->d:Ldvf;

    iput-object p2, p0, Ldvf$4;->a:Ldll;

    iput-boolean p3, p0, Ldvf$4;->b:Z

    iput p4, p0, Ldvf$4;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 312
    iget-boolean v0, p0, Ldvf$4;->b:Z

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Ldvf$4;->d:Ldvf;

    iget v1, p0, Ldvf$4;->c:I

    invoke-static {v0, v1}, Ldvf;->a(Ldvf;I)V

    .line 314
    iget-object v0, p0, Ldvf$4;->d:Ldvf;

    iget-object v0, v0, Ldvf;->d:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Ldvf$4;->d:Ldvf;

    iget-object v0, v0, Ldvf;->d:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 291
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 1294
    iget-object v0, p0, Ldvf$4;->d:Ldvf;

    .line 2048
    iget v1, v0, Ldvf;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Ldvf;->f:I

    .line 1295
    iget-object v0, p0, Ldvf$4;->a:Ldll;

    const-string/jumbo v1, "appendText"

    invoke-virtual {v0, v1}, Ldll;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1296
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1298
    iget-object v1, p0, Ldvf$4;->a:Ldll;

    iget-object v1, v1, Ldll;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_0

    .line 1299
    new-instance v1, Ldiz;

    iget-object v2, p0, Ldvf$4;->a:Ldll;

    iget-object v2, v2, Ldll;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v1, v2}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 2413
    invoke-virtual {v1, v0, v3, v3}, Ldiz;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    .line 1302
    :cond_0
    iget-boolean v0, p0, Ldvf$4;->b:Z

    if-eqz v0, :cond_1

    .line 1303
    iget-object v0, p0, Ldvf$4;->d:Ldvf;

    iget v1, p0, Ldvf$4;->c:I

    invoke-static {v0, v1}, Ldvf;->a(Ldvf;I)V

    .line 1304
    iget-object v0, p0, Ldvf$4;->d:Ldvf;

    iget-object v0, v0, Ldvf;->d:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_1

    .line 1305
    iget-object v0, p0, Ldvf$4;->d:Ldvf;

    iget-object v0, v0, Ldvf;->d:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 291
    :cond_1
    return-void
.end method
