.class final Ldji$1$1;
.super Ljava/lang/Object;
.source "ConversationCreateHelper.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldji$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ldji$1;


# direct methods
.method constructor <init>(Ldji$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Ldji$1;

    .prologue
    .line 103
    iput-object p1, p0, Ldji$1$1;->b:Ldji$1;

    iput-object p2, p0, Ldji$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    const-string/jumbo v0, "intent_key_callback_action"

    iget-object v1, p0, Ldji$1$1;->b:Ldji$1;

    iget-object v1, v1, Ldji$1;->a:Ldji;

    .line 1044
    iget-object v1, v1, Ldji;->a:Ljava/lang/String;

    .line 106
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string/jumbo v0, "intent_key_conversation_list"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ldji$1$1;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 108
    return-object p1
.end method
