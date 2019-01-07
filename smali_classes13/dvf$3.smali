.class final Ldvf$3;
.super Ljava/lang/Object;
.source "ForwardCombineSelectHandler.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldvf;->a(Ljava/util/ArrayList;Ljava/lang/String;)V
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
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Ldvf;


# direct methods
.method constructor <init>(Ldvf;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Ldvf;

    .prologue
    .line 238
    iput-object p1, p0, Ldvf$3;->c:Ldvf;

    iput-object p2, p0, Ldvf$3;->a:Ljava/lang/String;

    iput-boolean p3, p0, Ldvf$3;->b:Z

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
    .line 252
    iget-boolean v0, p0, Ldvf$3;->b:Z

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Ldvf$3;->c:Ldvf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldvf;->a(Z)V

    .line 255
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 238
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1241
    if-eqz p1, :cond_0

    .line 1242
    iget-object v0, p0, Ldvf$3;->c:Ldvf;

    iget-object v1, p0, Ldvf$3;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Ldvf;->a(Ldvf;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)Ldll;

    move-result-object v0

    .line 1243
    iget-object v1, p0, Ldvf$3;->c:Ldvf;

    iget-object v1, v1, Ldvf;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1245
    :cond_0
    iget-boolean v0, p0, Ldvf$3;->b:Z

    if-eqz v0, :cond_1

    .line 1246
    iget-object v0, p0, Ldvf$3;->c:Ldvf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldvf;->a(Z)V

    .line 238
    :cond_1
    return-void
.end method
