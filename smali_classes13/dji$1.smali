.class final Ldji$1;
.super Ljava/lang/Object;
.source "ConversationCreateHelper.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldji;->a(Ljava/util/List;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldji;


# direct methods
.method constructor <init>(Ldji;)V
    .locals 0
    .param p1, "this$0"    # Ldji;

    .prologue
    .line 93
    iput-object p1, p0, Ldji$1;->a:Ldji;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 93
    check-cast p1, Ljava/util/List;

    .line 1096
    iget-object v0, p0, Ldji$1;->a:Ldji;

    invoke-static {v0}, Ldji;->a(Ldji;)V

    .line 1097
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1098
    :cond_0
    iget-object v0, p0, Ldji$1;->a:Ldji;

    .line 2044
    iget-object v0, v0, Ldji;->b:Ldca;

    .line 1098
    if-eqz v0, :cond_1

    .line 1099
    iget-object v0, p0, Ldji$1;->a:Ldji;

    .line 3044
    iget-object v0, v0, Ldji;->b:Ldca;

    .line 1099
    iget-object v1, p0, Ldji$1;->a:Ldji;

    .line 4044
    iget-object v1, v1, Ldji;->e:Ljava/util/List;

    .line 1099
    invoke-interface {v0, v1}, Ldca;->a(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void

    .line 1102
    :cond_2
    iget-object v0, p0, Ldji$1;->a:Ldji;

    .line 5135
    iget-object v1, v0, Ldji;->d:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_3

    .line 5136
    new-instance v1, Ldji$2;

    invoke-direct {v1, v0}, Ldji$2;-><init>(Ldji;)V

    iput-object v1, v0, Ldji;->d:Landroid/content/BroadcastReceiver;

    .line 5163
    new-instance v1, Landroid/content/IntentFilter;

    iget-object v2, v0, Ldji;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 5164
    iget-object v2, v0, Ldji;->c:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v0, v0, Ldji;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1103
    :cond_3
    iget-object v0, p0, Ldji$1;->a:Ldji;

    .line 6044
    iget-object v0, v0, Ldji;->c:Landroid/app/Activity;

    .line 1103
    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/similar_group_conversation"

    new-instance v2, Ldji$1$1;

    invoke-direct {v2, p0, p1}, Ldji$1$1;-><init>(Ldji$1;Ljava/util/List;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 122
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 123
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "action_select_do_logic_fail"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 125
    iget-object v1, p0, Ldji$1;->a:Ldji;

    invoke-static {v1}, Ldji;->a(Ldji;)V

    .line 126
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 117
    return-void
.end method
