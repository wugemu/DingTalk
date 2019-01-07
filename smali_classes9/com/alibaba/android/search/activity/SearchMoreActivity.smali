.class public Lcom/alibaba/android/search/activity/SearchMoreActivity;
.super Lcom/alibaba/android/search/activity/BaseSearchActivity;
.source "SearchMoreActivity.java"


# instance fields
.field private f:Lcoi;

.field private g:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

.field private h:I

.field private i:Lcom/alibaba/android/search/SearchGroupType;

.field private j:Landroid/view/ViewGroup;

.field private k:Z

.field private l:Lenz;

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/alibaba/android/search/activity/BaseSearchActivity;-><init>()V

    .line 64
    sget v0, Lemt$g;->search_box_hint:I

    iput v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->h:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/activity/SearchMoreActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/SearchMoreActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->j:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/search/activity/SearchMoreActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/SearchMoreActivity;

    .prologue
    .line 56
    .line 2277
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->b:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 2278
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/SearchMoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->b:Landroid/widget/SearchView;

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 2279
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->b:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 56
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/search/activity/SearchMoreActivity;)Lcom/alibaba/fastjson/JSONObject;
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/SearchMoreActivity;

    .prologue
    .line 56
    .line 2291
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2292
    const-string/jumbo v1, "keyword"

    iget-object v2, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/search/activity/SearchMoreActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/SearchMoreActivity;

    .prologue
    .line 56
    .line 3284
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->b:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 3285
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/SearchMoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->b:Landroid/widget/SearchView;

    invoke-static {v0, v1}, Lcms;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 3286
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->b:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 56
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/search/activity/SearchMoreActivity;)Lcom/alibaba/fastjson/JSONObject;
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/SearchMoreActivity;

    .prologue
    .line 3297
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 3298
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    .line 3299
    const-string/jumbo v1, "myOpenId"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 234
    sget v0, Lemt$f;->activity_fragment:I

    return v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->h:I

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3
    .param p1, "keyword"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 206
    invoke-super {p0, p1}, Lcom/alibaba/android/search/activity/BaseSearchActivity;->b(Ljava/lang/String;)V

    .line 207
    iput-object p1, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->a:Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    iget-boolean v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->j:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 217
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->k:Z

    if-eqz v0, :cond_3

    .line 218
    iput-boolean v2, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->k:Z

    .line 225
    :cond_1
    :goto_1
    return-void

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->g:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    if-eqz v0, :cond_0

    .line 213
    iget-boolean v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 219
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->g:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    if-eqz v0, :cond_4

    .line 220
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->g:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 222
    :cond_4
    iget-boolean v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->m:Z

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->l:Lenz;

    invoke-virtual {v0, p1}, Lenz;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 305
    invoke-super {p0}, Lcom/alibaba/android/search/activity/BaseSearchActivity;->finish()V

    .line 311
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->l:Lenz;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->l:Lenz;

    invoke-virtual {v0}, Lenz;->d()V

    .line 313
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->l:Lenz;

    invoke-virtual {v0}, Lenz;->e()V

    .line 314
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->l:Lenz;

    invoke-virtual {v0}, Lenz;->f()V

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->l:Lenz;

    .line 317
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-super {p0, p1}, Lcom/alibaba/android/search/activity/BaseSearchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/SearchMoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_search_group_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/android/search/SearchGroupType;->valueOf(I)Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->i:Lcom/alibaba/android/search/SearchGroupType;

    .line 78
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "search_use_miniapp"

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->m:Z

    .line 80
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/SearchMoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "keyword"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->a:Ljava/lang/String;

    .line 81
    sget v0, Lemt$e;->ll_root_fragment_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/activity/SearchMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->j:Landroid/view/ViewGroup;

    .line 83
    iget-boolean v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->m:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->i:Lcom/alibaba/android/search/SearchGroupType;

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->EXTERNAL_CONTACT:Lcom/alibaba/android/search/SearchGroupType;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->i:Lcom/alibaba/android/search/SearchGroupType;

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->DING:Lcom/alibaba/android/search/SearchGroupType;

    if-eq v0, v1, :cond_3

    .line 85
    iput-boolean v3, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->m:Z

    .line 132
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->m:Z

    if-nez v0, :cond_2

    .line 133
    new-instance v0, Lcoi;

    sget v1, Lemt$e;->ll_root_fragment_container:I

    invoke-direct {v0, p0, v1}, Lcoi;-><init>(Landroid/support/v4/app/FragmentActivity;I)V

    iput-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->f:Lcoi;

    .line 1143
    sget-object v0, Lcom/alibaba/android/search/activity/SearchMoreActivity$2;->a:[I

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->i:Lcom/alibaba/android/search/SearchGroupType;

    invoke-virtual {v1}, Lcom/alibaba/android/search/SearchGroupType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1184
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->g:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    if-eqz v0, :cond_1

    .line 1185
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1186
    const-string/jumbo v1, "choose_mode"

    iget v2, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1187
    const-string/jumbo v1, "keyword"

    iget-object v2, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    const-string/jumbo v1, "intent_key_show_fragment_title"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1189
    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->g:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->g:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->f:Lcoi;

    const-class v1, Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->g:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    .line 2082
    invoke-virtual {v0, v1, v2, v3}, Lcoi;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;Z)V

    .line 140
    :cond_2
    return-void

    .line 89
    :cond_3
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->isMiniAppComponentFeatureActived()Z

    move-result v0

    if-nez v0, :cond_4

    .line 90
    iput-boolean v3, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->m:Z

    .line 91
    const-string/jumbo v0, "MiniApp feature not actived"

    new-array v1, v3, [Ljava/lang/Object;

    .line 1050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 94
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 95
    new-instance v0, Lenz;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->i:Lcom/alibaba/android/search/SearchGroupType;

    new-instance v2, Lcom/alibaba/android/search/activity/SearchMoreActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/search/activity/SearchMoreActivity$1;-><init>(Lcom/alibaba/android/search/activity/SearchMoreActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lenz;-><init>(Landroid/content/Context;Lcom/alibaba/android/search/SearchGroupType;Leny$a;)V

    iput-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->l:Lenz;

    .line 126
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->l:Lenz;

    invoke-virtual {v0}, Lenz;->a()V

    .line 127
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->l:Lenz;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lenz;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1145
    :pswitch_0
    iget-boolean v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->m:Z

    if-nez v0, :cond_5

    new-instance v0, Lcom/alibaba/android/search/fragment/ExternalContactDetailSearchFragment;

    invoke-direct {v0}, Lcom/alibaba/android/search/fragment/ExternalContactDetailSearchFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->g:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    .line 1146
    :cond_5
    sget v0, Lemt$g;->dt_seach_hint_global_external_contact:I

    iput v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->h:I

    goto/16 :goto_1

    .line 1149
    :pswitch_1
    iget-boolean v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->m:Z

    if-nez v0, :cond_6

    new-instance v0, Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment;

    invoke-direct {v0}, Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->g:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    .line 1150
    :cond_6
    sget v0, Lemt$g;->dt_seach_hint_global_function:I

    iput v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->h:I

    goto/16 :goto_1

    .line 1153
    :pswitch_2
    iget-boolean v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->m:Z

    if-nez v0, :cond_7

    new-instance v0, Lcom/alibaba/android/search/fragment/PublicGroupDetailSearchFragment;

    invoke-direct {v0}, Lcom/alibaba/android/search/fragment/PublicGroupDetailSearchFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->g:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    .line 1154
    :cond_7
    sget v0, Lemt$g;->dt_seach_hint_global_public_group:I

    iput v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->h:I

    goto/16 :goto_1

    .line 1157
    :pswitch_3
    iget-boolean v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->m:Z

    if-nez v0, :cond_8

    new-instance v0, Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;

    invoke-direct {v0}, Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->g:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    .line 1158
    :cond_8
    sget v0, Lemt$g;->dt_search_light_app_hint:I

    iput v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->h:I

    goto/16 :goto_1

    .line 1161
    :pswitch_4
    iget-boolean v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->m:Z

    if-nez v0, :cond_9

    new-instance v0, Lcom/alibaba/android/search/fragment/DingDetailSearchFragment;

    invoke-direct {v0}, Lcom/alibaba/android/search/fragment/DingDetailSearchFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->g:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    .line 1162
    :cond_9
    sget v0, Lemt$g;->dt_seach_hint_global_ding:I

    iput v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->h:I

    goto/16 :goto_1

    .line 1165
    :pswitch_5
    iget-boolean v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->m:Z

    if-nez v0, :cond_a

    new-instance v0, Lcom/alibaba/android/search/fragment/MailDetailSearchFragment;

    invoke-direct {v0}, Lcom/alibaba/android/search/fragment/MailDetailSearchFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->g:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    .line 1166
    :cond_a
    sget v0, Lemt$g;->dt_seach_hint_global_mail:I

    iput v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->h:I

    goto/16 :goto_1

    .line 1169
    :pswitch_6
    iget-boolean v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->m:Z

    if-nez v0, :cond_b

    new-instance v0, Lcom/alibaba/android/search/fragment/SpaceDetailSearchFragment;

    invoke-direct {v0}, Lcom/alibaba/android/search/fragment/SpaceDetailSearchFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->g:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    .line 1170
    :cond_b
    sget v0, Lemt$g;->dt_seach_hint_global_space:I

    iput v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->h:I

    goto/16 :goto_1

    .line 1173
    :pswitch_7
    iget-boolean v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->m:Z

    if-nez v0, :cond_c

    new-instance v0, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;

    invoke-direct {v0}, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->g:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    .line 1174
    :cond_c
    sget v0, Lemt$g;->dt_search_org_homepage_hint:I

    iput v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->h:I

    goto/16 :goto_1

    .line 1177
    :pswitch_8
    iget-boolean v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->m:Z

    if-nez v0, :cond_d

    new-instance v0, Lcom/alibaba/android/search/fragment/NewRetailDetailSearchFragment;

    invoke-direct {v0}, Lcom/alibaba/android/search/fragment/NewRetailDetailSearchFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->g:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    .line 1178
    :cond_d
    sget v0, Lemt$g;->dt_search_new_retail_member_hint:I

    iput v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->h:I

    goto/16 :goto_1

    .line 1143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 195
    invoke-super {p0, p1}, Lcom/alibaba/android/search/activity/BaseSearchActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 197
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->b:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->b:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 199
    iput-boolean v3, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->k:Z

    .line 201
    :cond_0
    return v3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 270
    invoke-super {p0}, Lcom/alibaba/android/search/activity/BaseSearchActivity;->onDestroy()V

    .line 271
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->l:Lenz;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->l:Lenz;

    invoke-virtual {v0}, Lenz;->f()V

    .line 274
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 255
    invoke-super {p0}, Lcom/alibaba/android/search/activity/BaseSearchActivity;->onPause()V

    .line 256
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->l:Lenz;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->l:Lenz;

    invoke-virtual {v0}, Lenz;->d()V

    .line 259
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 247
    invoke-super {p0}, Lcom/alibaba/android/search/activity/BaseSearchActivity;->onResume()V

    .line 248
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->l:Lenz;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->l:Lenz;

    invoke-virtual {v0}, Lenz;->c()V

    .line 251
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Lcom/alibaba/android/search/activity/BaseSearchActivity;->onStart()V

    .line 240
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->l:Lenz;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->l:Lenz;

    invoke-virtual {v0}, Lenz;->b()V

    .line 243
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 263
    invoke-super {p0}, Lcom/alibaba/android/search/activity/BaseSearchActivity;->onStop()V

    .line 264
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->l:Lenz;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreActivity;->l:Lenz;

    invoke-virtual {v0}, Lenz;->e()V

    .line 267
    :cond_0
    return-void
.end method
