.class final Ldqq$4$1;
.super Ldqq$b;
.source "ChatMsgListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldqq$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldqq$b",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldqq$4;


# direct methods
.method constructor <init>(Ldqq$4;)V
    .locals 1
    .param p1, "this$1"    # Ldqq$4;

    .prologue
    .line 1012
    iput-object p1, p0, Ldqq$4$1;->a:Ldqq$4;

    iget-object v0, p1, Ldqq$4;->e:Ldqq;

    invoke-direct {p0, v0}, Ldqq$b;-><init>(Ldqq;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1015
    iget-object v0, p0, Ldqq$4$1;->a:Ldqq$4;

    iget-object v0, v0, Ldqq$4;->e:Ldqq;

    .line 2040
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldqq;->a(Z)V

    .line 1016
    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 1012
    check-cast p1, Ljava/lang/Integer;

    .line 4020
    if-eqz p1, :cond_2

    .line 4024
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    .line 4026
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0x14

    if-gt v0, v1, :cond_1

    .line 4027
    iget-object v0, p0, Ldqq$4$1;->a:Ldqq$4;

    iget-object v0, v0, Ldqq$4;->e:Ldqq;

    iget-object v1, p0, Ldqq$4$1;->a:Ldqq$4;

    iget-object v1, v1, Ldqq$4;->a:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Ldqq$4$1;->a:Ldqq$4;

    iget-object v3, v3, Ldqq$4;->b:Ldqq$d;

    iget-object v4, p0, Ldqq$4$1;->a:Ldqq$4;

    iget-object v4, v4, Ldqq$4;->c:Ljava/lang/Object;

    .line 5339
    iget-object v5, v0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    .line 5340
    new-instance v5, Ldqq$f;

    invoke-direct {v5, v0, v3}, Ldqq$f;-><init>(Ldqq;Ldqq$d;)V

    invoke-virtual {v0, v5}, Ldqq;->a(Ldqq$d;)V

    .line 5341
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4}, Ldqq;->a(ILjava/lang/Object;)V

    .line 5342
    invoke-virtual {v0}, Ldqq;->d()Lcom/alibaba/wukong/im/Message;

    move-result-object v3

    .line 5343
    iget-object v5, v0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    const/4 v6, 0x1

    add-int/lit8 v7, v2, 0x1

    new-instance v8, Ldqq$7;

    invoke-direct {v8, v0, v4, v2, v1}, Ldqq$7;-><init>(Ldqq;Ljava/lang/Object;ILcom/alibaba/wukong/im/Message;)V

    const-class v1, Lcom/alibaba/wukong/Callback;

    iget-object v0, v0, Ldqq;->g:Landroid/app/Activity;

    invoke-static {v8, v1, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v5, v3, v6, v7, v0}, Lcom/alibaba/wukong/im/Conversation;->listNextMessagesAroundAnchor(Lcom/alibaba/wukong/im/Message;ZILcom/alibaba/wukong/Callback;)V

    .line 4029
    :goto_0
    return-void

    .line 5397
    :cond_0
    invoke-virtual {v0, v6}, Ldqq;->a(Z)V

    goto :goto_0

    .line 4029
    :cond_1
    iget-object v0, p0, Ldqq$4$1;->a:Ldqq$4;

    iget-object v0, v0, Ldqq$4;->e:Ldqq;

    iget-object v1, p0, Ldqq$4$1;->a:Ldqq$4;

    iget-object v1, v1, Ldqq$4;->a:Lcom/alibaba/wukong/im/Message;

    iget-object v2, p0, Ldqq$4$1;->a:Ldqq$4;

    iget-object v2, v2, Ldqq$4;->b:Ldqq$d;

    iget-object v3, p0, Ldqq$4$1;->a:Ldqq$4;

    iget-object v3, v3, Ldqq$4;->c:Ljava/lang/Object;

    .line 6040
    invoke-virtual {v0, v1, v2, v3}, Ldqq;->a(Lcom/alibaba/wukong/im/Message;Ldqq$d;Ljava/lang/Object;)V

    goto :goto_0

    .line 4032
    :cond_2
    iget-object v0, p0, Ldqq$4$1;->a:Ldqq$4;

    iget-object v0, v0, Ldqq$4;->e:Ldqq;

    .line 7040
    invoke-virtual {v0, v6}, Ldqq;->a(Z)V

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1038
    iget-object v0, p0, Ldqq$4$1;->a:Ldqq$4;

    iget-object v0, v0, Ldqq$4;->e:Ldqq;

    .line 3040
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldqq;->a(Z)V

    .line 1039
    return-void
.end method
