.class final Ldvb$1;
.super Ljava/lang/Object;
.source "DeleteMessageSelectHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldvb;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ldvb;


# direct methods
.method constructor <init>(Ldvb;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Ldvb;

    .prologue
    .line 46
    iput-object p1, p0, Ldvb$1;->b:Ldvb;

    iput-object p2, p0, Ldvb$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    iget-object v1, p0, Ldvb$1;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 50
    .local v0, "m":Lcom/alibaba/wukong/im/Message;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/im/Message;->delete(Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 52
    .end local v0    # "m":Lcom/alibaba/wukong/im/Message;
    :cond_0
    iget-object v1, p0, Ldvb$1;->b:Ldvb;

    iget-object v1, v1, Ldvb;->h:Ldru;

    if-eqz v1, :cond_1

    .line 53
    iget-object v1, p0, Ldvb$1;->b:Ldvb;

    iget-object v1, v1, Ldvb;->h:Ldru;

    invoke-virtual {v1}, Ldru;->d()V

    .line 55
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 56
    return-void
.end method
