.class final Liaw$4;
.super Liaa;
.source "ConversationServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liaw;->listMembers(Lcom/alibaba/wukong/Callback;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Liaa",
        "<",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Member;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Liaw;


# direct methods
.method constructor <init>(Liaw;Lcom/alibaba/wukong/Callback;ZLcom/alibaba/wukong/WKExecutor;Lcom/alibaba/doraemon/Priority;Ljava/lang/String;II)V
    .locals 1
    .param p1, "this$0"    # Liaw;
    .param p3, "x1"    # Z
    .param p4, "x2"    # Lcom/alibaba/wukong/WKExecutor;
    .param p5, "x3"    # Lcom/alibaba/doraemon/Priority;

    .prologue
    .line 744
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/util/List<Lcom/alibaba/wukong/im/Member;>;>;"
    iput-object p1, p0, Liaw$4;->d:Liaw;

    iput-object p6, p0, Liaw$4;->a:Ljava/lang/String;

    iput p7, p0, Liaw$4;->b:I

    iput p8, p0, Liaw$4;->c:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p4, p5}, Liaa;-><init>(Lcom/alibaba/wukong/Callback;ZLcom/alibaba/wukong/WKExecutor;Lcom/alibaba/doraemon/Priority;)V

    return-void
.end method


# virtual methods
.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 744
    .line 1748
    iget-object v0, p0, Liaw$4;->a:Ljava/lang/String;

    invoke-static {v0}, Liaw;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1749
    if-nez v0, :cond_0

    .line 1750
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v0

    iget-object v1, p0, Liaw$4;->a:Ljava/lang/String;

    iget v2, p0, Liaw$4;->b:I

    iget v3, p0, Liaw$4;->c:I

    invoke-virtual {v0, v1, v2, v3, p2}, Liav;->a(Ljava/lang/String;IILcom/alibaba/wukong/Callback;)V

    :goto_0
    return-void

    .line 1752
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lidr;->a(Ljava/util/List;ZLcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
