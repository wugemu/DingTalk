.class public Lcom/alibaba/android/search/activity/GlobalSearchActivity;
.super Lcom/alibaba/android/search/activity/BaseHistorySearchActivity;
.source "GlobalSearchActivity.java"

# interfaces
.implements Lenw;


# instance fields
.field private f:Lcoi;

.field private g:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/EditText;

.field private j:Z

.field private k:Landroid/text/TextWatcher;

.field private l:Z

.field private m:J

.field private n:Ljava/lang/String;

.field private o:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/alibaba/android/search/activity/BaseHistorySearchActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/activity/GlobalSearchActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/GlobalSearchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/activity/GlobalSearchActivity;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/GlobalSearchActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->a(ZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "enableActivityHint"    # Z
    .param p2, "showActivityHint"    # Z
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "queryHint"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 295
    iput-boolean p2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->l:Z

    .line 296
    iget-object v2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->b:Landroid/widget/SearchView;

    invoke-virtual {v2, p4}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->i:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->h()Z

    move-result v2

    if-nez v2, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->k:Landroid/text/TextWatcher;

    if-eqz v2, :cond_2

    .line 303
    iget-object v2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->i:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->k:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 306
    :cond_2
    if-eqz p2, :cond_5

    .line 307
    invoke-static {}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->a()Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->b()Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;

    move-result-object v1

    .line 308
    .local v1, "config":Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;
    if-eqz v1, :cond_0

    .line 312
    iget-object v2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 313
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->j:Z

    .line 314
    iget-object v2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->i:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lemt$b;->search_hint_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 315
    iget-object v2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v2, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 317
    const-string/jumbo v2, "IMAGE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v3, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->h:Landroid/widget/ImageView;

    .line 318
    invoke-virtual {v1}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->getQueryHintClickImgUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 317
    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 334
    .end local v1    # "config":Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;
    :cond_3
    :goto_1
    if-eqz p1, :cond_0

    .line 335
    iget-object v2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->k:Landroid/text/TextWatcher;

    if-eqz v2, :cond_4

    .line 336
    iget-object v2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->i:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->k:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 339
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->i:Landroid/widget/EditText;

    new-instance v3, Lcom/alibaba/android/search/activity/GlobalSearchActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/search/activity/GlobalSearchActivity$3;-><init>(Lcom/alibaba/android/search/activity/GlobalSearchActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 321
    :cond_5
    iput-boolean v5, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->j:Z

    .line 323
    iget-object v2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->i:Landroid/widget/EditText;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 324
    new-instance v0, Lecw;

    sget v2, Lemt$g;->icon_roundclose_fill:I

    invoke-static {v2}, Leda;->a(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lemt$b;->ui_common_level1_icon_bg_color:I

    .line 325
    invoke-static {v3}, Leda;->b(I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 326
    .local v0, "closeDrawable":Lecw;
    iget-object v2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 328
    iget-object v2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 329
    if-eqz p3, :cond_3

    .line 330
    iget-object v2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->i:Landroid/widget/EditText;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/search/activity/GlobalSearchActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/search/activity/GlobalSearchActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->j:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/search/activity/GlobalSearchActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->a:Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->g:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->b(Ljava/lang/String;)V

    .line 288
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 114
    sget v0, Lemt$f;->activity_fragment:I

    return v0
.end method

.method public final a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "enableActivityHint"    # Z
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "queryHint"    # Ljava/lang/String;

    .prologue
    .line 351
    invoke-direct {p0, p1, p1, p2, p3}, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->a(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 109
    sget v0, Lemt$g;->global_search:I

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 274
    invoke-super {p0, p1}, Lcom/alibaba/android/search/activity/BaseHistorySearchActivity;->b(Ljava/lang/String;)V

    .line 276
    iget-boolean v0, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->j:Z

    if-eqz v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .param p1, "menu"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->n:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->n:Ljava/lang/String;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 120
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g()Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->MSG:Lcom/alibaba/android/search/SearchGroupType;

    if-ne v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->o:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->b:Landroid/widget/SearchView;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 123
    iget-object v0, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->g:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .line 1340
    iget-object v1, v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->d:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->a(Z)V

    .line 1341
    invoke-virtual {v0, v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;)V

    .line 124
    iput-object v3, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->o:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    .line 132
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/search/activity/BaseHistorySearchActivity;->onBackPressed()V

    .line 131
    iget-object v0, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->g:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->i()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 82
    invoke-super {p0, p1}, Lcom/alibaba/android/search/activity/BaseHistorySearchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->hideToolbarDivide()V

    .line 85
    sget v1, Lemt$e;->ll_root_fragment_container:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 86
    new-instance v1, Lcoi;

    sget v2, Lemt$e;->ll_root_fragment_container:I

    invoke-direct {v1, p0, v2}, Lcoi;-><init>(Landroid/support/v4/app/FragmentActivity;I)V

    iput-object v1, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->f:Lcoi;

    .line 87
    new-instance v1, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-direct {v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->g:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "choose_mode"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->c:I

    .line 93
    const-string/jumbo v1, "choose_mode"

    iget v2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    const-string/jumbo v1, "intent_key_search_show_more"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    const-string/jumbo v1, "intent_key_search_show_feedback"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    const-string/jumbo v1, "intent_key_search_entry"

    sget-object v2, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->HP:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_search_support_demission_colleague"

    invoke-virtual {v1, v2, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "search_support_demission_colleague"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    const-string/jumbo v1, "intent_key_search_demission_colleague"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->g:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 103
    iget-object v1, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->f:Lcoi;

    const-class v2, Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->g:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .line 1082
    invoke-virtual {v1, v2, v3, v5}, Lcoi;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;Z)V

    .line 104
    invoke-static {}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a()Lcom/alibaba/android/search/service/SearchHistoryManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/search/service/SearchHistoryManager;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->m:J

    .line 105
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 160
    invoke-super {p0, p1}, Lcom/alibaba/android/search/activity/BaseHistorySearchActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 2172
    .local v1, "handled":Z
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->b:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "search_src_text"

    const-string/jumbo v4, "id"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2173
    iget-object v3, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->b:Landroid/widget/SearchView;

    invoke-virtual {v3, v2}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->i:Landroid/widget/EditText;

    .line 2174
    iget-object v2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->i:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 2177
    const-string/jumbo v2, "pref_key_search_query_length"

    const/16 v3, 0x14

    .line 2178
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2177
    invoke-static {p0, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v2

    .line 2179
    iget-object v3, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->i:Landroid/widget/EditText;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v6, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2181
    invoke-static {}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->a()Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->c()Ljava/lang/String;

    move-result-object v3

    .line 2182
    iget-object v2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->b:Landroid/widget/SearchView;

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 2183
    invoke-static {}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->a()Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->b()Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;

    move-result-object v4

    .line 2184
    if-eqz v4, :cond_0

    .line 2188
    invoke-virtual {v4}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->hasActivityQueryHints()Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->l:Z

    .line 2190
    iget-object v2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->i:Landroid/widget/EditText;

    new-instance v5, Lcom/alibaba/android/search/activity/GlobalSearchActivity$1;

    invoke-direct {v5, p0, v3}, Lcom/alibaba/android/search/activity/GlobalSearchActivity$1;-><init>(Lcom/alibaba/android/search/activity/GlobalSearchActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2203
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2207
    iget-object v2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->b:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v5, "search_close_btn"

    const-string/jumbo v6, "id"

    const-string/jumbo v7, "android"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2208
    iget-object v5, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->b:Landroid/widget/SearchView;

    invoke-virtual {v5, v2}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->h:Landroid/widget/ImageView;

    .line 2209
    iget-object v2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->h:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    invoke-virtual {v4}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->showQuickHintActionBtn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v1

    .line 2213
    :cond_1
    new-instance v2, Lcom/alibaba/android/search/activity/GlobalSearchActivity$2;

    invoke-direct {v2, p0, v4, v3}, Lcom/alibaba/android/search/activity/GlobalSearchActivity$2;-><init>(Lcom/alibaba/android/search/activity/GlobalSearchActivity;Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->k:Landroid/text/TextWatcher;

    .line 2251
    const/4 v2, 0x1

    const/4 v4, 0x1

    const-string/jumbo v5, ""

    invoke-direct {p0, v2, v4, v5, v3}, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->a(ZZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "exception handleActivitySearchView:"

    aput-object v3, v2, v9

    invoke-static {v0}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    .line 3050
    const-string/jumbo v4, "search"

    invoke-static {v4, v2, v3}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 356
    invoke-static {}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a()Lcom/alibaba/android/search/service/SearchHistoryManager;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->m:J

    .line 3201
    iget-wide v4, v0, Lcom/alibaba/android/search/service/SearchHistoryManager;->f:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_1

    .line 3204
    iget-object v1, v0, Lcom/alibaba/android/search/service/SearchHistoryManager;->a:Ljava/util/List;

    monitor-enter v1

    .line 3205
    :try_start_0
    iget-boolean v2, v0, Lcom/alibaba/android/search/service/SearchHistoryManager;->d:Z

    if-eqz v2, :cond_0

    .line 3206
    iget-object v2, v0, Lcom/alibaba/android/search/service/SearchHistoryManager;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3207
    iget-object v2, v0, Lcom/alibaba/android/search/service/SearchHistoryManager;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3208
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/alibaba/android/search/service/SearchHistoryManager;->d:Z

    .line 3210
    iget-object v2, v0, Lcom/alibaba/android/search/service/SearchHistoryManager;->e:Lcom/alibaba/wukong/im/ConversationService;

    iget-object v3, v0, Lcom/alibaba/android/search/service/SearchHistoryManager;->g:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-interface {v2, v3}, Lcom/alibaba/wukong/im/ConversationService;->removeConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 3211
    iget-object v2, v0, Lcom/alibaba/android/search/service/SearchHistoryManager;->e:Lcom/alibaba/wukong/im/ConversationService;

    iget-object v0, v0, Lcom/alibaba/android/search/service/SearchHistoryManager;->h:Lcom/alibaba/wukong/im/ConversationListener;

    invoke-interface {v2, v0}, Lcom/alibaba/wukong/im/ConversationService;->removeConversationListener(Lcom/alibaba/wukong/im/ConversationListener;)V

    .line 3212
    const-string/jumbo v0, "search history manager, reset finished"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 4050
    const-string/jumbo v3, "search"

    invoke-static {v3, v0, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3214
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/search/activity/BaseHistorySearchActivity;->onDestroy()V

    .line 358
    return-void

    .line 3214
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/alibaba/android/search/activity/BaseHistorySearchActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 150
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    const-string/jumbo v0, "MsgNarrowModel"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    iput-object v0, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->o:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    .line 152
    iget-object v0, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->g:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->o:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    .line 1346
    if-eqz v1, :cond_0

    .line 1350
    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->o:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 256
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 269
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/search/activity/BaseHistorySearchActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 259
    :pswitch_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->onBackPressed()V

    .line 261
    const/4 v0, 0x1

    goto :goto_1

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->g:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->i()V

    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
