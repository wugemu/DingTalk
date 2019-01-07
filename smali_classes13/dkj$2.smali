.class final Ldkj$2;
.super Ljava/lang/Object;
.source "QuickPraiseController.java"

# interfaces
.implements Ldki$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldkj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldkj;


# direct methods
.method constructor <init>(Ldkj;)V
    .locals 0
    .param p1, "this$0"    # Ldkj;

    .prologue
    .line 170
    iput-object p1, p0, Ldkj$2;->a:Ldkj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ldro;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p1, "object"    # Ldro;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 173
    if-eqz p2, :cond_0

    iget-object v0, p0, Ldkj$2;->a:Ldkj;

    .line 1055
    iget-object v0, v0, Ldkj;->r:Lcom/alibaba/wukong/im/Conversation;

    .line 173
    if-eqz v0, :cond_0

    .line 174
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldkj$2;->a:Ldkj;

    .line 2055
    iget-object v1, v1, Ldkj;->r:Lcom/alibaba/wukong/im/Conversation;

    .line 174
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Ldkj$2;->a:Ldkj;

    .line 3055
    iput-object p1, v0, Ldkj;->l:Ldro;

    .line 177
    :cond_0
    return-void
.end method
