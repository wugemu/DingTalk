.class final Liax$1;
.super Ljava/lang/Object;
.source "ConversationStatusFixManager.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liax;->a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
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
        "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Liax;


# direct methods
.method constructor <init>(Liax;Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Liax;

    .prologue
    .line 84
    iput-object p1, p0, Liax$1;->c:Liax;

    iput-object p2, p0, Liax$1;->a:Lcom/alibaba/wukong/Callback;

    iput-object p3, p0, Liax$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 100
    iget-object v1, p0, Liax$1;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Liax$1;->a:Lcom/alibaba/wukong/Callback;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v0, "sbError":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[ConversationStatusFixManager] getConv fail code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string/jumbo v1, " reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string/jumbo v1, " cid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v1, p0, Liax$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string/jumbo v1, "[TAG] ConversationStatusFixManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1018
    const-string/jumbo v3, "im"

    invoke-static {v1, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 84
    check-cast p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 1087
    iget-object v0, p0, Liax$1;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1088
    iget-object v1, p0, Liax$1;->a:Lcom/alibaba/wukong/Callback;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1090
    :cond_0
    if-eqz p1, :cond_2

    .line 1091
    const-string/jumbo v0, "[TAG] ConversationStatusFixManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[ConversationStatusFixManager] getConv exist restore cid :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Liax$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    iget-object v0, p0, Liax$1;->c:Liax;

    iget-object v1, p0, Liax$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Liax;->a(Ljava/lang/String;)V

    :goto_1
    return-void

    .line 1088
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1094
    :cond_2
    const-string/jumbo v0, "[TAG] ConversationStatusFixManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[ConversationStatusFixManager] getConv null :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Liax$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
