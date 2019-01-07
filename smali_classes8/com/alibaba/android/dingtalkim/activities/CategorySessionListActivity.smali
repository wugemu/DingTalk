.class public Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;
.super Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;
.source "CategorySessionListActivity.java"


# instance fields
.field private c:Z

.field private d:Landroid/view/MenuItem;

.field private e:Landroid/widget/LinearLayout;

.field private f:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

.field private g:Liak;

.field private h:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->e:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->c:Z

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v0, 0x0

    .line 42
    .line 3193
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    if-nez v1, :cond_1

    .line 3197
    :cond_0
    :goto_0
    return v0

    .line 3196
    :cond_1
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->c:Z

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    iget-wide v2, v2, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {p1, v1, v2, v3}, Liap;->a(Lcom/alibaba/wukong/im/Conversation;ZJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3197
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;)Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->h:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->f:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->f:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->g()V

    .line 207
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 59
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    sget v2, Lctk$g;->layout_category_session_list:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "intent_key_category_model"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/category/CategoryObject;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 67
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    iget-wide v2, v2, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->finish()V

    .line 69
    const-string/jumbo v2, "im"

    const/4 v3, 0x0

    const-string/jumbo v4, "CategorySessionListActivity param invalid"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_2
    :goto_0
    return-void

    .line 73
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v2, :cond_4

    .line 74
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    iget-object v3, v3, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    iget-wide v4, v4, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v3, v4, v5}, Ldde;->a(Ljava/lang/String;J)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    iget-wide v2, v2, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v2, v3}, Ldde;->a(J)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->c:Z

    .line 79
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getSwitchProxy()Lcom/alibaba/wukong/im/SwitchProviderProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/SwitchProviderProxy;->loadConversationsUseV3()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 80
    const/4 v2, 0x4

    new-array v2, v2, [Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    sget-object v3, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->Shopping:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    aput-object v3, v2, v7

    sget-object v3, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->CampusHr:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    aput-object v3, v2, v6

    sget-object v3, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->CampusStudent:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    aput-object v3, v2, v8

    sget-object v3, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->CommonSecondaryConversation:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    aput-object v3, v2, v9

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 84
    .local v1, "filterTypes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;>;"
    :goto_1
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Ljava/util/List;)Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->h:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    .line 1028
    new-instance v2, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;-><init>()V

    .line 86
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->f:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    .line 87
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 88
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "intent_key_category_model"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 89
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->f:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 90
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->f:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    .line 1082
    iput-boolean v6, v2, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->d:Z

    .line 91
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->f:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    sget v3, Lctk$g;->fragment_category_session_empty:I

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->a(ILdbz;)V

    .line 118
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->f:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->a(Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;)V

    .line 151
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lctk$f;->root_view:I

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->f:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->b()I

    .line 1156
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->g:Liak;

    if-nez v2, :cond_2

    .line 1157
    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->g:Liak;

    .line 1175
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    const-class v3, Lcom/alibaba/wukong/im/CategoryService;

    invoke-virtual {v2, v3}, Lcom/alibaba/wukong/im/context/IMModule;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/CategoryService;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->g:Liak;

    invoke-interface {v2, v3}, Lcom/alibaba/wukong/im/CategoryService;->addCategoryChangeListener(Liak;)V

    goto/16 :goto_0

    .line 82
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "filterTypes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;>;"
    :cond_5
    new-array v2, v9, [Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    sget-object v3, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->Shopping:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    aput-object v3, v2, v7

    sget-object v3, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->CampusHr:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    aput-object v3, v2, v6

    sget-object v3, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->CampusStudent:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    aput-object v3, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .restart local v1    # "filterTypes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;>;"
    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 211
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 212
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->c:Z

    if-eqz v2, :cond_0

    .line 213
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    .line 225
    :goto_0
    return v2

    .line 216
    :cond_0
    new-instance v0, Lecw;

    sget v2, Lctk$i;->icon_setting:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lctk$c;->ui_common_theme_icon_bg_color:I

    invoke-static {v3}, Leda;->b(I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 217
    .local v0, "dtIconFontDrawable":Lecw;
    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {p0, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 2079
    .local v1, "size":I
    iput v1, v0, Lecw;->b:I

    .line 3070
    iput v1, v0, Lecw;->a:I

    .line 221
    sget v2, Lctk$i;->dt_im_category_setting:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v5, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->d:Landroid/view/MenuItem;

    .line 222
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->d:Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 223
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->d:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 225
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 188
    .line 1180
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->g:Liak;

    if-eqz v0, :cond_0

    .line 1181
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    const-class v1, Lcom/alibaba/wukong/im/CategoryService;

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/im/context/IMModule;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/CategoryService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->g:Liak;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/CategoryService;->removeCategoryChangeListener(Liak;)V

    .line 1182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->g:Liak;

    .line 189
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->onDestroy()V

    .line 190
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 238
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 244
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 240
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 3105
    if-eqz p0, :cond_0

    if-eqz v1, :cond_0

    .line 3109
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v2, "https://qr.dingtalk.com/category_setting.html"

    new-instance v3, Ldde$4;

    invoke-direct {v3, v1}, Ldde$4;-><init>(Lcom/alibaba/wukong/im/category/CategoryObject;)V

    invoke-interface {v0, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
