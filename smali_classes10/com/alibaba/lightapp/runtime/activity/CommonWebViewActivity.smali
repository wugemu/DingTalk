.class public Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;
.super Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;
.source "CommonWebViewActivity.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/INuvaContext;
.implements Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;
.implements Lcom/alibaba/lightapp/runtime/webview/RimetWebView$b;
.implements Lgvj;
.implements Lhdi$a;
.implements Lhdt;
.implements Lhdx$c;
.implements Lhed$a;
.implements Lhej;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Landroid/widget/RelativeLayout;

.field private C:Landroid/widget/ImageView;

.field private D:Landroid/widget/TextView;

.field private E:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ldq;

.field private G:Landroid/content/BroadcastReceiver;

.field private H:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;

.field private I:Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;

.field private a:Landroid/os/Bundle;

.field protected b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

.field public c:Lhea;

.field protected d:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

.field protected e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;

.field private n:Lhdy;

.field private o:Lhdx;

.field private p:Lhed;

.field private q:Lhdi;

.field private r:Lheb;

.field private s:Lhdw;

.field private t:Lhec;

.field private u:Lhdz;

.field private v:I

.field private w:I

.field private x:Z

.field private y:Landroid/app/FragmentManager;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;-><init>()V

    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->a:Landroid/os/Bundle;

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->v:I

    .line 160
    iput v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->w:I

    .line 162
    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->x:Z

    .line 166
    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->z:Z

    .line 168
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->A:Ljava/lang/String;

    .line 184
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->e:Ljava/util/Map;

    .line 186
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->f:Ljava/util/Map;

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->g:Ljava/util/List;

    .line 192
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->E:Ljava/util/Stack;

    .line 197
    new-instance v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$1;-><init>(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->G:Landroid/content/BroadcastReceiver;

    .line 1664
    new-instance v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$10;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$10;-><init>(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->H:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;

    .line 1709
    new-instance v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$2;-><init>(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->I:Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 323
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    invoke-static {v2}, Lhdo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "domain":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 362
    :goto_0
    return-void

    .line 329
    :cond_0
    sget-object v2, Lhri;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 330
    .local v0, "disableHost":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 335
    .end local v0    # "disableHost":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "Nav"

    invoke-static {v2}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$3;-><init>(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;Lcom/alibaba/lightapp/runtime/config/TabConfiguration;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/config/TabConfiguration;

    .prologue
    .line 122
    .line 43189
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->i()Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    move-result-object v0

    .line 43190
    if-eqz v0, :cond_0

    .line 43192
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->c()Ljava/lang/String;

    move-result-object v0

    .line 43193
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43195
    if-eqz p1, :cond_0

    .line 43196
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->getGroupId()Ljava/lang/String;

    move-result-object v1

    .line 43198
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    .line 43199
    if-eqz v0, :cond_1

    .line 43200
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->I:Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;

    if-eqz v0, :cond_0

    .line 43201
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->I:Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;

    const-string/jumbo v1, "tabs exits"

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;->callbackInitFail(Ljava/lang/String;)V

    .line 43203
    :cond_0
    :goto_0
    return-void

    .line 43206
    :cond_1
    new-instance v0, Lhhu;

    invoke-direct {v0}, Lhhu;-><init>()V

    .line 44011
    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;)Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;

    move-result-object v0

    .line 43207
    invoke-virtual {v0, p0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->a(Lhdt;)V

    .line 43208
    invoke-virtual {v0, p0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->a(Landroid/content/Context;)V

    .line 43209
    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->a(Ljava/lang/String;)V

    .line 43211
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43212
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->e:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;Lcom/alibaba/lightapp/runtime/model/WebViewModel;Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/model/WebViewModel;
    .param p2, "x2"    # Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->a(Lcom/alibaba/lightapp/runtime/model/WebViewModel;Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;Lhfo$b;Ljava/lang/String;Ljava/lang/String;ILhin;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;
    .param p1, "x1"    # Lhfo$b;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Lhin;

    .prologue
    .line 122
    .line 42365
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v7

    new-instance v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;-><init>(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;Lhin;Lhfo$b;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 122
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;Lhin;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;
    .param p1, "x1"    # Lhin;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    .line 122
    .line 42404
    if-eqz p1, :cond_0

    iget-object v0, p1, Lhin;->b:Ljava/lang/Boolean;

    invoke-static {v0}, Lhdo;->a(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3, p4}, Lhhx;->b(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42405
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 42407
    :try_start_0
    const-string/jumbo v1, "message"

    iget-object v2, p1, Lhin;->c:Ljava/util/Map;

    invoke-static {v2}, Lhdo;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42408
    const-string/jumbo v1, "title"

    sget v2, Lhdn$k;->miniapp_disclaimer_title:I

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42409
    const-string/jumbo v1, "buttonName"

    sget v2, Lhdn$k;->dd_mini_check_permission_deny_confirm:I

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42410
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$5;-><init>(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42427
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->b(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;Ljava/lang/String;ZLcom/alibaba/lightapp/runtime/plugin/delegate/TabModel$TabAnimInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel$TabAnimInfo;

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->a(Ljava/lang/String;ZLcom/alibaba/lightapp/runtime/plugin/delegate/TabModel$TabAnimInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;Ljava/util/List;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 122
    .line 43135
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->i()Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    move-result-object v0

    .line 43136
    if-eqz v0, :cond_3

    .line 43138
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->c()Ljava/lang/String;

    move-result-object v3

    .line 43139
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 43141
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 43142
    new-instance v4, Lhhv;

    invoke-direct {v4}, Lhhv;-><init>()V

    .line 43144
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    .line 43146
    if-eqz v0, :cond_0

    .line 43150
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->getId()Ljava/lang/String;

    move-result-object v6

    .line 43151
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43153
    const-string/jumbo v1, "home_page"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43155
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43157
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->e:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    .line 43158
    if-eqz v1, :cond_1

    .line 43159
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->g:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 43160
    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->f()V

    .line 43166
    :cond_1
    invoke-interface {v4, v0}, Lhhs;->a(Ljava/lang/Object;)Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    move-result-object v0

    .line 43167
    invoke-virtual {v0, p0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->a(Lhdt;)V

    .line 43168
    invoke-virtual {v0, p0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->a(Landroid/content/Context;)V

    .line 43169
    invoke-virtual {v0, v6}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->a(Ljava/lang/String;)V

    .line 43171
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->g:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43172
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->e:Ljava/util/Map;

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 43177
    :cond_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->f:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 43178
    if-nez v0, :cond_4

    move-object v0, v2

    .line 43183
    :goto_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->f:Ljava/util/Map;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_3
    return-void

    .line 43181
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method private declared-synchronized a(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;)V
    .locals 11
    .param p1, "tabConfiguration"    # Lcom/alibaba/lightapp/runtime/config/TabConfiguration;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1464
    monitor-enter p0

    if-eqz p1, :cond_3

    .line 1465
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->getGroupId()Ljava/lang/String;

    move-result-object v1

    .line 1466
    .local v1, "groupId":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    .line 1467
    .local v0, "baseRuntimeFragment":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    instance-of v2, v0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;

    if-eqz v2, :cond_3

    .line 1468
    check-cast v0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;

    .line 29112
    .end local v0    # "baseRuntimeFragment":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    if-eqz v2, :cond_3

    .line 29113
    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    .line 29559
    if-eqz p1, :cond_3

    .line 29560
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->getTabItemInfos()Ljava/util/List;

    move-result-object v6

    .line 29561
    if-eqz v6, :cond_2

    .line 29562
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 29563
    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v7, :cond_2

    .line 29564
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    .line 29565
    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->getId()Ljava/lang/String;

    move-result-object v8

    .line 29566
    iget-object v3, v5, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    .line 29567
    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 29568
    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->setTitle(Ljava/lang/String;)V

    .line 29563
    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 29574
    :cond_2
    iget-object v2, v5, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->e:Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1471
    .end local v1    # "groupId":Ljava/lang/String;
    :cond_3
    monitor-exit p0

    return-void

    .line 1464
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized a(Lcom/alibaba/lightapp/runtime/model/WebViewModel;Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;)V
    .locals 7
    .param p1, "model"    # Lcom/alibaba/lightapp/runtime/model/WebViewModel;
    .param p2, "anim"    # Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1321
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->p:Lhed;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->p:Lhed;

    .line 28065
    iget-boolean v5, v5, Lhed;->c:Z

    .line 1321
    if-eqz v5, :cond_1

    .line 1322
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->H:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;

    if-eqz v5, :cond_0

    .line 1323
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->H:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;

    const-string/jumbo v6, "nav model is in transition"

    invoke-virtual {v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;->callbackGoFail(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1358
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1327
    :cond_1
    if-eqz p1, :cond_0

    .line 1330
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->getId()Ljava/lang/String;

    move-result-object v2

    .line 1332
    .local v2, "id":Ljava/lang/String;
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->i()Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    move-result-object v1

    .line 1334
    .local v1, "current":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "home_page"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v1, :cond_0

    .line 1335
    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1337
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->e:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    .line 1338
    .local v3, "targetFrag":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    if-nez v3, :cond_2

    .line 1339
    new-instance v4, Lhhv;

    invoke-direct {v4}, Lhhv;-><init>()V

    .line 1340
    .local v4, "webViewFragmentFactory":Lhhs;
    invoke-interface {v4, p1}, Lhhs;->a(Ljava/lang/Object;)Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    move-result-object v0

    .line 1341
    .local v0, "baseRuntimeFragment":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    invoke-virtual {v0, p0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->a(Lhdt;)V

    .line 1342
    invoke-virtual {v0, p0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->a(Landroid/content/Context;)V

    .line 1343
    invoke-virtual {v0, v2}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->a(Ljava/lang/String;)V

    .line 1345
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->e:Ljava/util/Map;

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    .end local v0    # "baseRuntimeFragment":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    .end local v4    # "webViewFragmentFactory":Lhhs;
    :cond_2
    if-eqz v1, :cond_0

    .line 1349
    if-eqz p2, :cond_3

    iget v5, p2, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->p:Lhed;

    if-eqz v5, :cond_3

    .line 1351
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->p:Lhed;

    invoke-virtual {v5, v1, v2, p2}, Lhed;->a(Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1321
    .end local v1    # "current":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "targetFrag":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1354
    .restart local v1    # "current":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    .restart local v2    # "id":Ljava/lang/String;
    .restart local v3    # "targetFrag":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    :cond_3
    :try_start_2
    invoke-direct {p0, v2, p2}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->c(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->y:Landroid/app/FragmentManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->k:Z

    if-nez v0, :cond_0

    .line 1814
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->y:Landroid/app/FragmentManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1816
    :cond_0
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1474
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    .line 1475
    .local v0, "baseRuntimeFragment":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    instance-of v1, v0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;

    if-eqz v1, :cond_0

    .line 1476
    check-cast v0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;

    .line 30118
    .end local v0    # "baseRuntimeFragment":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    if-eqz v1, :cond_0

    .line 30119
    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    .line 30579
    iget-object v1, v3, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 30580
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    .line 30581
    iget-object v1, v3, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    .line 30582
    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30583
    iget-object v1, v3, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;->getCount()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 30584
    iget-object v1, v3, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 30580
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 1474
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized a(Ljava/lang/String;ZLcom/alibaba/lightapp/runtime/plugin/delegate/TabModel$TabAnimInfo;)V
    .locals 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "isAutoRemove"    # Z
    .param p3, "tabAnimInfo"    # Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel$TabAnimInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x2

    .line 1409
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->i()Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    move-result-object v1

    .line 1410
    .local v1, "current":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    if-eqz v1, :cond_3

    .line 1411
    const/4 v4, 0x0

    .line 1413
    .local v4, "isHit":Z
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->e:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    .line 1415
    .local v6, "target":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->isAdded()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1416
    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->j()V

    .line 1417
    invoke-virtual {v6}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->getTag()Ljava/lang/String;

    move-result-object v5

    .line 1418
    .local v5, "tag":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1419
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1422
    :cond_0
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->y:Landroid/app/FragmentManager;

    invoke-virtual {v7}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 1423
    .local v3, "ft":Landroid/app/FragmentTransaction;
    if-eqz p3, :cond_1

    .line 1424
    iget-object v0, p3, Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel$TabAnimInfo;->res:[I

    .line 1425
    .local v0, "animRes":[I
    if-eqz v0, :cond_1

    array-length v7, v0

    if-lez v7, :cond_1

    .line 1426
    array-length v7, v0

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4

    .line 1427
    const/4 v7, 0x0

    aget v7, v0, v7

    const/4 v8, 0x1

    aget v8, v0, v8

    const/4 v9, 0x2

    aget v9, v0, v9

    const/4 v10, 0x3

    aget v10, v0, v10

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    .line 1435
    .end local v0    # "animRes":[I
    :cond_1
    :goto_0
    if-eqz p2, :cond_6

    .line 1437
    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 1438
    .local v2, "currentTag":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1439
    const/4 v7, 0x1

    invoke-direct {p0, v2, v7}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->a(Ljava/lang/String;I)V

    .line 1445
    :goto_1
    sget v7, Lhdn$h;->fragment_container:I

    invoke-virtual {v3, v7, v6, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v7

    .line 1446
    invoke-virtual {v7, v5}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v7

    .line 1447
    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1454
    .end local v2    # "currentTag":Ljava/lang/String;
    :goto_2
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->y:Landroid/app/FragmentManager;

    invoke-virtual {v7}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1455
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->E:Ljava/util/Stack;

    invoke-virtual {v7, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    const/4 v4, 0x1

    .line 1457
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->i(Ljava/lang/String;)V

    .line 28505
    .end local v3    # "ft":Landroid/app/FragmentTransaction;
    .end local v5    # "tag":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->I:Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;

    if-eqz v7, :cond_3

    .line 28507
    if-eqz v4, :cond_7

    .line 28508
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->I:Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;

    invoke-virtual {v7, p1}, Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;->callbackStartSuccess(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "isHit":Z
    .end local v6    # "target":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    .line 1429
    .restart local v0    # "animRes":[I
    .restart local v3    # "ft":Landroid/app/FragmentTransaction;
    .restart local v4    # "isHit":Z
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "target":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    :cond_4
    :try_start_1
    array-length v7, v0

    if-ne v7, v9, :cond_1

    .line 1430
    const/4 v7, 0x0

    aget v7, v0, v7

    const/4 v8, 0x1

    aget v8, v0, v8

    invoke-virtual {v3, v7, v8}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1409
    .end local v0    # "animRes":[I
    .end local v1    # "current":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    .end local v3    # "ft":Landroid/app/FragmentTransaction;
    .end local v4    # "isHit":Z
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "target":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1442
    .restart local v1    # "current":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    .restart local v2    # "currentTag":Ljava/lang/String;
    .restart local v3    # "ft":Landroid/app/FragmentTransaction;
    .restart local v4    # "isHit":Z
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "target":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    :cond_5
    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_2
    invoke-direct {p0, v7, v8}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->a(Ljava/lang/String;I)V

    goto :goto_1

    .line 1449
    .end local v2    # "currentTag":Ljava/lang/String;
    :cond_6
    invoke-virtual {v3, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v7

    sget v8, Lhdn$h;->fragment_container:I

    .line 1450
    invoke-virtual {v7, v8, v6, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v7

    .line 1451
    invoke-virtual {v7, v5}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v7

    .line 1452
    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_2

    .line 28510
    .end local v3    # "ft":Landroid/app/FragmentTransaction;
    .end local v5    # "tag":Ljava/lang/String;
    :cond_7
    new-instance v7, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 28511
    const-string/jumbo v8, "failed (id ["

    invoke-virtual {v7, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 28512
    invoke-virtual {v7, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 28513
    const-string/jumbo v8, "] might not be preloaded)"

    invoke-virtual {v7, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 28514
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->I:Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;

    invoke-virtual {v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;->callbackStartFail(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->x:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->i()Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 618
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 619
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "nav_webview_from_model"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 620
    .local v1, "fromType":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 621
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;-><init>()V

    .line 622
    .local v0, "dt3rdPartyAuthObject":Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;
    const/4 v3, -0x2

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;->setErrorCode(I)V

    .line 623
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;)V

    .line 626
    .end local v0    # "dt3rdPartyAuthObject":Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;
    .end local v1    # "fromType":I
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;Lcom/alibaba/lightapp/runtime/config/TabConfiguration;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/config/TabConfiguration;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->a(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->e(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized b(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "anim"    # Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1302
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->p:Lhed;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->p:Lhed;

    .line 27065
    iget-boolean v1, v1, Lhed;->c:Z

    .line 1302
    if-eqz v1, :cond_1

    .line 1303
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->H:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;

    if-eqz v1, :cond_0

    .line 1304
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->H:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;

    const-string/jumbo v2, "nav model is in transition"

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;->callbackGoFail(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1318
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1308
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->i()Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    move-result-object v0

    .line 1309
    .local v0, "current":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    if-eqz v0, :cond_0

    .line 1310
    if-eqz p2, :cond_2

    iget v1, p2, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->p:Lhed;

    if-eqz v1, :cond_2

    .line 1312
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->p:Lhed;

    invoke-virtual {v1, v0, p1, p2}, Lhed;->a(Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1302
    .end local v0    # "current":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1315
    .restart local v0    # "current":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    :cond_2
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->c(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->h(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;)V
    .locals 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "anim"    # Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1365
    const/4 v3, 0x0

    .line 1366
    .local v3, "isHit":Z
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->i()Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    move-result-object v1

    .line 1367
    .local v1, "current":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->isDestroyed()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1368
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->f:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->c()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->e:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    .line 1373
    .local v5, "target":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->isAdded()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1374
    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->j()V

    .line 1375
    invoke-virtual {v5}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->getTag()Ljava/lang/String;

    move-result-object v4

    .line 1376
    .local v4, "tag":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1377
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1380
    :cond_0
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->y:Landroid/app/FragmentManager;

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1381
    .local v2, "ft":Landroid/app/FragmentTransaction;
    if-eqz p2, :cond_1

    .line 1382
    iget-object v0, p2, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;->res:[I

    .line 1383
    .local v0, "animRes":[I
    if-eqz v0, :cond_1

    array-length v6, v0

    if-lez v6, :cond_1

    .line 1384
    array-length v6, v0

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    .line 1385
    aget v6, v0, v8

    aget v7, v0, v9

    aget v8, v0, v10

    const/4 v9, 0x3

    aget v9, v0, v9

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    .line 1393
    .end local v0    # "animRes":[I
    :cond_1
    :goto_0
    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v6

    sget v7, Lhdn$h;->fragment_container:I

    .line 1394
    invoke-virtual {v6, v7, v5, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v6

    .line 1395
    invoke-virtual {v6, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v6

    .line 1396
    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1397
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->y:Landroid/app/FragmentManager;

    invoke-virtual {v6}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1398
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->E:Ljava/util/Stack;

    invoke-virtual {v6, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    const/4 v3, 0x1

    .line 1400
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->i(Ljava/lang/String;)V

    .line 28490
    .end local v2    # "ft":Landroid/app/FragmentTransaction;
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "target":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    :cond_2
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->H:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;

    if-eqz v6, :cond_3

    .line 28492
    if-eqz v3, :cond_5

    .line 28493
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->H:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;

    invoke-virtual {v6, p1}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;->callbackGoSuccess(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    .line 1387
    .restart local v0    # "animRes":[I
    .restart local v2    # "ft":Landroid/app/FragmentTransaction;
    .restart local v4    # "tag":Ljava/lang/String;
    .restart local v5    # "target":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    :cond_4
    array-length v6, v0

    if-ne v6, v10, :cond_1

    .line 1388
    aget v6, v0, v8

    aget v7, v0, v9

    invoke-virtual {v2, v6, v7}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 28495
    .end local v0    # "animRes":[I
    .end local v2    # "ft":Landroid/app/FragmentTransaction;
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "target":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    :cond_5
    new-instance v6, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 28496
    const-string/jumbo v7, "failed (id ["

    invoke-virtual {v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 28497
    invoke-virtual {v6, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 28498
    const-string/jumbo v7, "] might not be preloaded)"

    invoke-virtual {v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 28499
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->H:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;

    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;->callbackGoFail(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->B:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 8
    .param p1, "id"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 993
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->y:Landroid/app/FragmentManager;

    invoke-virtual {v5}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v5

    if-gt v5, v6, :cond_1

    .line 994
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->H:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;

    const-string/jumbo v6, "Cannot pop the last frame"

    invoke-virtual {v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;->callbackPopFail(Ljava/lang/String;)V

    .line 1039
    :cond_0
    :goto_0
    return-void

    .line 999
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1000
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->E:Ljava/util/Stack;

    invoke-virtual {v5, p1}, Ljava/util/Stack;->search(Ljava/lang/Object;)I

    move-result v3

    .line 1001
    .local v3, "index":I
    if-le v3, v6, :cond_2

    .line 1002
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->H:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;

    invoke-virtual {v5}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;->callbackPopSuccess()V

    .line 1003
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v7}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->a(Ljava/lang/String;I)V

    .line 1005
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->h()Ljava/lang/String;

    .line 1008
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    add-int/lit8 v5, v3, -0x1

    if-ge v2, v5, :cond_3

    .line 1009
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->h()Ljava/lang/String;

    move-result-object v4

    .line 1010
    .local v4, "popId":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->f(Ljava/lang/String;)V

    .line 1008
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1013
    .end local v2    # "i":I
    .end local v4    # "popId":Ljava/lang/String;
    :cond_2
    if-ne v3, v6, :cond_4

    .line 1014
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->H:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;

    const-string/jumbo v6, "Cannot pop to the current frame"

    invoke-virtual {v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;->callbackPopFail(Ljava/lang/String;)V

    .line 1034
    .end local v3    # "index":I
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->i()Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    move-result-object v0

    .line 1035
    .local v0, "currentFragment":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    if-eqz v0, :cond_0

    .line 1036
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->c()Ljava/lang/String;

    move-result-object v1

    .line 1037
    .local v1, "currentId":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 1017
    .end local v0    # "currentFragment":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    .end local v1    # "currentId":Ljava/lang/String;
    .restart local v3    # "index":I
    :cond_4
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->H:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Cannot find the specified target frame with id: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;->callbackPopFail(Ljava/lang/String;)V

    goto :goto_2

    .line 1024
    .end local v3    # "index":I
    :cond_5
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->H:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;

    invoke-virtual {v5}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;->callbackPopSuccess()V

    .line 1025
    const/4 v5, 0x0

    invoke-direct {p0, v5, v7}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->a(Ljava/lang/String;I)V

    .line 1026
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->h()Ljava/lang/String;

    goto :goto_2
.end method

.method static synthetic d(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->g(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->C:Landroid/widget/ImageView;

    return-object v0
.end method

.method private declared-synchronized e(Ljava/lang/String;)V
    .locals 6
    .param p1, "navId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1219
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->e:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1220
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->E:Ljava/util/Stack;

    invoke-virtual {v4, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1221
    const-string/jumbo v4, "Nav"

    const-string/jumbo v5, "Trying to recycling a frame in the stack"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1249
    :cond_0
    monitor-exit p0

    return-void

    .line 1224
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->e:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    .line 1225
    .local v0, "frag":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    if-eqz v0, :cond_2

    .line 1226
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->g()V

    .line 1228
    :cond_2
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->g:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1231
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->f:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1232
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->f:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    if-eqz v2, :cond_3

    .line 1234
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1235
    .local v1, "id":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1219
    .end local v0    # "frag":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1240
    .restart local v0    # "frag":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->f:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1241
    .restart local v1    # "id":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->f:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1242
    .local v3, "preloadList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_4

    .line 1244
    :cond_5
    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1
.end method

.method static synthetic f(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->D:Landroid/widget/TextView;

    return-object v0
.end method

.method private declared-synchronized f(Ljava/lang/String;)V
    .locals 8
    .param p1, "navId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1253
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 1273
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1256
    :cond_1
    const/4 v3, 0x0

    .line 1257
    .local v3, "isPreloaded":Z
    :try_start_1
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->f:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1259
    .local v4, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1260
    .local v1, "id":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->f:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1261
    .local v2, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 1262
    .local v5, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v5, :cond_2

    .line 1263
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1264
    const/4 v3, 0x1

    .line 1270
    .end local v0    # "i":I
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "size":I
    :cond_3
    if-nez v3, :cond_0

    .line 1271
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1253
    .end local v3    # "isPreloaded":Z
    .end local v4    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1262
    .restart local v0    # "i":I
    .restart local v1    # "id":Ljava/lang/String;
    .restart local v2    # "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "isPreloaded":Z
    .restart local v4    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "size":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic g(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->j()V

    return-void
.end method

.method private declared-synchronized g(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1287
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1043
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->E:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1044
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->E:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1045
    .local v1, "id":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    .line 1046
    .local v0, "frag":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    if-eqz v0, :cond_0

    .line 1047
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1051
    .end local v0    # "frag":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    .end local v1    # "id":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    const-string/jumbo v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1043
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method static synthetic h(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized h(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1361
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1362
    monitor-exit p0

    return-void

    .line 1361
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private i()Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1057
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->y:Landroid/app/FragmentManager;

    if-eqz v3, :cond_0

    .line 1058
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->y:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 1059
    .local v1, "count":I
    if-lez v1, :cond_0

    .line 1060
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->y:Landroid/app/FragmentManager;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 1061
    .local v0, "backStackEntry":Landroid/app/FragmentManager$BackStackEntry;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->y:Landroid/app/FragmentManager;

    invoke-interface {v0}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    .line 1066
    .end local v0    # "backStackEntry":Landroid/app/FragmentManager$BackStackEntry;
    .end local v1    # "count":I
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private i(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1483
    return-void
.end method

.method private declared-synchronized j(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "navId"    # Ljava/lang/String;

    .prologue
    .line 1486
    monitor-enter p0

    monitor-exit p0

    return-object p1
.end method

.method private declared-synchronized j()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1276
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->y:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1278
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->h(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1284
    :goto_0
    monitor-exit p0

    return-void

    .line 1281
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized k()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1291
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->i()Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    move-result-object v0

    .line 1292
    .local v0, "current":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    if-eqz v0, :cond_0

    .line 1293
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->c()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1296
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    const-string/jumbo v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1291
    .end local v0    # "current":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public final a(I)V
    .locals 4
    .param p1, "state"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1757
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->i()Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    move-result-object v0

    .line 1758
    .local v0, "current":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    if-eqz v0, :cond_1

    .line 1759
    if-nez p1, :cond_2

    .line 1760
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->k()V

    .line 1766
    :cond_0
    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1768
    .local v1, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "state"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1772
    :goto_1
    const-string/jumbo v3, "drawer"

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1774
    .end local v1    # "data":Lorg/json/JSONObject;
    :cond_1
    return-void

    .line 1762
    :cond_2
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 1763
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->j()V

    goto :goto_0

    .line 1769
    .restart local v1    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 1770
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public final a(Landroid/webkit/ValueCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1735
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->n:Lhdy;

    if-eqz v0, :cond_1

    .line 1736
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->n:Lhdy;

    .line 38107
    const-string/jumbo v4, "H5"

    sget-object v5, Lhdy;->e:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v6, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "updateFileChooser uploadFile is null:"

    aput-object v0, v6, v2

    if-nez p1, :cond_2

    move v0, v1

    .line 38108
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v1

    const/4 v0, 0x2

    const-string/jumbo v7, " mUploadFileCallback is null:"

    aput-object v7, v6, v0

    const/4 v0, 0x3

    iget-object v7, v3, Lhdy;->c:Landroid/webkit/ValueCallback;

    if-nez v7, :cond_3

    .line 38109
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v0

    .line 38107
    invoke-static {v4, v8, v5, v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38110
    iget-object v0, v3, Lhdy;->c:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    .line 38111
    iget-object v0, v3, Lhdy;->c:Landroid/webkit/ValueCallback;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 38113
    :cond_0
    iput-object p1, v3, Lhdy;->c:Landroid/webkit/ValueCallback;

    .line 38115
    iput-object v8, v3, Lhdy;->b:Landroid/webkit/ValueCallback;

    .line 1738
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 38107
    goto :goto_0

    :cond_3
    move v1, v2

    .line 38108
    goto :goto_1
.end method

.method protected final a(Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;)V
    .locals 2
    .param p1, "fragment"    # Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 963
    if-eqz p1, :cond_0

    .line 964
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->q:Lhdi;

    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhdi;->c(Ljava/lang/String;)V

    .line 965
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->g()V

    .line 967
    :cond_0
    return-void
.end method

.method public a(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)V
    .locals 1
    .param p1, "webView"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 1528
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->d:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 1529
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->c:Lhea;

    .line 31052
    iput-object p1, v0, Lhea;->c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 1530
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "unitName"    # Ljava/lang/String;

    .prologue
    .line 1820
    const-string/jumbo v0, "stick_page_unit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1821
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->stickPage()V

    .line 1823
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 2
    .param p1, "navId"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1550
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->i()Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    move-result-object v0

    .line 1553
    .local v0, "current":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1554
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->H:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;

    invoke-virtual {v1, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;->callbackPreloadSuccess(Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 1556
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->c:Lhea;

    if-eqz v1, :cond_1

    .line 1557
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->c:Lhea;

    .line 32056
    if-nez p2, :cond_1

    .line 32058
    invoke-virtual {v1}, Lhea;->g()V

    .line 1559
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "anim"    # Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;

    .prologue
    .line 1779
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->c(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;)V

    .line 1780
    return-void
.end method

.method public final a(Ljava/lang/String;Lhdi$b;)V
    .locals 4
    .param p1, "navId"    # Ljava/lang/String;
    .param p2, "message"    # Lhdi$b;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1648
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1649
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->o:Lhdx;

    .line 37157
    iget-object v1, v1, Lhdx;->i:Ljava/lang/String;

    .line 1649
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1651
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->o:Lhdx;

    .line 37162
    iget-object v2, v1, Lhdx;->f:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v2, :cond_0

    .line 37163
    iget-object v2, v1, Lhdx;->f:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    const-string/jumbo v3, "message"

    if-eqz p2, :cond_1

    .line 37164
    invoke-virtual {p2}, Lhdi$b;->c()Lorg/json/JSONObject;

    move-result-object v1

    .line 37163
    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1660
    :cond_0
    :goto_1
    return-void

    .line 37164
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    .line 1654
    :cond_2
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    .line 1655
    .local v0, "target":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    if-eqz v0, :cond_0

    .line 1656
    const-string/jumbo v1, "message"

    invoke-virtual {p2}, Lhdi$b;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 3
    .param p1, "flag"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1572
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    if-eqz v0, :cond_0

    .line 1573
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .line 32869
    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->i:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->b:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v2, v0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->setRight(ZZZLjava/lang/String;)V

    .line 1576
    :cond_0
    return-void
.end method

.method public final b(Landroid/webkit/ValueCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1742
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->n:Lhdy;

    if-eqz v0, :cond_1

    .line 1743
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->n:Lhdy;

    .line 38119
    const-string/jumbo v4, "H5"

    sget-object v5, Lhdy;->e:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v6, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "onShowFileChooser uploadFile is null:"

    aput-object v0, v6, v2

    if-nez p1, :cond_2

    move v0, v1

    .line 38120
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v1

    const/4 v0, 0x2

    const-string/jumbo v7, " mUploadFileChooserCallback is null:"

    aput-object v7, v6, v0

    const/4 v7, 0x3

    iget-object v0, v3, Lhdy;->b:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_3

    move v0, v1

    .line 38121
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v7

    .line 38119
    invoke-static {v4, v8, v5, v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38122
    iget-object v0, v3, Lhdy;->b:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    .line 38123
    new-array v0, v1, [Landroid/net/Uri;

    .line 38124
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    aput-object v1, v0, v2

    .line 38125
    iget-object v1, v3, Lhdy;->b:Landroid/webkit/ValueCallback;

    invoke-interface {v1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 38127
    :cond_0
    iput-object p1, v3, Lhdy;->b:Landroid/webkit/ValueCallback;

    .line 38129
    iput-object v8, v3, Lhdy;->c:Landroid/webkit/ValueCallback;

    .line 1745
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 38119
    goto :goto_0

    :cond_3
    move v0, v2

    .line 38120
    goto :goto_1
.end method

.method public final b(Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 2
    .param p1, "tabId"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1563
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->i()Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    move-result-object v0

    .line 1564
    .local v0, "current":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1565
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->I:Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;

    invoke-virtual {v1, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;->callbackInitSuccess(Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 1567
    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 10
    .param p1, "acceptVideo"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1749
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->n:Lhdy;

    if-eqz v0, :cond_0

    .line 1750
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->n:Lhdy;

    .line 38133
    const-string/jumbo v0, "H5"

    sget-object v2, Lhdy;->e:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "showChooseFileDialog acceptVideo=>"

    aput-object v4, v3, v8

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v0, v9, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38134
    iget-object v0, v1, Lhdy;->d:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 38135
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v0, v1, Lhdy;->d:Landroid/app/Activity;

    invoke-direct {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 38136
    sget v0, Lhdn$k;->dt_lightapp_upload_menu_title:I

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 38138
    if-eqz p1, :cond_1

    .line 38139
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 38140
    iget-object v3, v1, Lhdy;->d:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lhdn$k;->dt_lightapp_upload_menu_photo_or_video:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    .line 38141
    iget-object v3, v1, Lhdy;->d:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lhdn$k;->dt_lightapp_upload_menu_device_files:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    .line 38142
    iget-object v3, v1, Lhdy;->d:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lhdn$k;->dt_lightapp_upload_menu_take_video:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    .line 38148
    :goto_0
    if-eqz v0, :cond_0

    array-length v3, v0

    if-gtz v3, :cond_2

    .line 38149
    :cond_0
    :goto_1
    return-void

    .line 38145
    :cond_1
    iget-object v0, v1, Lhdy;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lhdn$c;->alm_cspace_upload_menu:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 38152
    :cond_2
    const-string/jumbo v3, "H5"

    sget-object v4, Lhdy;->e:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "showChooseFileDialog array length=>"

    aput-object v6, v5, v8

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v9, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38153
    new-instance v3, Lhdy$1;

    invoke-direct {v3, v1}, Lhdy$1;-><init>(Lhdy;)V

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 38203
    invoke-virtual {v2, v7}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 38204
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 38205
    new-instance v0, Lhdy$2;

    invoke-direct {v0, v1}, Lhdy$2;-><init>(Lhdy;)V

    .line 39173
    iput-object v0, v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a:Landroid/content/DialogInterface$OnDismissListener;

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1642
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->o:Lhdx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->o:Lhdx;

    .line 36157
    iget-object v0, v0, Lhdx;->i:Ljava/lang/String;

    .line 1642
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1539
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    .line 1540
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    if-eqz v0, :cond_0

    .line 1541
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Ljava/lang/String;)V

    .line 1543
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->t:Lhec;

    if-eqz v0, :cond_1

    .line 1544
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->t:Lhec;

    .line 31135
    iget-object v1, v0, Lhec;->f:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    invoke-interface {v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhec;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31138
    iget-boolean v1, v0, Lhec;->g:Z

    if-eqz v1, :cond_1

    .line 31139
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.lightapp.microapp.TOP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31140
    const-string/jumbo v2, "url"

    iget-object v3, v0, Lhec;->f:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    invoke-interface {v3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31141
    const-string/jumbo v2, "title"

    sget-object v3, Lhec;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31142
    const-string/jumbo v2, "intentFlag"

    sget v3, Lhec;->d:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31143
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 31144
    iget-object v0, v0, Lhec;->f:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    invoke-interface {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;->getUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhec;->b:Ljava/lang/String;

    .line 1546
    :cond_1
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 1826
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->t:Lhec;

    if-eqz v0, :cond_0

    .line 1827
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->t:Lhec;

    .line 39256
    iget-boolean v0, v0, Lhec;->g:Z

    .line 1829
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public consumeMessage(J)V
    .locals 1
    .param p1, "mid"    # J

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->q:Lhdi;

    invoke-virtual {v0, p1, p2}, Lhdi;->a(J)V

    .line 1627
    return-void
.end method

.method protected d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 931
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->i()Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    move-result-object v0

    .line 932
    .local v0, "runtimeFragment":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    if-eqz v0, :cond_0

    .line 933
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->a(Landroid/os/Bundle;)V

    .line 935
    :cond_0
    return-void
.end method

.method public dispatchEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 1785
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->i()Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    move-result-object v0

    .line 1786
    .local v0, "current":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    if-eqz v0, :cond_0

    .line 1787
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1789
    :cond_0
    return-void
.end method

.method protected e()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 951
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 952
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->e:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    .line 953
    .local v0, "fragment":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->a(Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;)V

    .line 954
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->e:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 956
    .end local v0    # "fragment":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    .end local v1    # "id":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 957
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 958
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 959
    return-void
.end method

.method public final f()Lcom/alibaba/lightapp/runtime/INuvaContext;
    .locals 0

    .prologue
    .line 1523
    return-object p0
.end method

.method public fetchMessage(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lhdi$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1621
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->q:Lhdi;

    invoke-virtual {v0, p1}, Lhdi;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 517
    .line 21522
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 21523
    if-eqz v0, :cond_0

    const-string/jumbo v1, "intent_key_preload_model"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21524
    const-string/jumbo v1, "intent_key_preload_model"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;

    .line 21525
    invoke-static {}, Lhqi;->a()Lhqi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhqi;->a(Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;)Z

    .line 518
    :cond_0
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->finish()V

    .line 519
    return-void
.end method

.method public getActionTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->A:Ljava/lang/String;

    .line 689
    :goto_0
    return-object v0

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 689
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->i()Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppId()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "micro_app"

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentNavId()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1602
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->o:Lhdx;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->o:Lhdx;

    .line 35152
    iget-boolean v1, v1, Lhdx;->g:Z

    .line 1602
    if-eqz v1, :cond_0

    .line 1603
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->o:Lhdx;

    .line 35157
    iget-object v1, v1, Lhdx;->i:Ljava/lang/String;

    .line 1610
    :goto_0
    return-object v1

    .line 1605
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->i()Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    move-result-object v0

    .line 1606
    .local v0, "current":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    if-eqz v0, :cond_1

    .line 1607
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1610
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->i()Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 677
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->i()Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->b()Ljava/lang/String;

    move-result-object v0

    .line 679
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public goBack()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1798
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1799
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->i()Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    move-result-object v0

    .line 1800
    .local v0, "runtimeFragment":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1810
    .end local v0    # "runtimeFragment":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    :cond_0
    :goto_0
    return-void

    .line 1803
    .restart local v0    # "runtimeFragment":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->y:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 1804
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 1808
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->finish()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 630
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 631
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->i()Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    move-result-object v0

    .line 632
    .local v0, "runtimeFragment":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    if-eqz v0, :cond_0

    .line 633
    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->a(IILandroid/content/Intent;)V

    .line 635
    :cond_0
    const-string/jumbo v1, "RuntimeStart"

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    const-string/jumbo v6, "activity onActivityResult"

    new-array v7, v2, [Ljava/lang/Object;

    const-string/jumbo v8, "activity onActivityResult completed"

    aput-object v8, v7, v3

    invoke-static {v1, v5, v6, v7}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 636
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->n:Lhdy;

    if-eqz v1, :cond_1

    .line 637
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->n:Lhdy;

    .line 25073
    const-string/jumbo v6, "H5"

    sget-object v7, Lhdy;->e:Ljava/lang/String;

    const/16 v1, 0x8

    new-array v8, v1, [Ljava/lang/Object;

    const-string/jumbo v1, " onActivityResult requestCode=>"

    aput-object v1, v8, v3

    .line 25074
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v2

    const/4 v1, 0x2

    const-string/jumbo v9, " resultCode=>"

    aput-object v9, v8, v1

    const/4 v1, 0x3

    .line 25075
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    const/4 v1, 0x4

    const-string/jumbo v9, " mUploadFileChooserCallback is null:"

    aput-object v9, v8, v1

    const/4 v9, 0x5

    iget-object v1, v5, Lhdy;->b:Landroid/webkit/ValueCallback;

    if-nez v1, :cond_2

    move v1, v2

    .line 25076
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v8, v9

    const/4 v1, 0x6

    const-string/jumbo v9, " mUploadFileCallback is null:"

    aput-object v9, v8, v1

    const/4 v9, 0x7

    iget-object v1, v5, Lhdy;->c:Landroid/webkit/ValueCallback;

    if-nez v1, :cond_3

    move v1, v2

    .line 25077
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v8, v9

    .line 25073
    invoke-static {v6, v4, v7, v8}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25078
    packed-switch p1, :pswitch_data_0

    .line 639
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v1, v3

    .line 25075
    goto :goto_0

    :cond_3
    move v1, v3

    .line 25076
    goto :goto_1

    .line 25081
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_4

    .line 25082
    if-eqz p3, :cond_8

    .line 25083
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 25085
    :goto_3
    if-nez v1, :cond_5

    .line 25089
    :cond_4
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 25091
    :cond_5
    new-array v2, v2, [Landroid/net/Uri;

    .line 25092
    aput-object v1, v2, v3

    .line 25093
    iget-object v3, v5, Lhdy;->b:Landroid/webkit/ValueCallback;

    if-eqz v3, :cond_7

    .line 25094
    iget-object v1, v5, Lhdy;->b:Landroid/webkit/ValueCallback;

    invoke-interface {v1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 25100
    :cond_6
    :goto_4
    iput-object v4, v5, Lhdy;->b:Landroid/webkit/ValueCallback;

    .line 25101
    iput-object v4, v5, Lhdy;->c:Landroid/webkit/ValueCallback;

    goto :goto_2

    .line 25095
    :cond_7
    iget-object v2, v5, Lhdy;->c:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_6

    .line 25096
    iget-object v2, v5, Lhdy;->c:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_4

    :cond_8
    move-object v1, v4

    goto :goto_3

    .line 25078
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 562
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 563
    const-string/jumbo v1, "RuntimeStart"

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    const-string/jumbo v3, "activity onBackPressed"

    new-array v4, v6, [Ljava/lang/Object;

    const-string/jumbo v5, "activity onBackPressed"

    aput-object v5, v4, v7

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 564
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    move-result-object v1

    const-string/jumbo v2, "activity_obBackPress"

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->addRuntimeLifeCycle(Ljava/lang/String;)V

    .line 566
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    if-eqz v1, :cond_0

    .line 567
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->e()V

    .line 569
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->c:Lhea;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->c:Lhea;

    invoke-virtual {v1}, Lhea;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 570
    const-string/jumbo v1, "RuntimeStart"

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    const-string/jumbo v3, "activity onBackPressed"

    new-array v4, v6, [Ljava/lang/Object;

    const-string/jumbo v5, "activity onBackPressed handled by live"

    aput-object v5, v4, v7

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 614
    :cond_1
    :goto_0
    return-void

    .line 574
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->i()Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    move-result-object v0

    .line 575
    .local v0, "runtimeFragment":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->h()Z

    move-result v1

    if-nez v1, :cond_1

    .line 578
    :cond_3
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->y:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-le v1, v6, :cond_4

    .line 579
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 582
    :cond_4
    const-string/jumbo v1, "RuntimeStart"

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    const-string/jumbo v3, "activity onBackPressed"

    new-array v4, v6, [Ljava/lang/Object;

    const-string/jumbo v5, "activity onBackPressed completed"

    aput-object v5, v4, v7

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 584
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_9

    .line 585
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->t:Lhec;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->t:Lhec;

    .line 22256
    iget-boolean v1, v1, Lhec;->g:Z

    .line 585
    if-eqz v1, :cond_5

    .line 587
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/ding/home.html"

    new-instance v3, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$6;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$6;-><init>(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)V

    .line 588
    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 597
    invoke-static {p0, v6, v6}, Lhrf;->a(Landroid/app/Activity;ZZ)Z

    .line 598
    const-string/jumbo v1, "H5"

    const-string/jumbo v2, "stickPage==="

    const-string/jumbo v3, "mStickPageDelegate != null && mStickPageDelegate.isOnStick()"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 22703
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "intent_key_preload_switch"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 600
    if-eqz v1, :cond_8

    .line 601
    invoke-static {}, Lhqi;->a()Lhqi;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 23083
    iget-object v3, v1, Lhqi;->a:Lhqj;

    if-eqz v3, :cond_6

    .line 23084
    iget-object v1, v1, Lhqi;->a:Lhqj;

    .line 24020
    iget-object v1, v1, Lhqj;->a:Lhqh;

    .line 23085
    if-eqz v1, :cond_6

    .line 23086
    invoke-interface {v1, p0, v2}, Lhqh;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 602
    :cond_6
    invoke-static {}, Lhqi;->a()Lhqi;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 24111
    iget-object v3, v1, Lhqi;->a:Lhqj;

    if-eqz v3, :cond_7

    .line 24112
    iget-object v1, v1, Lhqi;->a:Lhqj;

    .line 25020
    iget-object v1, v1, Lhqj;->a:Lhqh;

    .line 24113
    if-eqz v1, :cond_7

    .line 24114
    invoke-interface {v1, v2}, Lhqh;->a(Landroid/os/Bundle;)V

    .line 603
    :cond_7
    invoke-static {p0, v6, v6}, Lhrf;->a(Landroid/app/Activity;ZZ)Z

    goto/16 :goto_0

    .line 605
    :cond_8
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->b()V

    .line 606
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->finish()V

    goto/16 :goto_0

    .line 609
    :cond_9
    const-string/jumbo v1, "H5"

    const-string/jumbo v2, "stickPage==="

    const-string/jumbo v3, "Build.VERSION.SDK_INT < Build.VERSION_CODES.M"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->b()V

    .line 611
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1844
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1845
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1846
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 1847
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1849
    :cond_0
    return-void
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 643
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 644
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->r:Lheb;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->r:Lheb;

    invoke-virtual {v0}, Lheb;->b()V

    .line 647
    :cond_0
    const-string/jumbo v0, "RuntimeStart"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    const-string/jumbo v2, "activity onContextMenuClosed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "activity onContextMenuClosed completed"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 648
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 220
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->initCommonWebStatistics()V

    .line 222
    invoke-static {}, Lhdv;->b()Z

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 2717
    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2718
    if-eqz p1, :cond_2

    .line 2719
    const-string/jumbo v4, "url_destroy_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    .line 2742
    :cond_0
    :goto_0
    invoke-static {}, Lhsb;->a()Lhsb;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lhsb;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2743
    const/4 v3, 0x0

    .line 226
    :goto_1
    if-nez v3, :cond_a

    .line 228
    invoke-super/range {p0 .. p1}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 229
    const-string/jumbo v3, "RuntimeStart"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    const-string/jumbo v5, "activity onCteate"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "intent data validate fail"

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->finish()V

    .line 297
    :cond_1
    :goto_2
    return-void

    .line 2721
    :cond_2
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 2722
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 2723
    if-eqz v5, :cond_4

    .line 2724
    const-string/jumbo v4, "url"

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2725
    const-string/jumbo v4, "url"

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    .line 2728
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v6, "url"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    invoke-static {v4, v6, v7}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2730
    const-string/jumbo v4, "webview_extras"

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2731
    const-string/jumbo v4, "webview_extras"

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->a:Landroid/os/Bundle;

    .line 2732
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->a:Landroid/os/Bundle;

    const-string/jumbo v5, "is_finish_activity"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->x:Z

    goto :goto_0

    .line 2735
    :cond_4
    if-eqz v4, :cond_0

    .line 2736
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    goto/16 :goto_0

    .line 2746
    :cond_5
    if-eqz v3, :cond_6

    .line 2747
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 2748
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "from_work_stat"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2749
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "from_work_stat"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->z:Z

    .line 2753
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2754
    sget v3, Lhdn$k;->url_not_null_tip:I

    invoke-static {v3}, Lcms;->a(I)V

    .line 2755
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 2758
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    invoke-static {v3}, Lhgy;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2759
    const-string/jumbo v3, "dingtalk weex devtool"

    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    .line 2760
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 2774
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lhgy;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2775
    const-string/jumbo v3, "RuntimeStart"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    const-string/jumbo v5, "activity onCteate"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "should start with weex"

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2776
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 2779
    :cond_9
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 234
    :cond_a
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->setRuntimeOnCreateTime(Ljava/lang/String;J)V

    .line 2783
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "micro_app"

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 2784
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "micro_agent"

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 2785
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 2786
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2787
    const/4 v4, 0x0

    .line 2788
    const/4 v5, 0x0

    .line 2790
    :try_start_0
    const-string/jumbo v10, "dd_appid"

    invoke-virtual {v3, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2791
    const-string/jumbo v10, "dd_agentid"

    invoke-virtual {v3, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object/from16 v16, v3

    move-object v3, v4

    move-object/from16 v4, v16

    .line 2795
    :goto_3
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v5, v8, v10

    if-nez v5, :cond_b

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 2797
    :try_start_1
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v8

    .line 2803
    :cond_b
    :goto_4
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v3, v6, v10

    if-nez v3, :cond_20

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 2805
    :try_start_2
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v4

    move-wide v10, v4

    move-wide v6, v8

    .line 2813
    :goto_5
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v3, v4, v6

    if-eqz v3, :cond_c

    const-wide/16 v4, 0x0

    cmp-long v3, v6, v4

    if-nez v3, :cond_1b

    .line 2815
    :cond_c
    const-string/jumbo v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->A:Ljava/lang/String;

    .line 2829
    :cond_d
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "micro_from_oa"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 2848
    invoke-static {}, Lhqx;->b()Lhqw;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v5, v8}, Lhqw;->a(Ljava/lang/String;Ljava/lang/String;)Lhqy;

    .line 2831
    invoke-static {}, Lhfo;->a()Lhfo;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    .line 3048
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 3049
    new-instance v9, Lhfo$a;

    const/4 v3, 0x0

    invoke-direct {v9, v5, v3}, Lhfo$a;-><init>(Lhfo;B)V

    .line 3193
    iput-object v8, v9, Lhfo$a;->e:Ljava/lang/String;

    .line 4193
    iput-boolean v4, v9, Lhfo$a;->f:Z

    .line 3052
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v3, v6, v12

    if-eqz v3, :cond_e

    .line 3053
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 5193
    iput-object v3, v9, Lhfo$a;->c:Ljava/lang/String;

    .line 3055
    :cond_e
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v3, v10, v12

    if-eqz v3, :cond_f

    .line 3056
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 6193
    iput-object v3, v9, Lhfo$a;->b:Ljava/lang/String;

    .line 3059
    :cond_f
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v12

    invoke-virtual {v12}, Lcid;->c()Landroid/app/Application;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/content/Context;)J

    move-result-wide v12

    .line 3060
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v3

    .line 7193
    iput-object v3, v9, Lhfo$a;->a:Ljava/lang/String;

    .line 3063
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->c()Ljava/util/List;

    move-result-object v3

    .line 3064
    if-eqz v3, :cond_12

    .line 3065
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_10
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 3066
    if-eqz v3, :cond_10

    .line 3067
    iget-object v3, v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    .line 3068
    if-eqz v3, :cond_10

    .line 3069
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_11
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 3070
    if-eqz v3, :cond_11

    .line 3071
    const-wide v14, 0x7fffffffffffffffL

    cmp-long v14, v10, v14

    if-nez v14, :cond_1c

    const-wide v14, 0x7fffffffffffffffL

    cmp-long v14, v6, v14

    if-nez v14, :cond_1c

    .line 3072
    iget-object v14, v3, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->homepage:Ljava/lang/String;

    invoke-static {v8, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 3073
    iget-wide v12, v3, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    .line 8193
    iput-object v12, v9, Lhfo$a;->c:Ljava/lang/String;

    .line 3074
    iget-wide v12, v3, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    .line 9193
    iput-object v12, v9, Lhfo$a;->b:Ljava/lang/String;

    .line 3075
    iget-object v3, v3, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->name:Ljava/lang/String;

    .line 10193
    iput-object v3, v9, Lhfo$a;->d:Ljava/lang/String;

    .line 3099
    :cond_12
    :goto_7
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 3100
    iget-object v3, v5, Lhfo;->b:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3103
    :cond_13
    invoke-static {v8}, Lhfo;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3104
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 3105
    iget-object v4, v5, Lhfo;->a:Ljava/util/Map;

    invoke-interface {v4, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3108
    :cond_14
    iput-object v9, v5, Lhfo;->c:Lhfo$a;

    .line 12835
    :cond_15
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v3, v4, v6

    if-nez v3, :cond_16

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v3, v4, v10

    if-eqz v3, :cond_17

    .line 12836
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-instance v6, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$7;-><init>(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)V

    invoke-static {v3, v4, v5, v6}, Lhfw;->a(Ljava/lang/String;IILandroid/webkit/ValueCallback;)V

    .line 238
    :cond_17
    invoke-super/range {p0 .. p1}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 240
    sget v3, Lhdn$i;->activity_drawer_common_webview:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->setContentView(I)V

    .line 241
    sget v3, Lhdn$h;->rl_loading:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->B:Landroid/widget/RelativeLayout;

    .line 242
    sget v3, Lhdn$h;->miniapp_icon:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->C:Landroid/widget/ImageView;

    .line 243
    sget v3, Lhdn$h;->tv_tips:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->D:Landroid/widget/TextView;

    .line 244
    new-instance v3, Lhec;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1}, Lhec;-><init>(Landroid/app/Activity;Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->t:Lhec;

    .line 245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->t:Lhec;

    invoke-virtual {v3}, Lhec;->a()V

    .line 247
    new-instance v3, Lhdz;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lhdz;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->u:Lhdz;

    .line 248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->u:Lhdz;

    invoke-virtual {v3}, Lhdz;->a()V

    .line 250
    new-instance v3, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->t:Lhec;

    .line 13223
    iput-object v4, v3, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->g:Lhec;

    .line 251
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->u:Lhdz;

    .line 13228
    iput-object v4, v3, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->h:Lhdz;

    .line 251
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .line 252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .line 13383
    move-object/from16 v0, p0

    iput-object v0, v3, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    .line 253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .line 13387
    move-object/from16 v0, p0

    iput-object v0, v3, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->f:Lhej;

    .line 254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a()V

    .line 255
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Ljava/lang/String;)V

    .line 257
    new-instance v3, Lhdy;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lhdy;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->n:Lhdy;

    .line 258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->n:Lhdy;

    invoke-virtual {v3}, Lhdy;->a()V

    .line 260
    new-instance v3, Lhdx;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lhdx;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->o:Lhdx;

    .line 261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->o:Lhdx;

    .line 14066
    move-object/from16 v0, p0

    iput-object v0, v3, Lhdx;->b:Lhdx$c;

    .line 262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->o:Lhdx;

    invoke-virtual {v3}, Lhdx;->a()V

    .line 264
    new-instance v3, Lhed;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lhed;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->p:Lhed;

    .line 265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->p:Lhed;

    .line 15060
    move-object/from16 v0, p0

    iput-object v0, v3, Lhed;->b:Lhed$a;

    .line 266
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->p:Lhed;

    invoke-virtual {v3}, Lhed;->a()V

    .line 268
    new-instance v3, Lheb;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lheb;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->r:Lheb;

    .line 269
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->r:Lheb;

    invoke-virtual {v3}, Lheb;->a()V

    .line 271
    new-instance v3, Lhdw;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lhdw;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->s:Lhdw;

    .line 272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->s:Lhdw;

    invoke-virtual {v3}, Lhdw;->a()V

    .line 274
    new-instance v3, Lhea;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lhea;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->c:Lhea;

    .line 276
    new-instance v3, Lhdi;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lhdi;-><init>(Lhdi$a;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->q:Lhdi;

    .line 15886
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "show_bottom_botton"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 15887
    if-eqz v3, :cond_18

    .line 15888
    sget v3, Lhdn$h;->layout_bottom:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 15906
    sget v3, Lhdn$h;->layout_bottom:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$8;-><init>(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->y:Landroid/app/FragmentManager;

    .line 16072
    new-instance v4, Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    invoke-direct {v4}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;-><init>()V

    .line 16096
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    invoke-static {}, Lhhy;->a()Lhhy;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lhhy;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 16097
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    const-string/jumbo v5, "?"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 16098
    const/4 v5, -0x1

    if-ne v3, v5, :cond_1e

    .line 16099
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "?dd_web_timestamp="

    aput-object v6, v3, v5

    const/4 v5, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    .line 16074
    :cond_19
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->setUrl(Ljava/lang/String;)V

    .line 16075
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v5, "intent_key_preload_model"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 16076
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v5, "intent_key_preload_model"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;

    invoke-virtual {v4, v3}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->setPreloadModel(Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;)V

    .line 16079
    :cond_1a
    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->a(Lcom/alibaba/lightapp/runtime/model/WebViewModel;)Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;

    move-result-object v3

    .line 16080
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->a(Lhdt;)V

    .line 16081
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/alibaba/lightapp/runtime/fragment/RuntimeWebViewFragment;->a(Landroid/content/Context;)V

    .line 16109
    const-string/jumbo v4, "home_page"

    invoke-virtual {v3, v4}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->a(Ljava/lang/String;)V

    .line 16110
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->e:Ljava/util/Map;

    const-string/jumbo v5, "home_page"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16085
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->y:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 16086
    const-string/jumbo v5, "home_page"

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 16087
    sget v6, Lhdn$h;->fragment_container:I

    invoke-virtual {v4, v6, v3, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 16088
    invoke-virtual {v4, v5}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 16089
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 16090
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->y:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 16091
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->E:Ljava/util/Stack;

    const-string/jumbo v4, "home_page"

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16971
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->y:Landroid/app/FragmentManager;

    new-instance v4, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$9;-><init>(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 286
    const-string/jumbo v3, "IMAGE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 287
    .local v2, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    const-wide/16 v4, 0x0

    invoke-interface {v2, v4, v5}, Lcom/alibaba/doraemon/image/ImageMagician;->clearMemoryCache(J)V

    .line 17852
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 17853
    const-string/jumbo v4, "finish_activity"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17854
    const-string/jumbo v4, "auto_check_in"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17855
    invoke-static/range {p0 .. p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->F:Ldq;

    .line 17856
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->F:Ldq;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->G:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 291
    const-string/jumbo v3, "RuntimeStart"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    const-string/jumbo v5, "activity onCteate"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "activity onCreate completed"

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->clearRuntimeLog()V

    .line 293
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    move-result-object v3

    const-string/jumbo v4, "activity_onCreate"

    invoke-virtual {v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->addRuntimeLifeCycle(Ljava/lang/String;)V

    .line 294
    const-string/jumbo v3, "microapp_show_loading_tips_and_announce_new"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lhdo;->b(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 295
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->a()V

    goto/16 :goto_2

    .line 2792
    .end local v2    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    :catch_0
    move-exception v3

    .line 2793
    invoke-virtual {v3}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_3

    .line 2798
    :catch_1
    move-exception v3

    .line 2799
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 2800
    const-wide v8, 0x7fffffffffffffffL

    goto/16 :goto_4

    .line 2806
    :catch_2
    move-exception v3

    .line 2807
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 2808
    const-wide v4, 0x7fffffffffffffffL

    move-wide v10, v4

    move-wide v6, v8

    goto/16 :goto_5

    .line 2817
    :cond_1b
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/content/Context;)J

    move-result-wide v4

    .line 2818
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v3

    const-class v8, Lcom/alibaba/dingtalk/oabase/OAInterface;

    invoke-virtual {v3, v8}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/oabase/OAInterface;

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(JJI)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    move-result-object v3

    .line 2819
    if-eqz v3, :cond_d

    .line 2820
    iget-object v3, v3, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->A:Ljava/lang/String;

    goto/16 :goto_6

    .line 3079
    :cond_1c
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-eqz v14, :cond_1d

    const-wide v14, 0x7fffffffffffffffL

    cmp-long v14, v6, v14

    if-eqz v14, :cond_1d

    .line 3080
    iget-wide v14, v3, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    cmp-long v14, v6, v14

    if-nez v14, :cond_11

    .line 3081
    iget-object v3, v3, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->name:Ljava/lang/String;

    .line 11193
    iput-object v3, v9, Lhfo$a;->d:Ljava/lang/String;

    goto/16 :goto_7

    .line 3084
    :cond_1d
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-eqz v14, :cond_11

    const-wide v14, 0x7fffffffffffffffL

    cmp-long v14, v10, v14

    if-eqz v14, :cond_11

    .line 3085
    iget-wide v14, v3, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    cmp-long v14, v10, v14

    if-nez v14, :cond_11

    .line 3086
    iget-object v3, v3, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->name:Ljava/lang/String;

    .line 12193
    iput-object v3, v9, Lhfo$a;->d:Ljava/lang/String;

    goto/16 :goto_7

    .line 16100
    :cond_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_1f

    .line 16101
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    const/4 v8, 0x0

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "dd_web_timestamp="

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "&"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    goto/16 :goto_8

    .line 16103
    :cond_1f
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "&dd_web_timestamp="

    aput-object v6, v3, v5

    const/4 v5, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    goto/16 :goto_8

    :cond_20
    move-wide v10, v6

    move-wide v6, v8

    goto/16 :goto_5
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 652
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 653
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->r:Lheb;

    if-eqz v3, :cond_0

    .line 655
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->r:Lheb;

    .line 26060
    instance-of v4, p2, Lcom/uc/webview/export/WebView;

    if-eqz v4, :cond_0

    .line 26110
    new-instance v4, Lheb$2;

    invoke-direct {v4, v3}, Lheb$2;-><init>(Lheb;)V

    .line 26062
    check-cast p2, Lcom/uc/webview/export/WebView;

    .end local p2    # "v":Landroid/view/View;
    invoke-virtual {p2}, Lcom/uc/webview/export/WebView;->getHitTestResult()Lcom/uc/webview/export/WebView$HitTestResult;

    move-result-object v5

    .line 26063
    if-eqz v5, :cond_0

    .line 26064
    invoke-virtual {v3, p1, v5, v4}, Lheb;->a(Landroid/view/ContextMenu;Lcom/uc/webview/export/WebView$HitTestResult;Landroid/view/MenuItem$OnMenuItemClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 671
    :cond_0
    :goto_0
    const-string/jumbo v3, "RuntimeStart"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    const-string/jumbo v5, "activity onCreateContextMenu"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "activity onCreateContextMenu completed"

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 672
    return-void

    .line 656
    :catch_0
    move-exception v0

    .line 660
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 661
    .local v1, "hm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "error_desc"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    const-string/jumbo v3, "category"

    const-string/jumbo v4, "NullPointerException"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    const-string/jumbo v3, "item"

    const-string/jumbo v4, "onCreateContextMenu"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    const-string/jumbo v4, "boolean"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->r:Lheb;

    if-eqz v3, :cond_1

    const-string/jumbo v3, "true"

    :goto_1
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v3

    invoke-virtual {v3, v1}, Lgvi;->warn(Ljava/util/Map;)V

    .line 666
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 664
    :cond_1
    const-string/jumbo v3, "false"

    goto :goto_1

    .line 667
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "hm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v2

    .line 668
    .local v2, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 465
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->onDestroy()V

    .line 466
    invoke-static {}, Lhdv;->c()Z

    .line 467
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->e()V

    .line 468
    invoke-static {}, Lhqx;->b()Lhqw;

    move-result-object v0

    invoke-interface {v0}, Lhqw;->a()V

    .line 469
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->q:Lhdi;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->q:Lhdi;

    invoke-virtual {v0}, Lhdi;->a()V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->n:Lhdy;

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->n:Lhdy;

    invoke-virtual {v0}, Lhdy;->b()V

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->o:Lhdx;

    if-eqz v0, :cond_2

    .line 478
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->o:Lhdx;

    invoke-virtual {v0}, Lhdx;->b()V

    .line 481
    :cond_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->r:Lheb;

    if-eqz v0, :cond_3

    .line 482
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->r:Lheb;

    invoke-virtual {v0}, Lheb;->b()V

    .line 485
    :cond_3
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->s:Lhdw;

    if-eqz v0, :cond_4

    .line 486
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->s:Lhdw;

    invoke-virtual {v0}, Lhdw;->b()V

    .line 489
    :cond_4
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->c:Lhea;

    if-eqz v0, :cond_5

    .line 490
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->c:Lhea;

    invoke-virtual {v0}, Lhea;->b()V

    .line 493
    :cond_5
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->t:Lhec;

    if-eqz v0, :cond_6

    .line 494
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->t:Lhec;

    invoke-virtual {v0}, Lhec;->b()V

    .line 497
    :cond_6
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->u:Lhdz;

    if-eqz v0, :cond_7

    .line 498
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->u:Lhdz;

    invoke-virtual {v0}, Lhdz;->b()V

    .line 501
    :cond_7
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->F:Ldq;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->G:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_8

    .line 502
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->F:Ldq;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->G:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 505
    :cond_8
    const-string/jumbo v0, "RuntimeStart"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    const-string/jumbo v2, "activity onDestroy"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "activity onDestroy completed"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    move-result-object v0

    const-string/jumbo v1, "activity_onDestroy"

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->addRuntimeLifeCycle(Ljava/lang/String;)V

    .line 507
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->clearRuntimeOnCreateTime(Ljava/lang/String;)V

    .line 508
    invoke-static {}, Lhfo;->a()Lhfo;

    move-result-object v0

    .line 19133
    const/4 v1, 0x0

    iput-object v1, v0, Lhfo;->c:Lhfo$a;

    .line 20020
    invoke-static {}, Lhpz;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 20032
    invoke-static {}, Lhpz;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 20033
    invoke-static {}, Lhqa;->b()V

    .line 510
    :cond_9
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->z:Z

    if-eqz v0, :cond_a

    .line 20530
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "exit_work_stat_webview"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20531
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->F:Ldq;

    if-eqz v1, :cond_a

    .line 20532
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->F:Ldq;

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 512
    :cond_a
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->clearRuntimeLog()V

    .line 513
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x4

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 538
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->i()Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    move-result-object v1

    .line 540
    .local v1, "runtimeFragment":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    if-ne p1, v8, :cond_2

    .line 541
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    if-eqz v3, :cond_0

    .line 542
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->e()V

    .line 544
    :cond_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->c:Lhea;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->c:Lhea;

    invoke-virtual {v3}, Lhea;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 545
    const-string/jumbo v3, "RuntimeStart"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    const-string/jumbo v5, "activity onKeyDown"

    new-array v6, v0, [Ljava/lang/Object;

    const-string/jumbo v7, "activity onKeyDown handled by live"

    aput-object v7, v6, v2

    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    :cond_1
    :goto_0
    return v0

    .line 551
    :cond_2
    const-string/jumbo v3, "RuntimeStart"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    const-string/jumbo v5, "activity onKeyDown"

    new-array v6, v0, [Ljava/lang/Object;

    const-string/jumbo v7, "activity onKeyDown completed"

    aput-object v7, v6, v2

    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 552
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    move-result-object v3

    const-string/jumbo v4, "activity_onKeyDown"

    invoke-virtual {v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->addRuntimeLifeCycle(Ljava/lang/String;)V

    .line 553
    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->a(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 554
    .local v0, "handled":Z
    :cond_4
    :goto_1
    if-eqz v0, :cond_1

    if-ne p1, v8, :cond_1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    if-eqz v2, :cond_1

    .line 555
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->f()V

    goto :goto_0

    .end local v0    # "handled":Z
    :cond_5
    move v0, v2

    .line 553
    goto :goto_1
.end method

.method public onPause()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 433
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->onPause()V

    .line 434
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->u:Lhdz;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->u:Lhdz;

    invoke-virtual {v0}, Lhdz;->d()V

    .line 18922
    :cond_0
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 18923
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 18924
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 18941
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 18942
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->e:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    .line 18943
    if-eqz v0, :cond_2

    .line 18944
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->f()V

    goto :goto_0

    .line 440
    :cond_3
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->o:Lhdx;

    invoke-virtual {v0}, Lhdx;->d()V

    .line 442
    const-string/jumbo v0, "RuntimeStart"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    const-string/jumbo v2, "activity onPause"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "activity onPause completed"

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    move-result-object v0

    const-string/jumbo v1, "activity_onPause"

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->addRuntimeLifeCycle(Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method public onResume()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 301
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->onResume()V

    .line 302
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->u:Lhdz;

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->u:Lhdz;

    invoke-virtual {v1}, Lhdz;->c()V

    .line 305
    :cond_0
    invoke-virtual {p0, v6}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->setUseBaseUt(Z)V

    .line 307
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->o:Lhdx;

    .line 18152
    iget-boolean v1, v1, Lhdx;->g:Z

    .line 307
    if-eqz v1, :cond_2

    .line 308
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->o:Lhdx;

    invoke-virtual {v1}, Lhdx;->c()V

    .line 317
    :cond_1
    :goto_0
    const-string/jumbo v1, "RuntimeStart"

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    const-string/jumbo v3, "activity onResume"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "activity onResume completed"

    aput-object v5, v4, v6

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    move-result-object v1

    const-string/jumbo v2, "activity_onResume"

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->addRuntimeLifeCycle(Ljava/lang/String;)V

    .line 319
    return-void

    .line 311
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->i()Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    move-result-object v0

    .line 312
    .local v0, "current":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    if-eqz v0, :cond_1

    .line 313
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->k()V

    goto :goto_0
.end method

.method public onRightClick()V
    .locals 0

    .prologue
    .line 1793
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->d()V

    .line 1794
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 458
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 459
    const-string/jumbo v0, "url_destroy_key"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string/jumbo v0, "RuntimeStart"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->m:Ljava/lang/String;

    const-string/jumbo v2, "activity onSaveInstanceState"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "activity onSaveInstanceState completed"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 448
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->onStop()V

    .line 449
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    move-result-object v0

    const-string/jumbo v1, "activity_onStop"

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->addRuntimeLifeCycle(Ljava/lang/String;)V

    .line 450
    return-void
.end method

.method public postMessage(Ljava/util/List;Lhdi$b;)V
    .locals 1
    .param p2, "message"    # Lhdi$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lhdi$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1616
    .local p1, "to":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->q:Lhdi;

    invoke-virtual {v0, p1, p2}, Lhdi;->a(Ljava/util/List;Lhdi$b;)V

    .line 1617
    return-void
.end method

.method public provideDelegateModel(Ljava/lang/Class;)Lcom/alibaba/lightapp/runtime/Component$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/lightapp/runtime/Component$a;",
            ">;)",
            "Lcom/alibaba/lightapp/runtime/Component$a;"
        }
    .end annotation

    .prologue
    .line 1583
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/lightapp/runtime/Component$a;>;"
    const-class v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1584
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->H:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;

    .line 1596
    :goto_0
    return-object v0

    .line 1586
    :cond_0
    const-class v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1587
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->I:Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;

    goto :goto_0

    .line 1589
    :cond_1
    const-class v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1590
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .line 33760
    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->i:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    goto :goto_0

    .line 1592
    :cond_2
    const-class v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1593
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->o:Lhdx;

    .line 34276
    iget-object v0, v0, Lhdx;->k:Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;

    goto :goto_0

    .line 1596
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stickPage()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1834
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->t:Lhec;

    if-eqz v0, :cond_1

    .line 1835
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->t:Lhec;

    .line 40203
    iget-object v0, v1, Lhec;->f:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lhec;->f:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    invoke-interface {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhec;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1836
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->t:Lhec;

    .line 42256
    iget-boolean v0, v0, Lhec;->g:Z

    .line 1836
    if-nez v0, :cond_1

    .line 1837
    sget v0, Lhdn$k;->dt_open_application_tost:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1840
    :cond_1
    return-void

    .line 40207
    :cond_2
    iget-object v0, v1, Lhec;->f:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    invoke-interface {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 41149
    iget-object v0, v1, Lhec;->f:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    if-eqz v0, :cond_3

    .line 41150
    invoke-static {}, Lhfo;->a()Lhfo;

    move-result-object v0

    iget-object v3, v1, Lhec;->f:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    invoke-interface {v3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lhfo;->a(Ljava/lang/String;)Lhfo$b;

    move-result-object v0

    .line 41151
    iget-object v0, v0, Lhfo$b;->d:Ljava/lang/String;

    .line 41152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 41153
    new-array v3, v4, [Ljava/lang/String;

    iget-object v4, v1, Lhec;->e:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lhdn$k;->dt_open_application_doing:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const-string/jumbo v4, " "

    aput-object v4, v3, v6

    aput-object v0, v3, v8

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40210
    :goto_1
    iget-boolean v3, v1, Lhec;->g:Z

    if-eqz v3, :cond_4

    sget-object v3, Lhec;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lhec;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 40211
    const v3, 0x10008000

    sput v3, Lhec;->d:I

    .line 40216
    :goto_2
    invoke-static {}, Lhfo;->a()Lhfo;

    move-result-object v3

    invoke-virtual {v3, v2}, Lhfo;->a(Ljava/lang/String;)Lhfo$b;

    move-result-object v3

    .line 40217
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.workapp.lightapp.microapp.TOP"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40218
    const-string/jumbo v5, "url"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40219
    const-string/jumbo v5, "title"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40220
    const-string/jumbo v5, "micro_app"

    iget-object v3, v3, Lhfo$b;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40221
    const-string/jumbo v3, "intentFlag"

    sget v5, Lhec;->d:I

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40223
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    invoke-virtual {v3, v4}, Ldq;->a(Landroid/content/Intent;)Z

    .line 40224
    iput-boolean v6, v1, Lhec;->g:Z

    .line 40225
    sput-object v2, Lhec;->b:Ljava/lang/String;

    .line 40226
    sput-object v0, Lhec;->c:Ljava/lang/String;

    .line 40228
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v2, v1, Lhec;->e:Landroid/app/Activity;

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v2, "https://qr.dingtalk.com/ding/home.html"

    new-instance v3, Lhec$2;

    invoke-direct {v3, v1}, Lhec$2;-><init>(Lhec;)V

    .line 40229
    invoke-interface {v0, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 40239
    iget-object v0, v1, Lhec;->e:Landroid/app/Activity;

    invoke-static {v0, v7, v6}, Lhrf;->a(Landroid/app/Activity;ZZ)Z

    .line 41271
    iget-object v0, v1, Lhec;->f:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    if-eqz v0, :cond_0

    .line 41272
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41273
    const-string/jumbo v2, "app_id"

    iget-object v3, v1, Lhec;->f:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    invoke-interface {v3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;->getAppId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41274
    const-string/jumbo v2, "url"

    iget-object v1, v1, Lhec;->f:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    invoke-interface {v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41275
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "oa_micro_detail_zhiding_click"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 41156
    :cond_3
    new-array v0, v4, [Ljava/lang/String;

    iget-object v3, v1, Lhec;->e:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lhdn$k;->dt_open_application_reviewing:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    const-string/jumbo v3, " "

    aput-object v3, v0, v6

    iget-object v3, v1, Lhec;->f:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    invoke-interface {v3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;->getActionTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 40213
    :cond_4
    const/high16 v3, 0x10000000

    sput v3, Lhec;->d:I

    goto/16 :goto_2
.end method

.method public triggerMessage()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1631
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->q:Lhdi;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->getCurrentNavId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhdi;->b(Ljava/lang/String;)V

    .line 1632
    return-void
.end method
