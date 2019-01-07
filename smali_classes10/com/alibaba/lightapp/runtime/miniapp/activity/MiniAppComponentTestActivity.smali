.class public Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "MiniAppComponentTestActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lhlm;

.field private f:Lhlp;

.field private g:Z

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;)Lhlp;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->f:Lhlp;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;Lhlp;)Lhlp;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;
    .param p1, "x1"    # Lhlp;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->f:Lhlp;

    return-object p1
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 234
    .local v0, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v1, "eventNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "component_test"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    const-string/jumbo v2, "the_one"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->e:Lhlm;

    new-instance v3, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity$3;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;)V

    invoke-interface {v2, v0, v3}, Lhlm;->a(Ljava/util/Map;Lhlk;)V

    .line 251
    return-void
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->h:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->a()V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->g:Z

    return v0
.end method

.method static synthetic e(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;)Lhlm;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->e:Lhlm;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x42480000    # 50.0f

    const/4 v8, -0x1

    .line 76
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1177
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->h:Landroid/widget/RelativeLayout;

    .line 1178
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->i:Landroid/widget/RelativeLayout;

    .line 1179
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->j:Landroid/widget/TextView;

    .line 1180
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->j:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1181
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->j:Landroid/widget/TextView;

    new-instance v5, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity$2;

    invoke-direct {v5, p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity$2;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1195
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->i:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->j:Landroid/widget/TextView;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1197
    invoke-static {p0, v9}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v6, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1195
    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1198
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->i:Landroid/widget/RelativeLayout;

    const/high16 v5, -0x10000

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1199
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->j:Landroid/widget/TextView;

    const-string/jumbo v5, "send event to JS"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1200
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->h:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->i:Landroid/widget/RelativeLayout;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1202
    invoke-static {p0, v9}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v6, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1200
    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1210
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1213
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "url"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->a:Ljava/lang/String;

    .line 1214
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1218
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1219
    if-eqz v4, :cond_0

    .line 1223
    const-string/jumbo v5, "appId"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->b:Ljava/lang/String;

    .line 1224
    const-string/jumbo v5, "appVersion"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->c:Ljava/lang/String;

    .line 1225
    const-string/jumbo v5, "page"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->d:Ljava/lang/String;

    .line 79
    :cond_0
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v4}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->setContentView(Landroid/view/View;)V

    .line 80
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 81
    const-string/jumbo v4, "MiniAppComponentTestActivity"

    new-array v5, v11, [Ljava/lang/Object;

    const-string/jumbo v6, "no app id detected"

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Lhmv;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    :cond_1
    :goto_0
    return-void

    .line 83
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "appId"

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string/jumbo v4, "appVersion"

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->d:Ljava/lang/String;

    .line 87
    .local v3, "pageId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v4

    invoke-virtual {v4, p0, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getMiniAppInstance(Landroid/content/Context;Landroid/os/Bundle;)Lhlm;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->e:Lhlm;

    .line 88
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->e:Lhlm;

    if-eqz v4, :cond_1

    .line 89
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->e:Lhlm;

    invoke-interface {v4}, Lhlm;->b()Z

    move-result v1

    .line 90
    .local v1, "enableLaunch":Z
    if-eqz v1, :cond_4

    .line 91
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->e:Lhlm;

    invoke-interface {v4, v3}, Lhlm;->b(Ljava/lang/String;)Lhlp;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->f:Lhlp;

    .line 92
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->f:Lhlp;

    if-eqz v4, :cond_3

    .line 93
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 96
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {p0, v9}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 97
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->h:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->f:Lhlp;

    invoke-interface {v5}, Lhlp;->a()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->f:Lhlp;

    invoke-interface {v4}, Lhlp;->b()V

    .line 99
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->a()V

    goto :goto_0

    .line 101
    .end local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    const-string/jumbo v4, "MiniAppComponentTestActivity"

    new-array v5, v11, [Ljava/lang/Object;

    const-string/jumbo v6, "async init instance fail"

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Lhmv;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    :cond_4
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->e:Lhlm;

    new-instance v5, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity$1;

    invoke-direct {v5, p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;)V

    invoke-interface {v4, v3, v5}, Lhlm;->a(Ljava/lang/String;Lhln;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 168
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->f:Lhlp;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->f:Lhlp;

    invoke-interface {v0}, Lhlp;->g()V

    .line 171
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onPause()V

    .line 151
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->f:Lhlp;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->f:Lhlp;

    invoke-interface {v0}, Lhlp;->e()V

    .line 154
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 143
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->f:Lhlp;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->f:Lhlp;

    invoke-interface {v0}, Lhlp;->d()V

    .line 146
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStart()V

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->g:Z

    .line 135
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->f:Lhlp;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->f:Lhlp;

    invoke-interface {v0}, Lhlp;->c()V

    .line 138
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->g:Z

    .line 159
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStop()V

    .line 160
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->f:Lhlp;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->f:Lhlp;

    invoke-interface {v0}, Lhlp;->f()V

    .line 163
    :cond_0
    return-void
.end method
