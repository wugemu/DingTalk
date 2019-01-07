.class final Ldpj$2;
.super Ljava/lang/Object;
.source "MenuResendHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldpj;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JLeav;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Ldpj;


# direct methods
.method constructor <init>(Ldpj;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$0"    # Ldpj;

    .prologue
    .line 37
    iput-object p1, p0, Ldpj$2;->b:Ldpj;

    iput-object p2, p0, Ldpj$2;->a:Lcom/alibaba/wukong/im/Message;

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
    .line 41
    new-instance v0, Ldiz;

    iget-object v1, p0, Ldpj$2;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-direct {v0, v1}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    iget-object v1, p0, Ldpj$2;->a:Lcom/alibaba/wukong/im/Message;

    const/4 v2, 0x0

    .line 2500
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;)V

    .line 42
    return-void
.end method
