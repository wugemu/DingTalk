.class final Ldpl$1;
.super Ljava/lang/Object;
.source "MenuShieldHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldpl;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JLeav;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/alibaba/wukong/im/Message;

.field final synthetic d:Ldpl;


# direct methods
.method constructor <init>(Ldpl;Ljava/util/Map;Landroid/content/Context;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$0"    # Ldpl;

    .prologue
    .line 81
    iput-object p1, p0, Ldpl$1;->d:Ldpl;

    iput-object p2, p0, Ldpl$1;->a:Ljava/util/Map;

    iput-object p3, p0, Ldpl$1;->b:Landroid/content/Context;

    iput-object p4, p0, Ldpl$1;->c:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 85
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_group_msg_block_frame_block_btn_click"

    iget-object v2, p0, Ldpl$1;->a:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 86
    iget-object v3, p0, Ldpl$1;->d:Ldpl;

    iget-object v1, p0, Ldpl$1;->b:Landroid/content/Context;

    iget-object v4, p0, Ldpl$1;->c:Lcom/alibaba/wukong/im/Message;

    .line 1105
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    .line 1106
    const/16 v2, 0x1f4

    if-eq v0, v2, :cond_0

    const/16 v2, 0x1f5

    if-eq v0, v2, :cond_0

    invoke-static {v4}, Ldkc;->u(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1107
    :cond_0
    new-instance v2, Ldpl$3;

    invoke-direct {v2, v3, v4, v1}, Ldpl$3;-><init>(Ldpl;Lcom/alibaba/wukong/im/Message;Landroid/content/Context;)V

    .line 1129
    if-eqz v1, :cond_3

    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 1130
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v5

    const-class v6, Lcma;

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    invoke-interface {v5, v2, v6, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1132
    :goto_0
    iput-boolean v7, v3, Ldpl;->a:Z

    .line 1133
    invoke-virtual {v3, v1}, Ldpl;->a(Landroid/content/Context;)V

    .line 1134
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v1

    invoke-virtual {v1}, Ldyn;->c()Ldxx;

    move-result-object v1

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, v0}, Ldxx;->f(JLcma;)V

    .line 1135
    :goto_1
    return-void

    .line 1136
    :cond_1
    new-instance v2, Ldpl$4;

    invoke-direct {v2, v3, v1}, Ldpl$4;-><init>(Ldpl;Landroid/content/Context;)V

    .line 1156
    if-eqz v1, :cond_2

    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 1157
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v5

    const-class v6, Lcom/alibaba/wukong/Callback;

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    invoke-interface {v5, v2, v6, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 1159
    :goto_2
    iput-boolean v7, v3, Ldpl;->a:Z

    .line 1160
    invoke-virtual {v3, v1}, Ldpl;->a(Landroid/content/Context;)V

    .line 1161
    invoke-interface {v4, v0}, Lcom/alibaba/wukong/im/Message;->shieldMessage(Lcom/alibaba/wukong/Callback;)V

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method
