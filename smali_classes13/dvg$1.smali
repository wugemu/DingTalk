.class final Ldvg$1;
.super Ljava/lang/Object;
.source "ForwardMessageSelectHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldvg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Ljava/util/Collection;

.field final synthetic c:Ldvg;


# direct methods
.method constructor <init>(Ldvg;Lcom/alibaba/wukong/im/Conversation;Ljava/util/Collection;)V
    .locals 0
    .param p1, "this$0"    # Ldvg;

    .prologue
    .line 109
    iput-object p1, p0, Ldvg$1;->c:Ldvg;

    iput-object p2, p0, Ldvg$1;->a:Lcom/alibaba/wukong/im/Conversation;

    iput-object p3, p0, Ldvg$1;->b:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "handler":Ldvj;
    packed-switch p2, :pswitch_data_0

    .line 123
    :goto_0
    if-eqz v0, :cond_0

    .line 124
    iget-object v1, p0, Ldvg$1;->a:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Ldvg$1;->b:Ljava/util/Collection;

    invoke-virtual {v0, v1, v2}, Ldvj;->b(Lcom/alibaba/wukong/im/Conversation;Ljava/util/Collection;)V

    .line 126
    :cond_0
    return-void

    .line 116
    :pswitch_0
    iget-object v1, p0, Ldvg$1;->c:Ldvg;

    .line 1026
    invoke-virtual {v1}, Ldvg;->f()Ldvd;

    move-result-object v0

    .line 117
    goto :goto_0

    .line 120
    :pswitch_1
    iget-object v1, p0, Ldvg$1;->c:Ldvg;

    .line 2026
    invoke-virtual {v1}, Ldvg;->g()Ldvf;

    move-result-object v0

    .line 120
    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
