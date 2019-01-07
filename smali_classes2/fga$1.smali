.class public final Lfga$1;
.super Ljava/lang/Object;
.source "AcceptFriendPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfga;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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
.field final synthetic a:Lfga;


# direct methods
.method public constructor <init>(Lfga;)V
    .locals 0
    .param p1, "this$0"    # Lfga;

    .prologue
    .line 52
    iput-object p1, p0, Lfga$1;->a:Lfga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 70
    const-string/jumbo v0, "BusinessRequestPresenter"

    const-string/jumbo v1, "create conversation err %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 52
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1055
    if-eqz p1, :cond_1

    .line 1057
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1058
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->resetUnreadCount()V

    .line 1059
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    .line 1061
    :cond_0
    iget-object v0, p0, Lfga$1;->a:Lfga;

    invoke-virtual {v0, p1}, Lfga;->a(Lcom/alibaba/wukong/im/Conversation;)V

    :goto_0
    return-void

    .line 1064
    :cond_1
    iget-object v0, p0, Lfga$1;->a:Lfga;

    invoke-static {v0}, Lfga;->a(Lfga;)Lcli;

    move-result-object v0

    check-cast v0, Lffz$b;

    sget v1, Lezg$l;->create_con_error:I

    invoke-interface {v0, v1}, Lffz$b;->a(I)V

    goto :goto_0
.end method
