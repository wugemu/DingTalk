.class public Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "GroupAnchorListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$b;,
        Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;,
        Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$ChooseAnchorLogic;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/alibaba/wukong/im/Conversation;

.field private c:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;

.field private d:Landroid/view/LayoutInflater;

.field private e:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 76
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$1;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->e:Landroid/content/BroadcastReceiver;

    .line 486
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;)Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->c:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    return-object p1
.end method

.method private a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 193
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 197
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;

    invoke-direct {v0, p0, v3}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;B)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->c:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;

    .line 198
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->c:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 200
    new-instance v5, Lcom/alibaba/android/dingtalk/live/rpc/model/ListAnchorReqObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/live/rpc/model/ListAnchorReqObject;-><init>()V

    .line 201
    .local v5, "object":Lcom/alibaba/android/dingtalk/live/rpc/model/ListAnchorReqObject;
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/alibaba/android/dingtalk/live/rpc/model/ListAnchorReqObject;->cid:Ljava/lang/String;

    .line 202
    const v0, 0x186a0

    iput v0, v5, Lcom/alibaba/android/dingtalk/live/rpc/model/ListAnchorReqObject;->count:I

    .line 203
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->c:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;->getCount()I

    move-result v0

    iput v0, v5, Lcom/alibaba/android/dingtalk/live/rpc/model/ListAnchorReqObject;->index:I

    .line 205
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->showLoadingDialog()V

    .line 206
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$3;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;)V

    .line 5185
    new-instance v0, Lbxe$36;

    iget-object v4, v1, Lbxe;->a:Ljava/util/concurrent/Executor;

    invoke-direct/range {v0 .. v5}, Lbxe$36;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/android/dingtalk/live/rpc/model/ListAnchorReqObject;)V

    .line 5197
    invoke-virtual {v0}, Lbxe$36;->start()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;J)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;
    .param p1, "x1"    # J

    .prologue
    .line 61
    .line 5262
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 5266
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5267
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5269
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->showLoadingDialog()V

    .line 5270
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    new-instance v2, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$4;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;J)V

    .line 6174
    new-instance v0, Lbxe$35;

    const/4 v3, 0x0

    iget-object v4, v1, Lbxe;->a:Ljava/util/concurrent/Executor;

    invoke-direct/range {v0 .. v6}, Lbxe$35;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;Ljava/util/List;)V

    .line 6180
    invoke-virtual {v0}, Lbxe$35;->start()V

    .line 61
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->a()V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->d:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    sget v1, Lbtp$f;->activity_group_anchor_list:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->setContentView(I)V

    .line 1155
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "cid"

    invoke-static {v1, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1156
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "conversation"

    invoke-static {v1, v2}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Conversation;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 1157
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    if-nez v1, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1158
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    new-instance v4, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$2;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$2;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;)V

    const-class v5, Lcom/alibaba/wukong/Callback;

    .line 1159
    invoke-interface {v2, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/Callback;

    .line 1158
    invoke-interface {v1, v2, v3}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 1182
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    if-nez v1, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 102
    .local v0, "isValid":Z
    :goto_0
    if-nez v0, :cond_3

    .line 103
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->finish()V

    .line 111
    :goto_1
    return-void

    .line 1182
    .end local v0    # "isValid":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1186
    .restart local v0    # "isValid":Z
    :cond_3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->d:Landroid/view/LayoutInflater;

    .line 1188
    sget v1, Lbtp$e;->list:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->a:Landroid/widget/ListView;

    .line 1189
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 108
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->a()V

    .line 2145
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "intent_action_group_anchor_added"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2146
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 115
    sget v5, Lbtp$g;->icon_add:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "iconFont":Ljava/lang/String;
    sget v5, Lbtp$b;->ui_common_theme_icon_bg_color:I

    invoke-static {v5}, Leda;->b(I)I

    move-result v0

    .line 117
    .local v0, "color":I
    new-instance v1, Lecw;

    invoke-direct {v1, v2, v0}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 118
    .local v1, "drawable":Lecw;
    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {p0, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    .line 3079
    .local v4, "size":I
    iput v4, v1, Lecw;->b:I

    .line 4070
    iput v4, v1, Lecw;->a:I

    .line 122
    const/4 v5, 0x1

    sget v6, Lbtp$g;->dt_lv_add_group_anchor:I

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 123
    .local v3, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 124
    const/4 v5, 0x2

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 125
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v5

    return v5
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 140
    .line 5150
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 141
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 142
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 294
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v5

    if-nez v5, :cond_1

    .line 314
    :cond_0
    :goto_0
    return v1

    .line 297
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v5

    invoke-interface {v5, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 298
    .local v0, "object":Ljava/lang/Object;
    instance-of v5, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;

    if-eqz v5, :cond_0

    .line 301
    check-cast v0, Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;

    .end local v0    # "object":Ljava/lang/Object;
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;->id:J

    .line 302
    .local v2, "uid":J
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->getOwnerId()J

    move-result-wide v6

    cmp-long v5, v6, v2

    if-eqz v5, :cond_0

    .line 306
    :cond_2
    new-instance v5, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v6, v4, [Ljava/lang/String;

    sget v7, Lbtp$g;->and_chat_menu_delete:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    new-instance v1, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$5;

    invoke-direct {v1, p0, v2, v3}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$5;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;J)V

    invoke-virtual {v5, v6, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 313
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    move v1, v4

    .line 314
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 130
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 135
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 4229
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_2

    .line 4233
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4234
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->c:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;

    if-eqz v0, :cond_1

    .line 4235
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->c:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;->getCount()I

    move-result v5

    move v2, v3

    .line 4236
    :goto_1
    if-ge v2, v5, :cond_1

    .line 4237
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->c:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 4238
    instance-of v6, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;

    if-eqz v6, :cond_0

    .line 4239
    new-instance v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v6}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 4240
    check-cast v0, Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;->id:J

    iput-wide v8, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 4241
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4236
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 4246
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 4247
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    const/16 v5, 0x14

    .line 4248
    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v2

    .line 4249
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->o(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v2

    .line 4250
    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->g(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v2

    .line 4251
    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->j(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v2

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 4252
    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v2

    .line 4253
    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v2

    .line 4254
    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->f(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 4255
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v4

    .line 4660
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v5, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$2602(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 4256
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$ChooseAnchorLogic;

    invoke-direct {v3, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$ChooseAnchorLogic;-><init>(Ljava/lang/String;)V

    .line 4257
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v0

    .line 4258
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    .line 5053
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 4258
    invoke-virtual {v2, p0, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V

    :cond_2
    move v0, v1

    .line 133
    goto/16 :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
