.class final Ldac$5;
.super Ljava/lang/Object;
.source "UserToBasicDataDelegate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/wukong/im/Message;

.field final synthetic c:Ldac;


# direct methods
.method constructor <init>(Ldac;Landroid/content/Context;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$0"    # Ldac;

    .prologue
    .line 279
    iput-object p1, p0, Ldac$5;->c:Ldac;

    iput-object p2, p0, Ldac$5;->a:Landroid/content/Context;

    iput-object p3, p0, Ldac$5;->b:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 283
    iget-object v1, p0, Ldac$5;->c:Ldac;

    iget-object v2, p0, Ldac$5;->b:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {v1, v2}, Ldac;->a(Lcom/alibaba/wukong/im/Message;)V

    .line 284
    new-instance v0, Ldiz;

    iget-object v1, p0, Ldac$5;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-direct {v0, v1}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 285
    .local v0, "chatMessageSender":Ldiz;
    new-instance v1, Ldac$5$1;

    invoke-direct {v1, p0}, Ldac$5$1;-><init>(Ldac$5;)V

    .line 2131
    iput-object v1, v0, Ldiz;->b:Ldiz$a;

    .line 315
    iget-object v1, p0, Ldac$5;->b:Lcom/alibaba/wukong/im/Message;

    const/4 v2, 0x0

    .line 2500
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;)V

    .line 316
    iget-object v1, p0, Ldac$5;->c:Ldac;

    iget-object v1, v1, Ldac;->j:Lcts$b;

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Ldac$5;->c:Ldac;

    iget-object v1, v1, Ldac;->j:Lcts$b;

    iget-object v2, p0, Ldac$5;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1, v2}, Lcts$b;->d(Lcom/alibaba/wukong/im/Message;)V

    .line 319
    :cond_0
    return-void
.end method
