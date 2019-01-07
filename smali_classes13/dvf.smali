.class public Ldvf;
.super Ldvj;
.source "ForwardCombineSelectHandler.java"


# instance fields
.field private a:Ldq;

.field protected b:Lcom/alibaba/wukong/im/Conversation;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Lcom/alibaba/wukong/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldll;",
            ">;"
        }
    .end annotation
.end field

.field f:I

.field private i:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ldru;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "manager"    # Ldru;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ldvj;-><init>(Landroid/app/Activity;Ldru;)V

    .line 59
    new-instance v0, Ldvf$1;

    invoke-direct {v0, p0}, Ldvf$1;-><init>(Ldvf;)V

    iput-object v0, p0, Ldvf;->i:Landroid/content/BroadcastReceiver;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldvf;->e:Ljava/util/ArrayList;

    .line 1165
    iget-object v0, p0, Ldvf;->g:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1166
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1167
    const-string/jumbo v1, "com.workapp.conversation.FORWARD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1168
    const-string/jumbo v1, "intent_action_dialog_confirm"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1169
    const-string/jumbo v1, "intent_action_dialog_cancel"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1170
    iget-object v1, p0, Ldvf;->g:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iput-object v1, p0, Ldvf;->a:Ldq;

    .line 1171
    iget-object v1, p0, Ldvf;->a:Ldq;

    iget-object v2, p0, Ldvf;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 77
    :cond_0
    return-void
.end method

.method static synthetic a(Ldvf;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)Ldll;
    .locals 3
    .param p0, "x0"    # Ldvf;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 48
    .line 3329
    new-instance v0, Ldll;

    iget-object v1, p0, Ldvf;->g:Landroid/app/Activity;

    iget-object v2, p0, Ldvf;->c:Ljava/util/List;

    invoke-direct {v0, v1, p1, v2}, Ldll;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V

    .line 3330
    const-string/jumbo v1, "appendText"

    invoke-virtual {v0, v1, p2}, Ldll;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-object v0
.end method

.method static synthetic a(Ldvf;I)V
    .locals 2
    .param p0, "x0"    # Ldvf;
    .param p1, "x1"    # I

    .prologue
    .line 48
    .line 3343
    iget v0, p0, Ldvf;->f:I

    if-lt v0, p1, :cond_0

    .line 3344
    sget v0, Lctk$i;->msg_forward_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 3350
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Ldvf;->f:I

    .line 3336
    invoke-virtual {p0}, Ldvf;->e()V

    .line 3337
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_message_multi_forward_completed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3338
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    .line 3339
    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 48
    return-void

    .line 3345
    :cond_0
    iget v0, p0, Ldvf;->f:I

    if-lez v0, :cond_1

    .line 3346
    sget v0, Lctk$i;->msg_forward_success:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 3348
    :cond_1
    sget v0, Lctk$i;->message_more_forward_failure:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 9
    .param p2, "appendText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 229
    .local p1, "toConversationIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 263
    :cond_0
    return-void

    .line 233
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 234
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 235
    add-int/lit8 v4, v2, -0x1

    if-ne v0, v4, :cond_2

    const/4 v1, 0x1

    .line 236
    .local v1, "isLastOne":Z
    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 237
    .local v3, "toConversationId":Ljava/lang/String;
    const-class v4, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v4}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/ConversationService;

    const-string/jumbo v5, "EVENTBUTLER"

    .line 238
    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v6, Ldvf$3;

    invoke-direct {v6, p0, p2, v1}, Ldvf$3;-><init>(Ldvf;Ljava/lang/String;Z)V

    const-class v7, Lcom/alibaba/wukong/Callback;

    iget-object v8, p0, Ldvf;->g:Landroid/app/Activity;

    invoke-interface {v5, v6, v7, v8}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/Callback;

    .line 237
    invoke-interface {v4, v5, v3}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    .end local v1    # "isLastOne":Z
    .end local v3    # "toConversationId":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 137
    .local p1, "messages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v1, 0x0

    .line 138
    .local v1, "unsupportType":I
    if-eqz p1, :cond_2

    .line 139
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 140
    .local v0, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 143
    invoke-static {v0}, Ldkc;->f(Lcom/alibaba/wukong/im/Message;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 144
    or-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    const/16 v4, 0x5dc

    if-ne v3, v4, :cond_0

    .line 146
    or-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 150
    .end local v0    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_2
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_3

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_3

    .line 152
    iget-object v2, p0, Ldvf;->g:Landroid/app/Activity;

    sget v3, Lctk$i;->dt_message_more_merge_forward_filter:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 156
    :goto_1
    return-object v2

    .line 153
    :cond_3
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_4

    .line 154
    iget-object v2, p0, Ldvf;->g:Landroid/app/Activity;

    sget v3, Lctk$i;->dt_message_more_merge_filter:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 156
    :cond_4
    iget-object v2, p0, Ldvf;->g:Landroid/app/Activity;

    sget v3, Lctk$i;->dt_message_more_forward_filter:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    .line 2176
    iget-object v0, p0, Ldvf;->a:Ldq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldvf;->i:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2177
    iget-object v0, p0, Ldvf;->a:Ldq;

    iget-object v1, p0, Ldvf;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 108
    :cond_0
    invoke-static {}, Ldlh;->a()Ldlh;

    move-result-object v0

    invoke-virtual {v0}, Ldlh;->b()V

    .line 109
    return-void
.end method

.method protected final a(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 201
    if-nez p1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v4, p0, Ldvf;->c:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Ldvf;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    const-string/jumbo v4, "intent_key_im_forward_mode"

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v3

    .line 208
    .local v3, "type":I
    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 212
    iget-object v4, p0, Ldvf;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 213
    const-string/jumbo v4, "send_text"

    invoke-static {p1, v4}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "appendText":Ljava/lang/String;
    const-string/jumbo v4, "conversation_ids"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 215
    .local v2, "toConversationIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_2

    .line 216
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "toConversationIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .restart local v2    # "toConversationIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 219
    const-string/jumbo v4, "conversation_id"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "cid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 221
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v1    # "cid":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v2, v0}, Ldvf;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    return-void
.end method

.method public final a(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 94
    return-void
.end method

.method public final a(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 98
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 354
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Message;>;"
    iput-object p1, p0, Ldvf;->d:Lcom/alibaba/wukong/Callback;

    .line 355
    return-void
.end method

.method public a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V
    .locals 8
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 82
    iput-object p2, p0, Ldvf;->c:Ljava/util/List;

    .line 83
    iput-object p1, p0, Ldvf;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 1182
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 1183
    invoke-static {}, Ldvi;->a()Ldvi;

    move-result-object v0

    invoke-virtual {v0, p2}, Ldvi;->a(Ljava/util/List;)J

    move-result-wide v4

    .line 1184
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Ldvf;->g:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    const-string/jumbo v7, "https://qr.dingtalk.com/im/forward.html"

    new-instance v0, Ldvf$2;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ldvf$2;-><init>(Ldvf;Lcom/alibaba/wukong/im/Conversation;IJ)V

    .line 1185
    invoke-interface {v6, v7, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 87
    :cond_0
    iget-object v0, p0, Ldvf;->h:Ldru;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Ldvf;->h:Ldru;

    invoke-virtual {v0}, Ldru;->d()V

    .line 90
    :cond_1
    return-void
.end method

.method protected final a(Z)V
    .locals 9
    .param p1, "sendDirectly"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 266
    iget-object v3, p0, Ldvf;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 284
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-static {}, Ldlh;->a()Ldlh;

    move-result-object v0

    .line 270
    .local v0, "controller":Ldlh;
    invoke-static {}, Ldlh;->e()Z

    move-result v2

    .line 271
    .local v2, "isFeatureOpen":Z
    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    .line 272
    iget-object v3, p0, Ldvf;->e:Ljava/util/ArrayList;

    invoke-static {v3}, Ldlh;->b(Ljava/util/ArrayList;)Z

    move-result v1

    .line 273
    .local v1, "hasEncryptFile":Z
    if-eqz v1, :cond_1

    .line 275
    invoke-virtual {p0}, Ldvf;->c()V

    goto :goto_0

    .line 2287
    .end local v1    # "hasEncryptFile":Z
    :cond_1
    iget-object v3, p0, Ldvf;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v6, v5

    .line 2288
    :goto_1
    if-ge v6, v7, :cond_3

    .line 2289
    add-int/lit8 v3, v7, -0x1

    if-ne v6, v3, :cond_2

    const/4 v3, 0x1

    move v4, v3

    .line 2290
    :goto_2
    iget-object v3, p0, Ldvf;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldll;

    .line 2291
    new-instance v8, Ldvf$4;

    invoke-direct {v8, p0, v3, v4, v7}, Ldvf$4;-><init>(Ldvf;Ldll;ZI)V

    .line 3040
    iput-object v8, v3, Ldlm;->d:Lcom/alibaba/wukong/Callback;

    .line 2288
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_1

    :cond_2
    move v4, v5

    .line 2289
    goto :goto_2

    .line 281
    :cond_3
    invoke-virtual {p0}, Ldvf;->d()V

    .line 282
    iget-object v3, p0, Ldvf;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ldlh;->a(Ljava/util/ArrayList;)V

    .line 283
    iget-object v3, p0, Ldvf;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;)Z
    .locals 3
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 118
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/16 v2, 0x5dc

    if-eq v1, v2, :cond_0

    .line 125
    invoke-static {p1}, Ldkc;->f(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    const-string/jumbo v0, "chat_trans_mergetrans_click"

    return-object v0
.end method
