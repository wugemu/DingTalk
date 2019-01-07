.class final Ldlj$1;
.super Ljava/lang/Object;
.source "MultiToTaskController.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldlj;->a(Ldlo;I)V
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
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Ldlo;

.field final synthetic c:I

.field final synthetic d:Ldlj;


# direct methods
.method constructor <init>(Ldlj;Lcom/alibaba/wukong/im/Message;Ldlo;I)V
    .locals 0
    .param p1, "this$0"    # Ldlj;

    .prologue
    .line 113
    iput-object p1, p0, Ldlj$1;->d:Ldlj;

    iput-object p2, p0, Ldlj$1;->a:Lcom/alibaba/wukong/im/Message;

    iput-object p3, p0, Ldlj$1;->b:Ldlo;

    iput p4, p0, Ldlj$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    iget-object v0, p0, Ldlj$1;->d:Ldlj;

    iget-object v1, p0, Ldlj$1;->b:Ldlo;

    iget v2, p0, Ldlj$1;->c:I

    invoke-static {v0, v1, v2}, Ldlj;->a(Ldlj;Ldlo;I)V

    .line 127
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 113
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 1116
    if-eqz p1, :cond_0

    .line 1117
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 1118
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v1

    check-cast p1, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 1130
    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Libt;->a(Lcom/alibaba/wukong/im/MessageContent;Ljava/util/Map;Ljava/util/List;Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/idl/im/models/ContentModel;

    move-result-object v0

    .line 1119
    iget-object v1, p0, Ldlj$1;->d:Ldlj;

    .line 2024
    iget-object v1, v1, Ldlj;->b:Ljava/util/HashMap;

    .line 1119
    iget-object v2, p0, Ldlj$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    :cond_0
    iget-object v0, p0, Ldlj$1;->d:Ldlj;

    iget-object v1, p0, Ldlj$1;->b:Ldlo;

    iget v2, p0, Ldlj$1;->c:I

    invoke-static {v0, v1, v2}, Ldlj;->a(Ldlj;Ldlo;I)V

    .line 113
    return-void
.end method
