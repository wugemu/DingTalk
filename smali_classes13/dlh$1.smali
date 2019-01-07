.class final Ldlh$1;
.super Ljava/lang/Object;
.source "ForwardCombineController.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldlh;->a(Ldll;I)V
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

.field final synthetic b:Ldll;

.field final synthetic c:I

.field final synthetic d:Ldlh;


# direct methods
.method constructor <init>(Ldlh;Lcom/alibaba/wukong/im/Message;Ldll;I)V
    .locals 0
    .param p1, "this$0"    # Ldlh;

    .prologue
    .line 130
    iput-object p1, p0, Ldlh$1;->d:Ldlh;

    iput-object p2, p0, Ldlh$1;->a:Lcom/alibaba/wukong/im/Message;

    iput-object p3, p0, Ldlh$1;->b:Ldll;

    iput p4, p0, Ldlh$1;->c:I

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
    .line 143
    iget-object v0, p0, Ldlh$1;->d:Ldlh;

    iget-object v1, p0, Ldlh$1;->b:Ldll;

    iget v2, p0, Ldlh$1;->c:I

    invoke-static {v0, v1, v2}, Ldlh;->a(Ldlh;Ldll;I)V

    .line 144
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 130
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 1133
    if-eqz p1, :cond_0

    .line 1134
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 1135
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v1

    check-cast p1, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 2130
    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Libt;->a(Lcom/alibaba/wukong/im/MessageContent;Ljava/util/Map;Ljava/util/List;Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/idl/im/models/ContentModel;

    move-result-object v0

    .line 1136
    iget-object v1, p0, Ldlh$1;->d:Ldlh;

    invoke-static {v1}, Ldlh;->a(Ldlh;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Ldlh$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    :cond_0
    iget-object v0, p0, Ldlh$1;->d:Ldlh;

    iget-object v1, p0, Ldlh$1;->b:Ldll;

    iget v2, p0, Ldlh$1;->c:I

    invoke-static {v0, v1, v2}, Ldlh;->a(Ldlh;Ldll;I)V

    .line 130
    return-void
.end method
