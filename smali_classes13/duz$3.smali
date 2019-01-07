.class final Lduz$3;
.super Ljava/lang/Object;
.source "CSpaceMessageSelectHandler.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lduz;->b(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:Lduz;


# direct methods
.method constructor <init>(Lduz;JLcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$0"    # Lduz;

    .prologue
    .line 147
    iput-object p1, p0, Lduz$3;->c:Lduz;

    iput-wide p2, p0, Lduz$3;->a:J

    iput-object p4, p0, Lduz$3;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 150
    const-string/jumbo v0, "intent_key_time_stamp"

    iget-wide v2, p0, Lduz$3;->a:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 151
    const-string/jumbo v0, "conversation"

    iget-object v1, p0, Lduz$3;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 152
    const-string/jumbo v0, "intent_key_chat_list_can_save_to_space"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 153
    return-object p1
.end method
