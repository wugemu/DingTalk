.class final Ldvd$4;
.super Ljava/lang/Object;
.source "ForwardBatchSelectHandler.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldvd;
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
.field final synthetic a:Ldlk;

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:Ldvd;


# direct methods
.method constructor <init>(Ldvd;Ldlk;ZI)V
    .locals 0
    .param p1, "this$0"    # Ldvd;

    .prologue
    .line 255
    iput-object p1, p0, Ldvd$4;->d:Ldvd;

    iput-object p2, p0, Ldvd$4;->a:Ldlk;

    iput-boolean p3, p0, Ldvd$4;->b:Z

    iput p4, p0, Ldvd$4;->c:I

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
    .line 273
    iget-boolean v0, p0, Ldvd$4;->b:Z

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Ldvd$4;->d:Ldvd;

    iget v1, p0, Ldvd$4;->c:I

    invoke-static {v0, v1}, Ldvd;->a(Ldvd;I)V

    .line 276
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 255
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 255
    .line 1258
    iget-object v0, p0, Ldvd$4;->d:Ldvd;

    .line 2047
    iget v1, v0, Ldvd;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Ldvd;->b:I

    .line 1259
    iget-object v0, p0, Ldvd$4;->a:Ldlk;

    const-string/jumbo v1, "appendText"

    invoke-virtual {v0, v1}, Ldlk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1260
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1262
    iget-object v1, p0, Ldvd$4;->a:Ldlk;

    iget-object v1, v1, Ldlk;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_0

    .line 1263
    new-instance v1, Ldiz;

    iget-object v2, p0, Ldvd$4;->a:Ldlk;

    iget-object v2, v2, Ldlk;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v1, v2}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 2413
    invoke-virtual {v1, v0, v3, v3}, Ldiz;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    .line 1266
    :cond_0
    iget-boolean v0, p0, Ldvd$4;->b:Z

    if-eqz v0, :cond_1

    .line 1267
    iget-object v0, p0, Ldvd$4;->d:Ldvd;

    iget v1, p0, Ldvd$4;->c:I

    invoke-static {v0, v1}, Ldvd;->a(Ldvd;I)V

    .line 255
    :cond_1
    return-void
.end method
