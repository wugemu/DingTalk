.class public Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "GroupRingSettingActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alibaba/wukong/im/Conversation;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private f:Lcwb;

.field private g:Landroid/media/SoundPool;

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->h:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;)Lcwb;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->f:Lcwb;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;Ljava/util/List;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 40
    .line 8105
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lctk$g;->layout_group_ring_header:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 8106
    sget v0, Lctk$f;->rl_ring_default:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->d:Landroid/widget/RelativeLayout;

    .line 8107
    sget v0, Lctk$f;->icon_default_select:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 8109
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lctk$g;->layout_group_ring_footer:I

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 8111
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8112
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 8115
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->d:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8126
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->g:Landroid/media/SoundPool;

    if-eqz v2, :cond_1

    .line 8127
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->g:Landroid/media/SoundPool;

    invoke-virtual {v2}, Landroid/media/SoundPool;->release()V

    .line 8129
    :cond_1
    new-instance v2, Landroid/media/SoundPool;

    const/16 v3, 0xa

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->g:Landroid/media/SoundPool;

    .line 8131
    new-instance v2, Lcwb;

    invoke-direct {v2, p0}, Lcwb;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->f:Lcwb;

    .line 8132
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->f:Lcwb;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->a:Ljava/lang/String;

    .line 9030
    iput-object v3, v2, Lcwb;->d:Ljava/lang/String;

    .line 8133
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->f:Lcwb;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;)V

    .line 9038
    iput-object v3, v2, Lcwb;->e:Lear;

    .line 8180
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->f:Lcwb;

    invoke-virtual {v2, p1}, Lcwb;->b(Ljava/util/List;)V

    .line 8181
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 8182
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 8183
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->f:Lcwb;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->h:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->g:Landroid/media/SoundPool;

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
    .line 56
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sget v1, Lctk$g;->layout_group_ring_setting:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->setContentView(I)V

    .line 59
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v2, Lctk$i;->dt_im_group_sound_title:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    :cond_0
    sget v1, Lctk$f;->list_view:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->c:Landroid/widget/ListView;

    .line 65
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "intent_key_group_ring_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->a:Ljava/lang/String;

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "conversation"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Conversation;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->b:Lcom/alibaba/wukong/im/Conversation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    if-nez v1, :cond_3

    .line 75
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->finish()V

    .line 2055
    :cond_2
    :goto_1
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "im"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "group ring param error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1085
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-static {}, Leas;->a()Leas;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;)V

    .line 1142
    if-eqz p0, :cond_2

    .line 1146
    invoke-static {}, Ldxt;->a()Ldxt;

    move-result-object v3

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v4

    new-instance v5, Leas$3;

    invoke-direct {v5, v1, v2}, Leas$3;-><init>(Leas;Lcma;)V

    const-class v1, Lcma;

    invoke-interface {v4, v5, v1, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 2045
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/GroupRingIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/models/idl/service/GroupRingIService;

    .line 2047
    if-eqz v2, :cond_4

    .line 2048
    new-instance v4, Ldxt$1;

    invoke-direct {v4, v3, v1}, Ldxt$1;-><init>(Ldxt;Lcma;)V

    .line 2054
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v4}, Lcom/alibaba/android/dingtalkim/models/idl/service/GroupRingIService;->getGroupRingConfig(Ljava/lang/Integer;Liyv;)V

    goto :goto_1

    .line 2056
    :cond_4
    const-string/jumbo v2, "404"

    const-string/jumbo v3, "service is null"

    invoke-interface {v1, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 188
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->f:Lcwb;

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->f:Lcwb;

    .line 3034
    iget-object v2, v2, Lcwb;->d:Ljava/lang/String;

    .line 189
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_group_ring_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "intent_key_group_ring_id"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->f:Lcwb;

    .line 4034
    iget-object v1, v1, Lcwb;->d:Ljava/lang/String;

    .line 192
    if-nez v1, :cond_2

    const-string/jumbo v1, ""

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 194
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v3, "groupRingId"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->f:Lcwb;

    .line 6034
    iget-object v1, v1, Lcwb;->d:Ljava/lang/String;

    .line 194
    if-nez v1, :cond_3

    const-string/jumbo v1, ""

    :goto_1
    invoke-interface {v2, v3, v1}, Lcom/alibaba/wukong/im/Conversation;->updateExtension(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {}, Ldxt;->a()Ldxt;

    move-result-object v4

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->f:Lcwb;

    .line 8034
    iget-object v3, v1, Lcwb;->d:Ljava/lang/String;

    .line 195
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;)V

    const-class v6, Lcma;

    invoke-interface {v1, v2, v6, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 8062
    if-eqz v1, :cond_0

    .line 8065
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8066
    const-string/jumbo v2, "404"

    const-string/jumbo v3, "param is invalid"

    invoke-interface {v1, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->g:Landroid/media/SoundPool;

    if-eqz v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->g:Landroid/media/SoundPool;

    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    .line 215
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->g:Landroid/media/SoundPool;

    .line 217
    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 218
    return-void

    .line 192
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->f:Lcwb;

    .line 5034
    iget-object v1, v1, Lcwb;->d:Ljava/lang/String;

    goto :goto_0

    .line 194
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->f:Lcwb;

    .line 7034
    iget-object v1, v1, Lcwb;->d:Ljava/lang/String;

    goto :goto_1

    .line 8070
    :cond_4
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/GroupRingIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/models/idl/service/GroupRingIService;

    .line 8072
    if-eqz v2, :cond_6

    .line 8073
    new-instance v6, Ldxt$2;

    invoke-direct {v6, v4, v1, v5, v3}, Ldxt$2;-><init>(Ldxt;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 8086
    if-nez v3, :cond_5

    const-string/jumbo v1, ""

    :goto_3
    invoke-interface {v2, v5, v1, v6}, Lcom/alibaba/android/dingtalkim/models/idl/service/GroupRingIService;->setGroupRing(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    goto :goto_2

    :cond_5
    move-object v1, v3

    goto :goto_3

    .line 8088
    :cond_6
    const-string/jumbo v2, "404"

    const-string/jumbo v3, "service is null"

    invoke-interface {v1, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
