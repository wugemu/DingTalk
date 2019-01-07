.class final Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b$1;
.super Ljava/lang/Object;
.source "SpaceInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;

    .prologue
    .line 770
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b$1;->c:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b$1;->a:Ljava/lang/String;

    iput p3, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 770
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 1773
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1774
    const-string/jumbo v0, "null result"

    sget v1, Lfzs$h;->dt_cspace_invalid_result_tip:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b$1;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    :goto_0
    return-void

    .line 1777
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b$1;->c:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;

    .line 2797
    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;->a:Lgrc;

    .line 3080
    iget-object v3, v1, Lgrc;->d:Ljava/lang/String;

    .line 2798
    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;->d:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;

    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;->a:Lgrc;

    .line 3112
    iget-object v1, v1, Lgrc;->h:Lcom/alibaba/wukong/im/Conversation;

    .line 3509
    invoke-static {v1}, Lgpt;->c(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v4

    .line 2799
    new-instance v6, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b$2;

    invoke-direct {v6, v0, v4, v5}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b$2;-><init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;J)V

    .line 2827
    invoke-static {}, Lglf;->a()Lglf;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Lglf;->a(Ljava/lang/String;Ljava/lang/String;JLcma;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 786
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "checkConversationSpaceId, "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, ", extension = "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b$1;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ", messageType = "

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b$1;->b:I

    .line 788
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 786
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 789
    .local v0, "desc":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b$1;->c:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;

    invoke-static {v1, v0, p1, p2}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;->a(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b$1;->c:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;->b:Lgqt;

    invoke-interface {v1, p1, p2}, Lgqt;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 782
    return-void
.end method
