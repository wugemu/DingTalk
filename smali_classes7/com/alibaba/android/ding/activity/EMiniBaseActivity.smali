.class public abstract Lcom/alibaba/android/ding/activity/EMiniBaseActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "EMiniBaseActivity.java"


# instance fields
.field protected a:Lhlm;

.field protected b:Lhlp;

.field protected c:Landroid/view/ViewGroup;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/EMiniBaseActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/EMiniBaseActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->a(Z)V

    return-void
.end method

.method protected static a(Lhll;Lgxl;)V
    .locals 4
    .param p0, "callback"    # Lhll;
    .param p1, "data"    # Lgxl;

    .prologue
    .line 209
    if-nez p0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 213
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 214
    .local v0, "ret":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-interface {p0, v0}, Lhll;->a(Lcom/alibaba/fastjson/JSONObject;)V

    .line 216
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "[EMiniBaseActivity]notifySuccess"

    aput-object v3, v2, v1

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lgxl;->toJSONString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    aput-object v1, v2, v3

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "null"

    goto :goto_1
.end method

.method private a(Z)V
    .locals 6
    .param p1, "isAsync"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 171
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "[EMiniBaseActivity]try launch page, isAsync:"

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 172
    iget-boolean v1, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->d:Z

    if-eqz v1, :cond_1

    .line 173
    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "[EMiniBaseActivity]try launch page, already launched"

    aput-object v2, v1, v4

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->b:Lhlp;

    if-nez v1, :cond_2

    .line 178
    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "[EMiniBaseActivity]initEMiniView failed, pageInstance is null"

    aput-object v2, v1, v4

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->finish()V

    goto :goto_0

    .line 183
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->b:Lhlp;

    invoke-interface {v1}, Lhlp;->a()Landroid/view/View;

    move-result-object v0

    .line 184
    .local v0, "contentView":Landroid/view/View;
    if-nez v0, :cond_3

    .line 185
    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "[EMiniBaseActivity]initEMiniView failed, contentView is null"

    aput-object v2, v1, v4

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->finish()V

    goto :goto_0

    .line 190
    :cond_3
    iput-boolean v3, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->d:Z

    .line 191
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->c:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "[EMiniBaseActivity]launch page"

    aput-object v2, v1, v4

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->b:Lhlp;

    invoke-interface {v1}, Lhlp;->b()V

    .line 195
    if-eqz p1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->b:Lhlp;

    invoke-interface {v1}, Lhlp;->c()V

    goto :goto_0
.end method


# virtual methods
.method public abstract a()I
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2
    .param p1, "eventNameSpace"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 220
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/activity/EMiniBaseActivity$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alibaba/android/ding/activity/EMiniBaseActivity$2;-><init>(Lcom/alibaba/android/ding/activity/EMiniBaseActivity;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appVersion"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 107
    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "[EMiniBaseActivity]initEMiniView failed appId is empty"

    aput-object v6, v5, v8

    invoke-static {v5}, Lbkd;->a([Ljava/lang/String;)V

    .line 168
    :goto_0
    return-void

    .line 111
    :cond_0
    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "[EMiniBaseActivity]initEMiniView, appId:"

    aput-object v6, v5, v8

    aput-object p1, v5, v9

    const-string/jumbo v6, ", appVersion:"

    aput-object v6, v5, v10

    const/4 v6, 0x3

    aput-object p2, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, ", pageId:"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    aput-object p3, v5, v6

    const/4 v6, 0x6

    const-string/jumbo v7, ", extras:"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    .line 114
    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 111
    invoke-static {v5}, Lbkd;->a([Ljava/lang/String;)V

    .line 116
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 117
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "appId"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 119
    const-string/jumbo v5, "appVersion"

    invoke-virtual {v0, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_1
    invoke-virtual {v0, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 123
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 124
    .local v3, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "?"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .local v4, "query":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 126
    if-eqz v2, :cond_2

    .line 127
    const-string/jumbo v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 133
    :cond_3
    new-array v5, v10, [Ljava/lang/String;

    aput-object p3, v5, v8

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 136
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v5

    invoke-virtual {v5, p0, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getMiniAppInstance(Landroid/content/Context;Landroid/os/Bundle;)Lhlm;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->a:Lhlm;

    .line 137
    iget-object v5, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->a:Lhlm;

    if-nez v5, :cond_4

    .line 138
    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "[EMiniBaseActivity]initEMiniView failed, appInstance is null"

    aput-object v6, v5, v8

    invoke-static {v5}, Lbkd;->a([Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->finish()V

    goto/16 :goto_0

    .line 143
    :cond_4
    iget-object v5, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->a:Lhlm;

    invoke-interface {v5}, Lhlm;->b()Z

    move-result v1

    .line 144
    .local v1, "enableLaunch":Z
    new-array v5, v10, [Ljava/lang/String;

    const-string/jumbo v6, "[EMiniBaseActivity]enableLaunch:"

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v5}, Lbkd;->a([Ljava/lang/String;)V

    .line 145
    if-eqz v1, :cond_5

    .line 146
    iget-object v5, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->a:Lhlm;

    invoke-interface {v5, p3}, Lhlm;->b(Ljava/lang/String;)Lhlp;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->b:Lhlp;

    .line 147
    invoke-direct {p0, v8}, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->a(Z)V

    goto/16 :goto_0

    .line 151
    :cond_5
    iget-object v5, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->a:Lhlm;

    new-instance v6, Lcom/alibaba/android/ding/activity/EMiniBaseActivity$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/ding/activity/EMiniBaseActivity$1;-><init>(Lcom/alibaba/android/ding/activity/EMiniBaseActivity;)V

    invoke-interface {v5, p3, v6}, Lhlm;->a(Ljava/lang/String;Lhln;)V

    goto/16 :goto_0
.end method

.method protected final a(Ljava/util/Map;Lhlk;)V
    .locals 1
    .param p2, "iMiniAppCallExternalNativeListener"    # Lhlk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lhlk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->a:Lhlm;

    if-nez v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->a:Lhlm;

    invoke-interface {v0, p1, p2}, Lhlm;->a(Ljava/util/Map;Lhlk;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->setContentView(I)V

    .line 50
    sget v0, Laxp$f;->v_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->c:Landroid/view/ViewGroup;

    .line 51
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->c:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[EMiniBaseActivity]onCreate failed, container is null"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->finish()V

    .line 55
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->b:Lhlp;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->b:Lhlp;

    invoke-interface {v0}, Lhlp;->g()V

    .line 98
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[EMiniBaseActivity]onDestroy"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 99
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 100
    return-void
.end method

.method protected onPause()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->b:Lhlp;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->b:Lhlp;

    invoke-interface {v0}, Lhlp;->e()V

    .line 80
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[EMiniBaseActivity]onPause"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 81
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onPause()V

    .line 82
    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 68
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->b:Lhlp;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->b:Lhlp;

    invoke-interface {v0}, Lhlp;->d()V

    .line 72
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[EMiniBaseActivity]onResume"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method protected onStart()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 59
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStart()V

    .line 60
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->b:Lhlp;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->b:Lhlp;

    invoke-interface {v0}, Lhlp;->c()V

    .line 63
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[EMiniBaseActivity]onStart"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method protected onStop()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->b:Lhlp;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->b:Lhlp;

    invoke-interface {v0}, Lhlp;->f()V

    .line 89
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[EMiniBaseActivity]onStop"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 90
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStop()V

    .line 91
    return-void
.end method
