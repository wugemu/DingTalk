.class final Ldfb$2$1$1;
.super Ljava/lang/Object;
.source "EducationChatPlugin.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldfb$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ldfb$2$1;


# direct methods
.method constructor <init>(Ldfb$2$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$2"    # Ldfb$2$1;

    .prologue
    .line 134
    iput-object p1, p0, Ldfb$2$1$1;->b:Ldfb$2$1;

    iput-object p2, p0, Ldfb$2$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 137
    const-string/jumbo v0, "conversation_id"

    iget-object v1, p0, Ldfb$2$1$1;->b:Ldfb$2$1;

    iget-object v1, v1, Ldfb$2$1;->a:Ldfb$2;

    iget-object v1, v1, Ldfb$2;->b:Ldfb;

    iget-object v1, v1, Ldfb;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string/jumbo v0, "conversation"

    iget-object v1, p0, Ldfb$2$1$1;->b:Ldfb$2$1;

    iget-object v1, v1, Ldfb$2$1;->a:Ldfb$2;

    iget-object v1, v1, Ldfb$2;->b:Ldfb;

    iget-object v1, v1, Ldfb;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 139
    const-string/jumbo v0, "conversation_type"

    iget-object v1, p0, Ldfb$2$1$1;->b:Ldfb$2$1;

    iget-object v1, v1, Ldfb$2$1;->a:Ldfb$2;

    iget-object v1, v1, Ldfb$2;->b:Ldfb;

    iget-object v1, v1, Ldfb;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    const-string/jumbo v0, "intent_key_auto_search"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 141
    const-string/jumbo v1, "intent_key_auto_search_ids"

    iget-object v0, p0, Ldfb$2$1$1;->a:Ljava/util/List;

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 142
    return-object p1
.end method
