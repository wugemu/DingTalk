.class public Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "ConversationBaseActivity.java"


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Landroid/widget/TextView;

.field private c:Lcom/alibaba/wukong/im/Conversation;

.field private d:Liak;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 8
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 91
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->a:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->b:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 95
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0x10

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 2036
    :cond_2
    const-string/jumbo v3, "pref_key_efficient_mode_open"

    invoke-static {v3, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v3

    .line 98
    if-eqz v3, :cond_5

    .line 2137
    invoke-static {p1, v2}, Ldza;->a(Lcom/alibaba/wukong/im/Conversation;Z)J

    move-result-wide v0

    .line 100
    .local v0, "categoryId":J
    invoke-static {v0, v1}, Liap;->a(J)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 101
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->a:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Ldde;->b(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const-wide/16 v4, 0x1

    cmp-long v3, v0, v4

    if-nez v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->a(Z)V

    goto :goto_0

    .line 106
    :cond_4
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->a(Z)V

    .line 107
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    const-class v3, Lcom/alibaba/wukong/im/CategoryService;

    invoke-virtual {v2, v3}, Lcom/alibaba/wukong/im/context/IMModule;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/CategoryService;

    .line 108
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity$3;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;)V

    const-class v5, Lcom/alibaba/wukong/Callback;

    invoke-interface {v3, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/Callback;

    .line 107
    invoke-interface {v2, v0, v1, v3}, Lcom/alibaba/wukong/im/CategoryService;->getCategoryById(JLcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 138
    .end local v0    # "categoryId":J
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->a:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 0
    .param p1, "isTop"    # Z

    .prologue
    .line 144
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1052
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->d:Liak;

    if-nez v0, :cond_0

    .line 1053
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->d:Liak;

    .line 1071
    const-class v0, Lcom/alibaba/wukong/im/CategoryService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/CategoryService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->d:Liak;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/CategoryService;->addCategoryChangeListener(Liak;)V

    .line 48
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->d:Liak;

    if-eqz v0, :cond_0

    .line 149
    const-class v0, Lcom/alibaba/wukong/im/CategoryService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/CategoryService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->d:Liak;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/CategoryService;->removeCategoryChangeListener(Liak;)V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->d:Liak;

    .line 152
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 153
    return-void
.end method

.method protected t_()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 76
    sget v0, Lctk$f;->ll_category_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->a:Landroid/view/View;

    .line 77
    sget v0, Lctk$f;->tv_category_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->b:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->a:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method
