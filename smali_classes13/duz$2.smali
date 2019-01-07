.class final Lduz$2;
.super Ljava/lang/Object;
.source "CSpaceMessageSelectHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lduz;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Lduz;


# direct methods
.method constructor <init>(Lduz;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lduz;

    .prologue
    .line 87
    iput-object p1, p0, Lduz$2;->e:Lduz;

    iput-object p2, p0, Lduz$2;->a:Lcom/alibaba/wukong/im/Conversation;

    iput-object p3, p0, Lduz$2;->b:Ljava/util/List;

    iput-object p4, p0, Lduz$2;->c:Ljava/util/List;

    iput-object p5, p0, Lduz$2;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    if-nez p2, :cond_1

    .line 90
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    iget-object v1, p0, Lduz$2;->e:Lduz;

    iget-object v1, v1, Lduz;->g:Landroid/app/Activity;

    iget-object v2, p0, Lduz$2;->a:Lcom/alibaba/wukong/im/Conversation;

    iget-object v3, p0, Lduz$2;->b:Ljava/util/List;

    iget-object v4, p0, Lduz$2;->c:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;Ljava/util/List;)V

    .line 95
    :cond_0
    :goto_0
    iget-object v0, p0, Lduz$2;->e:Lduz;

    invoke-static {v0}, Lduz;->a(Lduz;)V

    .line 96
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 97
    return-void

    .line 92
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 93
    iget-object v0, p0, Lduz$2;->e:Lduz;

    iget-object v1, p0, Lduz$2;->a:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Lduz$2;->d:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lduz;->a(Lduz;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V

    goto :goto_0
.end method
