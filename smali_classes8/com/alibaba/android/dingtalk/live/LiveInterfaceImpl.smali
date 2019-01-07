.class public Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl;
.super Lcom/alibaba/android/dingtalk/livebase/LiveInterface;
.source "LiveInterfaceImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 163
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lbws;->a(Z)Lbwq;

    move-result-object v0

    .line 3135
    .local v0, "livePlayer":Lbwq;
    if-eqz p2, :cond_0

    .line 3136
    iput-object p2, v0, Lbwq;->b:Landroid/view/ViewParent;

    .line 3138
    :cond_0
    iget-object v1, v0, Lbwq;->k:Landroid/app/Activity;

    if-ne v1, p1, :cond_2

    iget-object v1, v0, Lbwq;->a:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 3139
    invoke-virtual {v0}, Lbwq;->a()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lbwq;->b:Landroid/view/ViewParent;

    if-eqz v1, :cond_1

    .line 3140
    iget-object v1, v0, Lbwq;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 3141
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lbwq;->b:Landroid/view/ViewParent;

    if-eq v1, v2, :cond_1

    .line 3142
    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, v0, Lbwq;->a:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3143
    iget-object v1, v0, Lbwq;->b:Landroid/view/ViewParent;

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, v0, Lbwq;->a:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3146
    :cond_1
    iget-object v1, v0, Lbwq;->a:Landroid/view/View;

    :goto_0
    return-object v1

    .line 3148
    :cond_2
    iput-object p1, v0, Lbwq;->k:Landroid/app/Activity;

    .line 3149
    iget-object v1, v0, Lbwq;->k:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lbtp$f;->layout_live_player:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lbwq;->a:Landroid/view/View;

    .line 3151
    new-instance v1, Lbwy;

    iget-object v2, v0, Lbwq;->k:Landroid/app/Activity;

    iget-object v3, v0, Lbwq;->a:Landroid/view/View;

    invoke-direct {v1, v2, v0, v3}, Lbwy;-><init>(Landroid/app/Activity;Lbwy$a;Landroid/view/View;)V

    iput-object v1, v0, Lbwq;->l:Lbwy;

    .line 3152
    new-instance v1, Lbwv;

    iget-object v2, v0, Lbwq;->k:Landroid/app/Activity;

    iget-object v3, v0, Lbwq;->a:Landroid/view/View;

    invoke-direct {v1, v2, v0, v3}, Lbwv;-><init>(Landroid/app/Activity;Lbwv$a;Landroid/view/View;)V

    iput-object v1, v0, Lbwq;->m:Lbwv;

    .line 3211
    iget-object v1, v0, Lbwq;->a:Landroid/view/View;

    sget v2, Lbtp$e;->loading:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lbwq;->d:Landroid/view/View;

    .line 3212
    iget-object v1, v0, Lbwq;->a:Landroid/view/View;

    sget v2, Lbtp$e;->tv_tips_traffic:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lbwq;->c:Landroid/view/View;

    .line 3213
    iget-object v1, v0, Lbwq;->a:Landroid/view/View;

    sget v2, Lbtp$e;->tv_play:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lbwq;->e:Landroid/widget/TextView;

    .line 3215
    iget-object v1, v0, Lbwq;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3220
    iget-object v1, v0, Lbwq;->r:Lbts;

    if-nez v1, :cond_3

    iget-object v1, v0, Lbwq;->k:Landroid/app/Activity;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lbwq;->k:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3221
    new-instance v1, Lbwq$2;

    iget-object v2, v0, Lbwq;->k:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lbwq$2;-><init>(Lbwq;Landroid/view/Window$Callback;)V

    iput-object v1, v0, Lbwq;->r:Lbts;

    .line 3234
    iget-object v1, v0, Lbwq;->k:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, v0, Lbwq;->r:Lbts;

    invoke-virtual {v1, v2}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 3155
    :cond_3
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v1

    invoke-virtual {v1}, Lbws;->e()V

    .line 3157
    iget-object v1, v0, Lbwq;->k:Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 3158
    iget-object v1, v0, Lbwq;->k:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/taolive/sdk/utils/DingTalkUtils;->isAutoPlay(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, v0, Lbwq;->g:Z

    .line 3160
    :cond_4
    iget-object v1, v0, Lbwq;->a:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 65
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl$1;-><init>(Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method

.method public final a(IIILcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "pageNum"    # I
    .param p2, "pageSize"    # I
    .param p3, "searchType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;>;"
    const/4 v3, 0x0

    .line 331
    if-nez p4, :cond_0

    .line 370
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-static {}, Lbtr;->a()Lbtr;

    move-result-object v0

    invoke-virtual {v0, p3, p1}, Lbtr;->a(II)Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;

    move-result-object v8

    .line 336
    .local v8, "listLiveRecordsRspObject":Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;
    if-eqz v8, :cond_1

    .line 337
    invoke-interface {p4, v8}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 341
    :cond_1
    new-instance v2, Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl$3;

    invoke-direct {v2, p0, p3, p1, p4}, Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl$3;-><init>(Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl;IILcom/alibaba/wukong/Callback;)V

    .line 359
    .local v2, "adapterCallback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;>;"
    packed-switch p3, :pswitch_data_0

    .line 367
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v1

    .line 23513
    new-instance v0, Lbxe$30;

    iget-object v4, v1, Lbxe;->a:Ljava/util/concurrent/Executor;

    move v5, p3

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lbxe$30;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;III)V

    .line 23519
    invoke-virtual {v0}, Lbxe$30;->start()V

    goto :goto_0

    .line 361
    :pswitch_0
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v1

    .line 23502
    new-instance v0, Lbxe$29;

    iget-object v4, v1, Lbxe;->a:Ljava/util/concurrent/Executor;

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lbxe$29;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;II)V

    .line 23508
    invoke-virtual {v0}, Lbxe$29;->start()V

    goto :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 128
    .line 1214
    sget v0, Lbtp$g;->dt_im_transmit_select_group:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2128
    invoke-static {}, Lbyj;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v4, "config_switch_live_normal_group_enabled"

    .line 2129
    invoke-virtual {v0, v4, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 1215
    :goto_0
    if-eqz v0, :cond_2

    sget v0, Lbtp$g;->and_my_group_conversation:I

    :goto_1
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1217
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1218
    const-string/jumbo v5, "intent_key_list_tips"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    const-string/jumbo v0, "title"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    const-string/jumbo v0, "search_mode_enabled"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1221
    const-string/jumbo v0, "intent_key_show_menu_create"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1222
    const-string/jumbo v0, "intent_key_show_menu_guide"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1223
    const-string/jumbo v0, "intent_key_show_item_create"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1224
    const-string/jumbo v0, "conversation_filter"

    new-instance v1, Lcom/alibaba/android/dingtalk/live/controller/LiveConversationFilter;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/live/controller/LiveConversationFilter;-><init>()V

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1225
    const-string/jumbo v0, "choose_mode"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1226
    const-string/jumbo v0, "intent_key_group_selection_do_logic"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1227
    const-string/jumbo v0, "choose_people_from_contact_logic"

    new-instance v1, Lcom/alibaba/android/dingtalk/live/controller/LiveChoooseInjecter;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/live/controller/LiveChoooseInjecter;-><init>()V

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1229
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 129
    return-void

    :cond_1
    move v0, v1

    .line 2129
    goto :goto_0

    .line 1215
    :cond_2
    sget v0, Lbtp$g;->dt_lv_select_conversation_list_tips:I

    goto :goto_1
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cid"    # Ljava/lang/String;

    .prologue
    .line 212
    .line 16054
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lbyq;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 213
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "intentRewriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 1076
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://live.dingtalk.com/replay_list.html"

    new-instance v3, Lbwp$8;

    invoke-direct {v3, v0, p2}, Lbwp$8;-><init>(Lcom/alibaba/doraemon/navigator/IntentRewriter;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 103
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intentRewriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 1181
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://live.dingtalk.com/live_session.html"

    new-instance v3, Lbwp$2;

    invoke-direct {v3, v0, p1}, Lbwp$2;-><init>(Lcom/alibaba/doraemon/navigator/IntentRewriter;Landroid/content/Context;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 124
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "intentRewriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 76
    .line 1027
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://live.dingtalk.com/start.html"

    new-instance v2, Lbwp$1;

    invoke-direct {v2, p3, p2, p1}, Lbwp$1;-><init>(Lcom/alibaba/doraemon/navigator/IntentRewriter;Ljava/lang/String;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 77
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/doraemon/navigator/IntentRewriter;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "liveUuid"    # Ljava/lang/String;
    .param p4, "anchorId"    # J
    .param p6, "intentRewriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;

    .prologue
    .line 87
    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-static/range {v1 .. v6}, Lbwp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 88
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "playUrl"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "uuid"    # Ljava/lang/String;
    .param p5, "cid"    # Ljava/lang/String;
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "intentRewriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;

    .prologue
    .line 113
    invoke-static/range {p1 .. p7}, Lbwp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 114
    return-void
.end method

.method public final a(Lbyu;)V
    .locals 2
    .param p1, "listener"    # Lbyu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 174
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    .line 4210
    iget-object v1, v0, Lbws;->a:Lbwq;

    if-eqz v1, :cond_0

    .line 4211
    iget-object v0, v0, Lbws;->a:Lbwq;

    .line 4385
    iput-object p1, v0, Lbwq;->o:Lbyu;

    .line 175
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsReqObject;Lcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "req"    # Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsReqObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsReqObject;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;>;"
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbxe;->a(Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsReqObject;Lcom/alibaba/wukong/Callback;)V

    .line 139
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;Lcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "req"    # Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersRspObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersRspObject;>;"
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbxe;->a(Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;Lcom/alibaba/wukong/Callback;)V

    .line 149
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;Ljava/lang/String;)V
    .locals 11
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;
    .param p2, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x2

    const/4 v10, 0x5

    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 184
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v1

    invoke-virtual {v1, v3}, Lbws;->a(Z)Lbwq;

    move-result-object v0

    .line 185
    .local v0, "livePlayer":Lbwq;
    if-eqz v0, :cond_0

    .line 6165
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 6166
    :cond_0
    :goto_0
    return-void

    .line 6168
    :cond_1
    iget-object v1, v0, Lbwq;->h:Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lbwq;->j:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lbwq;->j:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->uuid:Ljava/lang/String;

    iget-object v5, p1, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->uuid:Ljava/lang/String;

    .line 6170
    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lbwq;->j:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->key:Ljava/lang/String;

    iget-object v5, p1, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->key:Ljava/lang/String;

    .line 6171
    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6175
    :cond_2
    iput-object p2, v0, Lbwq;->h:Ljava/lang/String;

    .line 6176
    iput-object p1, v0, Lbwq;->j:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    .line 6177
    invoke-virtual {v0, v2}, Lbwq;->a(I)V

    .line 6179
    iget-object v1, v0, Lbwq;->k:Landroid/app/Activity;

    iget-object v5, v0, Lbwq;->j:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    .line 7020
    new-array v6, v10, [Ljava/lang/String;

    iget-object v7, v5, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->liveUrlHigh:Ljava/lang/String;

    aput-object v7, v6, v3

    iget-object v7, v5, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->liveUrlNormal:Ljava/lang/String;

    aput-object v7, v6, v2

    iget-object v7, v5, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->liveUrlLow:Ljava/lang/String;

    aput-object v7, v6, v9

    const/4 v7, 0x3

    iget-object v8, v5, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->liveUrlVeryLow:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->liveUrlUltraLow:Ljava/lang/String;

    aput-object v5, v6, v7

    .line 7028
    new-array v5, v10, [Ljava/lang/String;

    .line 7029
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lbtp$g;->dt_lv_live_bit_rate_5:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    .line 7030
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lbtp$g;->dt_lv_live_bit_rate_4:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    .line 7031
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lbtp$g;->dt_lv_live_bit_rate_3:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v9

    const/4 v7, 0x3

    .line 7032
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lbtp$g;->dt_lv_live_bit_rate_2:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x4

    .line 7033
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v8, Lbtp$g;->dt_lv_live_bit_rate_1:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v7

    .line 7036
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v1, v3

    .line 7037
    :goto_1
    if-ge v1, v10, :cond_4

    .line 7038
    aget-object v8, v6, v1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 7039
    new-instance v8, Lcom/taobao/taolive/sdk/model/common/UrlInfo;

    invoke-direct {v8}, Lcom/taobao/taolive/sdk/model/common/UrlInfo;-><init>()V

    .line 7040
    aget-object v9, v6, v1

    iput-object v9, v8, Lcom/taobao/taolive/sdk/model/common/UrlInfo;->url:Ljava/lang/String;

    .line 7041
    aget-object v9, v5, v1

    iput-object v9, v8, Lcom/taobao/taolive/sdk/model/common/UrlInfo;->clarity:Ljava/lang/String;

    .line 7042
    iput v1, v8, Lcom/taobao/taolive/sdk/model/common/UrlInfo;->level:I

    .line 7043
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7037
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6179
    :cond_4
    iput-object v7, v0, Lbwq;->i:Ljava/util/ArrayList;

    .line 6180
    iget-object v1, v0, Lbwq;->h:Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v0, Lbwq;->j:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->uuid:Ljava/lang/String;

    .line 6181
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v5

    invoke-virtual {v5}, Lbwr;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 6182
    invoke-virtual {v0}, Lbwq;->f()V

    .line 6187
    :goto_2
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v1

    iget-object v5, v0, Lbwq;->h:Ljava/lang/String;

    .line 8047
    iput-object v5, v1, Lbwr;->c:Ljava/lang/String;

    .line 6188
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v1

    iget-object v5, v0, Lbwq;->j:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    .line 9039
    iput-object v5, v1, Lbwr;->b:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    .line 6190
    iget-object v5, v0, Lbwq;->l:Lbwy;

    iget-object v1, v0, Lbwq;->j:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    .line 9117
    if-eqz v1, :cond_6

    .line 9121
    iget-object v6, v5, Lbwy;->c:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9122
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    iget-wide v8, v1, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->anchor:J

    invoke-virtual {v6, v8, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v6

    .line 9123
    if-eqz v6, :cond_5

    .line 9124
    iget-object v7, v5, Lbwy;->b:Landroid/widget/TextView;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9126
    :cond_5
    iget v1, v1, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->type:I

    if-ne v1, v2, :cond_10

    move v1, v2

    .line 9127
    :goto_3
    iget-object v6, v5, Lbwy;->a:Landroid/widget/TextView;

    if-eqz v1, :cond_11

    move v1, v3

    :goto_4
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9128
    iget-object v1, v5, Lbwy;->a:Landroid/widget/TextView;

    invoke-static {v1}, Lbxl;->a(Landroid/widget/TextView;)V

    .line 6191
    :cond_6
    iget-object v5, v0, Lbwq;->m:Lbwv;

    iget-object v6, v0, Lbwq;->j:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    .line 9291
    if-eqz v6, :cond_9

    .line 9295
    iget-object v1, v5, Lbwv;->f:Landroid/widget/TextView;

    iget-object v7, v6, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->title:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9296
    iget v1, v6, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->type:I

    if-ne v1, v2, :cond_12

    move v1, v2

    .line 9297
    :goto_5
    iget-object v7, v5, Lbwv;->g:Landroid/widget/TextView;

    if-eqz v1, :cond_13

    move v1, v3

    :goto_6
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9298
    iget-object v1, v5, Lbwv;->g:Landroid/widget/TextView;

    invoke-static {v1}, Lbxl;->a(Landroid/widget/TextView;)V

    .line 9299
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->anchor:J

    invoke-virtual {v1, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v1

    .line 9300
    if-eqz v1, :cond_7

    .line 9301
    iget-object v6, v5, Lbwv;->d:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9302
    iget-object v6, v5, Lbwv;->h:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v7, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 10167
    const/4 v8, 0x0

    invoke-virtual {v6, v7, v1, v8}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 9304
    :cond_7
    iget-object v1, v5, Lbwv;->q:Lbwv$a;

    if-eqz v1, :cond_8

    .line 9305
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v1

    .line 11059
    iget-object v1, v1, Lbwr;->a:Lcom/taobao/taolive/sdk/model/common/UrlInfo;

    .line 9305
    invoke-virtual {v5, v1}, Lbwv;->a(Lcom/taobao/taolive/sdk/model/common/UrlInfo;)V

    .line 9308
    :cond_8
    invoke-virtual {v5, v2}, Lbwv;->b(Z)V

    .line 11292
    :cond_9
    iget-object v1, v0, Lbwq;->p:Lbwf;

    if-nez v1, :cond_a

    .line 11293
    new-instance v1, Lbwq$4;

    invoke-direct {v1, v0}, Lbwq$4;-><init>(Lbwq;)V

    iput-object v1, v0, Lbwq;->p:Lbwf;

    .line 11317
    invoke-static {}, Lbwg;->a()Lbwg;

    move-result-object v1

    iget-object v2, v0, Lbwq;->p:Lbwf;

    invoke-virtual {v1, v2}, Lbwg;->a(Lbwf;)V

    .line 11329
    :cond_a
    iget-object v1, v0, Lbwq;->q:Lbtv;

    if-nez v1, :cond_b

    .line 11330
    new-instance v1, Lbwq$5;

    invoke-direct {v1, v0}, Lbwq$5;-><init>(Lbwq;)V

    iput-object v1, v0, Lbwq;->q:Lbtv;

    .line 11358
    iget-object v1, v0, Lbwq;->q:Lbtv;

    invoke-virtual {v1}, Lbtv;->b()V

    .line 11359
    iget-object v1, v0, Lbwq;->q:Lbtv;

    iget-object v2, v0, Lbwq;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lbtv;->b(Ljava/lang/String;)V

    .line 12247
    :cond_b
    iget-object v1, v0, Lbwq;->s:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompatAdapter;

    if-nez v1, :cond_c

    .line 12248
    new-instance v1, Lbwq$3;

    invoke-direct {v1, v0}, Lbwq$3;-><init>(Lbwq;)V

    iput-object v1, v0, Lbwq;->s:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompatAdapter;

    .line 12276
    const-string/jumbo v1, "LIFECYCLE"

    .line 12277
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 12278
    iget-object v2, v0, Lbwq;->s:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompatAdapter;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerActivityLifecycleCallbacks(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V

    .line 6195
    :cond_c
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v1

    invoke-virtual {v1}, Lbws;->f()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 6196
    invoke-virtual {v0}, Lbwq;->g()V

    .line 6197
    iget-object v1, v0, Lbwq;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6198
    iget-object v1, v0, Lbwq;->c:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6199
    invoke-virtual {v0}, Lbwq;->e()V

    .line 6202
    :cond_d
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v2

    .line 12441
    const/4 v1, 0x0

    iput-object v1, v2, Lbws;->k:[Ljava/lang/String;

    .line 12442
    iput v3, v2, Lbws;->g:I

    .line 12443
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v1

    .line 13035
    iget-object v1, v1, Lbwr;->b:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    .line 12444
    if-eqz v1, :cond_e

    .line 12447
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->liveUrlNormal:Ljava/lang/String;

    .line 12449
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 12450
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 12451
    if-eqz v1, :cond_e

    .line 12452
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 12453
    if-eqz v4, :cond_e

    .line 12454
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/threadpool/Thread;

    iput-object v1, v2, Lbws;->j:Lcom/alibaba/doraemon/threadpool/Thread;

    .line 12455
    iget-object v1, v2, Lbws;->j:Lcom/alibaba/doraemon/threadpool/Thread;

    new-instance v5, Lbws$3;

    invoke-direct {v5, v2, v4}, Lbws$3;-><init>(Lbws;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 6204
    :cond_e
    iget-boolean v1, v0, Lbwq;->g:Z

    if-eqz v1, :cond_0

    .line 6205
    iput-boolean v3, v0, Lbwq;->g:Z

    .line 6206
    invoke-virtual {v0}, Lbwq;->e()V

    goto/16 :goto_0

    .line 6184
    :cond_f
    iget-object v1, v0, Lbwq;->c:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6185
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v1

    iget-object v5, v0, Lbwq;->i:Ljava/util/ArrayList;

    invoke-static {v5}, Lbyr;->a(Ljava/util/ArrayList;)Lcom/taobao/taolive/sdk/model/common/UrlInfo;

    move-result-object v5

    .line 7063
    iput-object v5, v1, Lbwr;->a:Lcom/taobao/taolive/sdk/model/common/UrlInfo;

    goto/16 :goto_2

    :cond_10
    move v1, v3

    .line 9126
    goto/16 :goto_3

    :cond_11
    move v1, v4

    .line 9127
    goto/16 :goto_4

    :cond_12
    move v1, v3

    .line 9296
    goto/16 :goto_5

    :cond_13
    move v1, v4

    .line 9297
    goto/16 :goto_6
.end method

.method public final a(Lcom/alibaba/wukong/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/livebase/model/LiveConversationObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 304
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/android/dingtalk/livebase/model/LiveConversationObject;>;>;"
    if-nez p1, :cond_0

    .line 327
    :goto_0
    return-void

    .line 308
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl$2;-><init>(Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl;Lcom/alibaba/wukong/Callback;)V

    .line 326
    .local v0, "sessionCallback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lbyb;>;>;"
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lbyn;->a(Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;Z)V
    .locals 7
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "enabled"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 264
    .line 18078
    if-eqz p1, :cond_0

    .line 18081
    if-eqz p2, :cond_1

    const-string/jumbo v6, "0"

    .line 18082
    :goto_0
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v1

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    .line 18458
    new-instance v0, Lbxe$25;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, v1, Lbxe;->a:Ljava/util/concurrent/Executor;

    invoke-direct/range {v0 .. v6}, Lbxe$25;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V

    .line 18464
    invoke-virtual {v0}, Lbxe$25;->start()V

    .line 265
    :cond_0
    return-void

    .line 18081
    :cond_1
    const-string/jumbo v6, "1"

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;IIIIILjava/lang/String;ILcom/alibaba/wukong/Callback;)V
    .locals 11
    .param p1, "liveUrl"    # Ljava/lang/String;
    .param p2, "playerType"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "isLandscape"    # I
    .param p6, "visitAuth"    # I
    .param p7, "poster"    # Ljava/lang/String;
    .param p8, "playerContentMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/lang/String;",
            "I",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 218
    .local p9, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-static {}, Lbxs;->a()Lbxs;

    move-result-object v1

    .line 17039
    iget-object v2, v1, Lbxs;->a:Lbxr;

    if-eqz v2, :cond_1

    .line 17040
    iget-object v1, v1, Lbxs;->a:Lbxr;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lbxr;->a(Ljava/lang/String;IIIIILjava/lang/String;ILcom/alibaba/wukong/Callback;)V

    :cond_0
    :goto_0
    return-void

    .line 17042
    :cond_1
    if-eqz p9, :cond_0

    .line 17043
    const-string/jumbo v1, "404"

    const-string/jumbo v2, "Failed init LargeLiveActivity"

    move-object/from16 v0, p9

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "liveUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;>;"
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lbxe;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 144
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "isRedDot"    # Z

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbyk;->a(Ljava/lang/String;Z)V

    .line 280
    return-void
.end method

.method public final a(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 374
    invoke-static {p1}, Lcom/taobao/taolive/sdk/utils/DingTalkUtils;->isAutoPlay(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 254
    invoke-static {p1}, Lbyj;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 284
    .line 22013
    invoke-static {p1}, Lbyk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbyp;->a(Ljava/lang/String;)Z

    move-result v0

    .line 284
    return v0
.end method

.method public final b(Landroid/app/Activity;Landroid/view/ViewGroup;)Lbyt;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/ViewGroup;

    .prologue
    .line 289
    new-instance v0, Lbxt;

    invoke-direct {v0, p1, p2}, Lbxt;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public final b(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 299
    .line 22338
    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22339
    :cond_0
    :goto_0
    return-void

    .line 22341
    :cond_1
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v0

    .line 23069
    iget-boolean v0, v0, Lbtq;->d:Z

    .line 22341
    if-nez v0, :cond_0

    .line 22346
    new-instance v0, Lbyq$10;

    invoke-direct {v0, p1, p2}, Lbyq$10;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 22369
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v0, v2, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 22370
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-interface {v1, v0, p2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "intentRewriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 81
    .line 1043
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://live.dingtalk.com/pushstream.html"

    new-instance v2, Lbwp$6;

    invoke-direct {v2, p3, p2, p1}, Lbwp$6;-><init>(Lcom/alibaba/doraemon/navigator/IntentRewriter;Ljava/lang/String;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 82
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 153
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0}, Lbws;->f()Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/app/Activity;)Z
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 197
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    .line 14268
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lbws;->a(Landroid/app/Activity;Z)Z

    move-result v0

    .line 197
    return v0
.end method

.method public final b(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 259
    invoke-static {p1}, Lbyj;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 158
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    .line 3113
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbws;->a(Z)Lbwq;

    move-result-object v0

    .line 3114
    invoke-virtual {v0}, Lbwq;->e()V

    .line 159
    return-void
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "intentRewriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 92
    .line 1059
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://live.dingtalk.com/group_anchor_list.html"

    new-instance v2, Lbwp$7;

    invoke-direct {v2, p3, p2, p1}, Lbwp$7;-><init>(Lcom/alibaba/doraemon/navigator/IntentRewriter;Ljava/lang/String;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 93
    return-void
.end method

.method public final c(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 3
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 269
    .line 19120
    invoke-static {p1}, Lbyj;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 19272
    if-nez p1, :cond_2

    move v1, v0

    .line 19120
    :goto_0
    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    .line 19277
    :cond_2
    const-string/jumbo v1, "liveRecordSwitcher"

    invoke-interface {p1, v1}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19278
    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 169
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0}, Lbws;->d()V

    .line 170
    return-void
.end method

.method public final d(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "playUrl"    # Ljava/lang/String;
    .param p3, "intentRewriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 107
    move-object v0, p1

    move-object v1, p2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lbwp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 108
    return-void
.end method

.method public final e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 179
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    .line 5216
    iget-object v1, v0, Lbws;->a:Lbwq;

    if-eqz v1, :cond_0

    .line 5217
    iget-object v0, v0, Lbws;->a:Lbwq;

    .line 5389
    const/4 v1, 0x0

    iput-object v1, v0, Lbwq;->o:Lbyu;

    .line 180
    :cond_0
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 14022
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatWindowUtil;->a()Z

    move-result v0

    .line 192
    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 202
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v0

    .line 15069
    iget-boolean v0, v0, Lbtq;->d:Z

    .line 202
    return v0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 207
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0}, Lbws;->e()V

    .line 208
    return-void
.end method

.method public final i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 224
    invoke-static {}, Lbxs;->a()Lbxs;

    move-result-object v0

    .line 17049
    iget-object v1, v0, Lbxs;->a:Lbxr;

    if-eqz v1, :cond_0

    .line 17050
    iget-object v0, v0, Lbxs;->a:Lbxr;

    invoke-interface {v0}, Lbxr;->a()V

    .line 225
    :cond_0
    return-void
.end method

.method public init(Landroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 55
    return-void
.end method

.method public final j()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 229
    invoke-static {}, Lbxs;->a()Lbxs;

    move-result-object v0

    .line 17055
    iget-object v1, v0, Lbxs;->a:Lbxr;

    if-eqz v1, :cond_0

    .line 17056
    iget-object v0, v0, Lbxs;->a:Lbxr;

    invoke-interface {v0}, Lbxr;->b()V

    .line 230
    :cond_0
    return-void
.end method

.method public final k()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 234
    invoke-static {}, Lbxs;->a()Lbxs;

    move-result-object v0

    .line 17061
    iget-object v1, v0, Lbxs;->a:Lbxr;

    if-eqz v1, :cond_0

    .line 17062
    iget-object v0, v0, Lbxs;->a:Lbxr;

    invoke-interface {v0}, Lbxr;->c()V

    .line 235
    :cond_0
    return-void
.end method

.method public final l()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 239
    invoke-static {}, Lbxs;->a()Lbxs;

    move-result-object v0

    .line 17067
    iget-object v1, v0, Lbxs;->a:Lbxr;

    if-eqz v1, :cond_0

    .line 17068
    iget-object v0, v0, Lbxs;->a:Lbxr;

    invoke-interface {v0}, Lbxr;->d()V

    .line 240
    :cond_0
    return-void
.end method

.method public final m()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 244
    invoke-static {}, Lbxs;->a()Lbxs;

    move-result-object v0

    .line 17073
    iget-object v1, v0, Lbxs;->a:Lbxr;

    if-eqz v1, :cond_0

    .line 17074
    iget-object v0, v0, Lbxs;->a:Lbxr;

    invoke-interface {v0}, Lbxr;->e()V

    .line 245
    :cond_0
    return-void
.end method

.method public final n()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 249
    invoke-static {}, Lbxs;->a()Lbxs;

    move-result-object v0

    .line 17079
    iget-object v1, v0, Lbxs;->a:Lbxr;

    if-eqz v1, :cond_0

    .line 17080
    iget-object v0, v0, Lbxs;->a:Lbxr;

    invoke-interface {v0}, Lbxr;->f()V

    .line 250
    :cond_0
    return-void
.end method

.method public final o()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 20161
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_live_viewer_enabled"

    .line 21083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 274
    return v0
.end method

.method public onApplicationCreate()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->onApplicationCreate()V

    .line 60
    invoke-static {}, Lbwk;->a()Lbwk;

    invoke-static {}, Lbwk;->b()V

    .line 61
    return-void
.end method

.method public final p()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 22137
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "im_show_living_flag"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    .line 294
    return v0
.end method
