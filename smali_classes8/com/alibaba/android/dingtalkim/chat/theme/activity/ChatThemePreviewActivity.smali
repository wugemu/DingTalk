.class public Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "ChatThemePreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ldgf$b;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:J

.field private d:J

.field private e:Z

.field private f:Z

.field private g:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

.field private h:Landroid/content/BroadcastReceiver;

.field private i:Ldgf$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;
    .param p1, "x1"    # J

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->d:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->c:J

    return-wide v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;)Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->g:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->j()V

    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;

    .prologue
    .line 48
    .line 9225
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "intent_action_chat_theme_applied"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "intent_key_menu_seed"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->c:J

    .line 9226
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 9227
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 48
    return-void
.end method

.method private h()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "cid"

    invoke-static {v0, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->a:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "intent_key_menu_seed"

    const-wide/16 v4, 0x0

    invoke-static {v0, v3, v4, v5}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->c:J

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "intent_key_chat_theme_item"

    invoke-static {v0, v3}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->g:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    .line 92
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "intent_key_chat_theme_selected_id"

    const-wide/16 v4, -0x1

    invoke-static {v0, v3, v4, v5}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->d:J

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "intent_key_chat_theme_action_mode"

    invoke-static {v0, v3, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->b:I

    .line 96
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "intent_key_chat_theme_is_owner"

    invoke-static {v0, v3, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->e:Z

    .line 97
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "intent_key_chat_theme_group_need_confirm"

    invoke-static {v0, v3, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->f:Z

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->g:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    if-nez v0, :cond_1

    .line 101
    :cond_0
    sget v0, Lctk$i;->unknown_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 102
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->finish()V

    move v0, v2

    .line 107
    :goto_0
    return v0

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->supportInvalidateOptionsMenu()V

    move v0, v1

    .line 107
    goto :goto_0
.end method

.method private i()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 111
    .line 2128
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    if-eqz v4, :cond_0

    .line 2129
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    sget v7, Lctk$i;->dt_im_chat_background_preview:I

    invoke-virtual {v4, v7}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->setTitle(I)V

    .line 2130
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->g:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->chatTheme:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;

    if-eqz v4, :cond_0

    .line 2131
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->g:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->chatTheme:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;

    iget v7, v7, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->titleTextColor:I

    invoke-virtual {v4, v7}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->setTitleTextColor(I)V

    .line 2132
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->g:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->chatTheme:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;

    iget v7, v7, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->titleBackgroundColor:I

    invoke-virtual {v4, v7}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->setBackgroundColor(I)V

    .line 2136
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->g:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->chatTheme:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;

    if-eqz v4, :cond_1

    .line 2137
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->g:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->chatTheme:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;

    iget v4, v4, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->titleBackgroundColor:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->setImmersiveStatusBarBackgroundColor(I)V

    .line 2156
    :cond_1
    invoke-static {}, Lcms;->k()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2161
    sget v4, Lctk$f;->tv_name:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2162
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->g:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2164
    sget v4, Lctk$f;->tv_author:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2165
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->g:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->author:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2167
    sget v4, Lctk$f;->tv_desc:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2168
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->g:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeDesc:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3142
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->g:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->chatTheme:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->g:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->chatTheme:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->backgroundMobileMediaId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3143
    sget v4, Lctk$f;->root_view:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 3144
    const-string/jumbo v4, "IMAGE"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 3146
    :try_start_0
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->g:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v8, v8, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->chatTheme:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;

    iget-object v8, v8, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->backgroundMobileMediaId:Ljava/lang/String;

    invoke-static {v8}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3147
    const/4 v9, 0x0

    invoke-interface {v4, v7, v8, v9}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->g:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-wide v8, v4, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeId:J

    iget-wide v10, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->d:J

    cmp-long v4, v8, v10

    if-nez v4, :cond_4

    move v2, v5

    .line 116
    .local v2, "isSelected":Z
    :goto_1
    sget v4, Lctk$f;->btn_apply:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 118
    .local v1, "btnApply":Landroid/widget/Button;
    if-nez v2, :cond_5

    :goto_2
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 119
    if-eqz v2, :cond_6

    sget v4, Lctk$i;->dt_im_chat_background_applied:I

    :goto_3
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 121
    sget v4, Lctk$f;->list_view:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 122
    .local v3, "listView":Landroid/widget/ListView;
    new-instance v0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewAdapter;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewAdapter;-><init>(Landroid/content/Context;)V

    .line 123
    .local v0, "adapter":Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewAdapter;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->g:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    .line 4033
    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewAdapter;->a:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    .line 124
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    return-void

    .line 3148
    .end local v0    # "adapter":Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewAdapter;
    .end local v1    # "btnApply":Landroid/widget/Button;
    .end local v2    # "isSelected":Z
    .end local v3    # "listView":Landroid/widget/ListView;
    :catch_0
    move-exception v4

    .line 3149
    const-string/jumbo v7, "im"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "ChatThemeViewHolder.transferToHttpUrl error="

    aput-object v9, v8, v6

    .line 3150
    invoke-virtual {v4}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v5

    .line 3149
    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v10, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v2, v6

    .line 115
    goto :goto_1

    .restart local v1    # "btnApply":Landroid/widget/Button;
    .restart local v2    # "isSelected":Z
    :cond_5
    move v5, v6

    .line 118
    goto :goto_2

    .line 119
    :cond_6
    sget v4, Lctk$i;->dt_im_apply_chat_background:I

    goto :goto_3
.end method

.method private j()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->showLoadingDialog()V

    .line 329
    new-instance v6, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$5;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;)V

    .line 360
    .local v6, "listener":Lcma;
    const-class v0, Lcma;

    invoke-static {v6, v0, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "listener":Lcma;
    check-cast v6, Lcma;

    .line 361
    .restart local v6    # "listener":Lcma;
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v0

    invoke-virtual {v0}, Ldyn;->h()Ldfs;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->g:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget v3, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->type:I

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->g:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeId:J

    .line 362
    invoke-interface/range {v1 .. v6}, Ldfs;->a(Ljava/lang/String;IJLcma;)V

    .line 363
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "setChatTheme cid="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", type="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->g:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget v4, v4, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->type:I

    .line 364
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ", themeId="

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->g:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeId:J

    .line 365
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 363
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 1

    .prologue
    .line 415
    .line 6429
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 415
    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->dismissLoadingDialog()V

    .line 418
    :cond_0
    return-void
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 384
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 422
    .line 7429
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 422
    if-eqz v0, :cond_0

    .line 423
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 408
    .line 5429
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 408
    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->showLoadingDialog()V

    .line 411
    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 429
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 388
    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 399
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 370
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 374
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 376
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->i:Ldgf$a;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p3}, Ldgf$a;->a(ILandroid/content/Intent;)V

    goto :goto_0

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 264
    .local v0, "id":I
    sget v1, Lctk$f;->btn_apply:I

    if-ne v0, v1, :cond_0

    .line 265
    iget v1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->b:I

    if-ne v1, v2, :cond_1

    .line 5291
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->showLoadingDialog()V

    .line 5292
    new-instance v1, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;)V

    .line 5321
    const-class v2, Lcma;

    invoke-static {v1, v2, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 5322
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v2

    invoke-virtual {v2}, Ldyn;->h()Ldfs;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->a:Ljava/lang/String;

    const/4 v4, 0x2

    .line 5323
    invoke-interface {v2, v3, v4, v1}, Ldfs;->a(Ljava/lang/String;ILcma;)V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->f:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->g:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget v1, v1, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->type:I

    if-ne v1, v2, :cond_2

    .line 272
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lctk$i;->dt_im_chat_group_theme_comfirm_title:I

    .line 273
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->dt_im_chat_group_background_tips:I

    .line 274
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->dt_common_cancel:I

    const/4 v3, 0x0

    .line 275
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->dt_common_confirm:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;)V

    .line 276
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 281
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 283
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->j()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    sget v0, Lctk$g;->activity_chat_theme_preview:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->setContentView(I)V

    .line 68
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    new-instance v0, Ldgg;

    invoke-direct {v0, p0}, Ldgg;-><init>(Ldgf$b;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->i:Ldgf$a;

    .line 72
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->i()V

    .line 1172
    sget v0, Lctk$f;->btn_apply:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1231
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->h:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1232
    new-instance v0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->h:Landroid/content/BroadcastReceiver;

    .line 1246
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1247
    const-string/jumbo v1, "intent_action_chat_theme_applied"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1248
    const-string/jumbo v1, "intent_action_reload_chat_theme"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1249
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->h:Landroid/content/BroadcastReceiver;

    .line 1250
    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 183
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->g:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    if-eqz v1, :cond_0

    .line 184
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->e:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->g:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget v1, v1, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->type:I

    if-ne v1, v2, :cond_1

    .line 185
    sget v1, Lctk$i;->dt_im_chat_group_background:I

    invoke-interface {p1, v6, v7, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 187
    .local v0, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 195
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->g:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget v1, v1, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeType:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->g:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeId:J

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->d:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 190
    const/4 v1, 0x3

    sget v2, Lctk$i;->dt_im_chat_theme_change:I

    invoke-interface {p1, v6, v1, v6, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 192
    .restart local v0    # "menuItem":Landroid/view/MenuItem;
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 177
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 4255
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->h:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 4256
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 4257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->h:Landroid/content/BroadcastReceiver;

    .line 179
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 80
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->setIntent(Landroid/content/Intent;)V

    .line 81
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->i()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 200
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 209
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 5213
    :pswitch_0
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/chat_theme_set.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 206
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->i:Ldgf$a;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ldgf$a;->a(I)V

    goto :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 48
    check-cast p1, Ldgf$a;

    .line 8403
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->i:Ldgf$a;

    .line 48
    return-void
.end method
