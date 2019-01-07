.class public Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
.super Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;
.source "RuntimeWebViewLayout.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/NuvaWebView$b;
.implements Lcom/alibaba/lightapp/runtime/webview/RimetWebView$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;,
        Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$c;,
        Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$Legacy;,
        Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$b;
    }
.end annotation


# static fields
.field private static final w:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public d:Landroid/content/Context;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;

.field public h:Lcom/alibaba/lightapp/runtime/plugin/delegate/InputModel;

.field i:Lgwk;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Lcom/alibaba/lightapp/runtime/model/WebViewModel;

.field private o:Ljava/lang/String;

.field private p:Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;

.field private t:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$c;

.field private u:J

.field private v:J

.field private x:Landroid/view/View;

.field private y:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 154
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 157
    sput-object v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->w:Ljava/util/Set;

    const-string/jumbo v1, "dingtalk.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->w:Ljava/util/Set;

    const-string/jumbo v1, "dingtalkapps.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->w:Ljava/util/Set;

    const-string/jumbo v1, "alibaba-inc.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->w:Ljava/util/Set;

    const-string/jumbo v1, "1688.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->w:Ljava/util/Set;

    const-string/jumbo v1, "taobao.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->w:Ljava/util/Set;

    const-string/jumbo v1, "tmall.com "

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->w:Ljava/util/Set;

    const-string/jumbo v1, "alicdn.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->w:Ljava/util/Set;

    const-string/jumbo v1, "alipay.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->w:Ljava/util/Set;

    const-string/jumbo v1, "alibaba-inc.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->w:Ljava/util/Set;

    const-string/jumbo v1, "cainiao.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->w:Ljava/util/Set;

    const-string/jumbo v1, "aliyun-inc.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;-><init>(Landroid/content/Context;)V

    .line 131
    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->e:Ljava/lang/String;

    .line 134
    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->q:Ljava/lang/String;

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->r:Z

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->f:Z

    .line 1081
    new-instance v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10;-><init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->g:Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;

    .line 1136
    new-instance v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$11;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$11;-><init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->h:Lcom/alibaba/lightapp/runtime/plugin/delegate/InputModel;

    .line 1205
    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->i:Lgwk;

    .line 173
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(Landroid/content/Context;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->e:Ljava/lang/String;

    .line 134
    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->q:Ljava/lang/String;

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->r:Z

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->f:Z

    .line 1081
    new-instance v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10;-><init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->g:Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;

    .line 1136
    new-instance v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$11;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$11;-><init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->h:Lcom/alibaba/lightapp/runtime/plugin/delegate/InputModel;

    .line 1205
    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->i:Lgwk;

    .line 178
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(Landroid/content/Context;)V

    .line 179
    return-void
.end method

.method private static a(I)C
    .locals 1
    .param p0, "d"    # I

    .prologue
    .line 509
    const/16 v0, 0x39

    if-le p0, v0, :cond_0

    .line 510
    add-int/lit8 v0, p0, 0x41

    add-int/lit8 v0, v0, -0xa

    int-to-char v0, v0

    .line 513
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    goto :goto_0
.end method

.method private static a(C)I
    .locals 1
    .param p0, "h"    # C

    .prologue
    .line 518
    const/16 v0, 0x39

    if-le p0, v0, :cond_0

    .line 519
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    .line 522
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p0, -0x30

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->l:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "visitType"    # Ljava/lang/String;
    .param p2, "stayTime"    # Ljava/lang/String;

    .prologue
    .line 934
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v4

    invoke-virtual {v4, p0}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v3

    .line 935
    .local v3, "session":Lhqe$d;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 936
    .local v1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 937
    .local v2, "corpId":Ljava/lang/String;
    const/4 v0, 0x0

    .line 938
    .local v0, "agentId":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 5488
    iget-object v2, v3, Lhqe$d;->b:Ljava/lang/String;

    .line 5492
    iget-object v0, v3, Lhqe$d;->c:Ljava/lang/String;

    .line 943
    :cond_0
    const-string/jumbo v4, "url"

    invoke-interface {v1, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    const-string/jumbo v4, "clickType"

    const-string/jumbo v5, "1"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    const-string/jumbo v4, "corpId"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    const-string/jumbo v4, "agentId"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    const-string/jumbo v4, "visitTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    const-string/jumbo v4, "stayTime"

    invoke-interface {v1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    const-string/jumbo v4, "visityType"

    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    return-object v1
.end method

.method private a(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v5, -0x1

    .line 346
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->d:Landroid/content/Context;

    .line 347
    new-instance v4, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$c;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->d:Landroid/content/Context;

    instance-of v2, v2, Lcom/alibaba/lightapp/runtime/INuvaContext;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->d:Landroid/content/Context;

    check-cast v2, Lcom/alibaba/lightapp/runtime/INuvaContext;

    :goto_0
    invoke-direct {v4, p0, v2}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$c;-><init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;Lcom/alibaba/lightapp/runtime/INuvaContext;)V

    iput-object v4, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->t:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$c;

    .line 349
    sget v2, Lhdn$i;->common_webview_layout:I

    invoke-static {p1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 350
    .local v1, "view":Landroid/view/View;
    sget v2, Lhdn$h;->webview_frame:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->j:Landroid/widget/RelativeLayout;

    .line 355
    sget v2, Lhdn$h;->input_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->x:Landroid/view/View;

    .line 356
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 357
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    invoke-virtual {p0, v8}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->setEnabled(Z)V

    .line 361
    new-instance v2, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$1;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$1;-><init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)V

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->setChildScrollupListener(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$a;)V

    .line 379
    new-instance v2, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$4;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$4;-><init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)V

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->setOnRefreshListener(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;)V

    .line 390
    const-string/jumbo v3, "RuntimeStart"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->e:Ljava/lang/String;

    const-string/jumbo v5, "RuntimeWebViewLayout init"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v7, "mWebView isNull?"

    aput-object v7, v6, v2

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-nez v2, :cond_1

    const-string/jumbo v2, "true"

    :goto_1
    aput-object v2, v6, v8

    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    return-void

    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    move-object v2, v3

    .line 347
    goto :goto_0

    .line 390
    .restart local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v1    # "view":Landroid/view/View;
    :cond_1
    const-string/jumbo v2, "false"

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;I)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    .param p1, "x1"    # I

    .prologue
    .line 106
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->setInputViewVisible(I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    .line 5528
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 5529
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 5530
    invoke-static {p2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 5531
    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5533
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    move v1, v0

    .line 5538
    :cond_0
    :goto_1
    return v1

    .line 5534
    :cond_1
    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5536
    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_2
    move v1, v0

    .line 5538
    goto :goto_1

    :cond_3
    move v0, v1

    .line 5541
    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;Landroid/view/View;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 106
    .line 7184
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->d:Landroid/content/Context;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 7185
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7186
    if-nez p1, :cond_0

    .line 7187
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->d:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    .line 7189
    .end local p1    # "x1":Landroid/view/View;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 106
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 106
    .line 6145
    invoke-direct {p0, v3}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->setInputViewVisible(I)V

    .line 6146
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->x:Landroid/view/View;

    sget v1, Lhdn$h;->edittext:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText;

    .line 6147
    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 6148
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6149
    invoke-virtual {v0, p2}, Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText;->setText(Ljava/lang/CharSequence;)V

    .line 6150
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 6151
    instance-of v1, v2, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    move-object v1, v2

    .line 6152
    check-cast v1, Landroid/text/Spannable;

    .line 6153
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 6158
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->x:Landroid/view/View;

    sget v2, Lhdn$h;->send:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$2;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$2;-><init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6169
    new-instance v1, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$3;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$3;-><init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText;->setKeyBackClickListener(Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText$a;)V

    .line 6194
    if-nez v0, :cond_1

    .line 6195
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 6197
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 6198
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 6199
    const/4 v1, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 106
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .param p1, "currentUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 728
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 729
    iget-object p1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->e:Ljava/lang/String;

    .line 731
    :cond_0
    move-object v0, p1

    .line 732
    .local v0, "tempUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7;-><init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Lhrc;->a(Landroid/content/Context;Ljava/lang/String;Liyv;)V

    .line 777
    return-void
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->s:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->y:Ljava/lang/String;

    return-object p1
.end method

.method public static c()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method static synthetic d(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->r:Z

    return v0
.end method

.method static synthetic f(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->f:Z

    return v0
.end method

.method static synthetic g(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->j()V

    return-void
.end method

.method private h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 780
    const-string/jumbo v0, "webview_show_stability_new"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhdo;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 827
    :goto_0
    return-void

    .line 783
    :cond_0
    const-string/jumbo v0, "RuntimeWebViewLayout"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8;-><init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->i()V

    return-void
.end method

.method private i()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 915
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->u:J

    .line 917
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "open_micro_log_record_client"

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->e:Ljava/lang/String;

    const-string/jumbo v3, "enter"

    const-string/jumbo v4, "0"

    invoke-static {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 918
    return-void
.end method

.method static synthetic i(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->h()V

    return-void
.end method

.method static synthetic j(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->j:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private j()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 921
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->v:J

    .line 922
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->v:J

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->u:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 924
    .local v0, "stayTime":Ljava/lang/String;
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "open_micro_log_record_client"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->e:Ljava/lang/String;

    const-string/jumbo v4, "leave"

    invoke-static {v3, v4, v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 925
    return-void
.end method

.method static synthetic k(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->l:Landroid/view/View;

    return-object v0
.end method

.method private k()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->i:Lgwk;

    if-nez v0, :cond_0

    .line 1209
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->d:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 1210
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newShareManager(Landroid/app/Activity;Lcom/uc/webview/export/WebView;)Lgwk;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->i:Lgwk;

    .line 1212
    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Z
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .prologue
    const/4 v1, 0x1

    .line 106
    .line 5880
    sget-boolean v0, Lcic;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v1

    .line 5903
    :goto_0
    return v0

    .line 5885
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v2, "pref_key_settings_developer_options_smartapp_debugging"

    invoke-static {v0, v2}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 5887
    goto :goto_0

    .line 5890
    :cond_2
    const-string/jumbo v0, "WEBVIEW_DEBUG_START_SWITCH_KEY"

    invoke-static {v0}, Lcpk;->b(Ljava/lang/String;)Z

    move-result v0

    .line 5891
    if-eqz v0, :cond_4

    .line 5892
    const-string/jumbo v0, "WEBVIEW_DEBUG_INFO_KEY"

    invoke-static {v0}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5893
    const-class v2, Lhrd;

    invoke-static {v0, v2}, Lcor;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrd;

    .line 5894
    if-eqz v0, :cond_4

    .line 5895
    iget-object v0, v0, Lhrd;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5896
    if-nez v0, :cond_3

    move v0, v1

    .line 5897
    goto :goto_0

    .line 5899
    :cond_3
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 5900
    if-eqz v0, :cond_4

    .line 5901
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 5902
    sget-object v2, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->w:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 5903
    goto :goto_0

    .line 5910
    :cond_4
    const/4 v0, 0x0

    .line 106
    goto :goto_0
.end method

.method static synthetic m(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k()V

    return-void
.end method

.method private setInputViewVisible(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->x:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->x:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1182
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/lightapp/runtime/model/WebViewModel;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    .locals 1
    .param p1, "webViewModel"    # Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->n:Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    .line 183
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->e:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->o:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->getPreloadModel()Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->p:Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;

    .line 187
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->q:Ljava/lang/String;

    .line 188
    return-object p0
.end method

.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 192
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->t:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$c;

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->setNuvaProvider(Lcom/alibaba/lightapp/runtime/INuvaContext;)V

    .line 194
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->onResume()V

    .line 196
    :cond_0
    const-string/jumbo v1, "RuntimeStart"

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->e:Ljava/lang/String;

    const-string/jumbo v3, "RuntimeWebViewLayout onResume"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v5, "mWebView isNull?"

    aput-object v5, v4, v0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-nez v0, :cond_1

    const-string/jumbo v0, "true"

    :goto_0
    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->i()V

    .line 202
    return-void

    .line 196
    :cond_1
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 283
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(IILandroid/content/Intent;)V

    .line 286
    :cond_0
    const-string/jumbo v1, "RuntimeStart"

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->e:Ljava/lang/String;

    const-string/jumbo v3, "RuntimeWebViewLayout handleActivityResult"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v5, "mWebView isNull?"

    aput-object v5, v4, v0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-nez v0, :cond_1

    const-string/jumbo v0, "true"

    :goto_0
    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    return-void

    .line 286
    :cond_1
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k()V

    .line 307
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->i:Lgwk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->e:Ljava/lang/String;

    .line 308
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->e:Ljava/lang/String;

    const-string/jumbo v1, "dd_share=false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->i:Lgwk;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lgwk;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 312
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 958
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 978
    :cond_0
    :goto_0
    return-void

    .line 961
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->m:Landroid/view/View;

    if-nez v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->j:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 968
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->m:Landroid/view/View;

    .line 970
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->setVisibility(I)V

    .line 972
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 974
    const-string/jumbo v1, "RuntimeStart"

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->e:Ljava/lang/String;

    const-string/jumbo v3, "RuntimeWebViewLayout onShowCustomView"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v5, "mCustomView isNull?"

    aput-object v5, v4, v0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->m:Landroid/view/View;

    if-nez v0, :cond_2

    const-string/jumbo v0, "true"

    :goto_1
    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "false"

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->s:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->r:Z

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->s:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->o:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 473
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 476
    :cond_0
    return-void
.end method

.method public final a(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 301
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 2448
    iget-object v3, v2, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    invoke-virtual {v3, p1, p2}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    .line 301
    :goto_0
    if-eqz v2, :cond_2

    :goto_1
    return v0

    .line 2451
    :cond_0
    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->canGoBack()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2452
    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->goBack()V

    .line 2453
    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->e()V

    move v2, v0

    .line 2454
    goto :goto_0

    :cond_1
    move v2, v1

    .line 2457
    goto :goto_0

    :cond_2
    move v0, v1

    .line 301
    goto :goto_1
.end method

.method public final a(Z)Z
    .locals 4
    .param p1, "isDispatch"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 293
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 2393
    if-eqz p1, :cond_0

    iget-object v3, v2, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/PluginManager;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    .line 293
    :goto_0
    if-eqz v2, :cond_2

    :goto_1
    return v0

    .line 2396
    :cond_0
    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->canGoBack()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2397
    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->goBack()V

    .line 2398
    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->e()V

    move v2, v0

    .line 2399
    goto :goto_0

    :cond_1
    move v2, v1

    .line 2402
    goto :goto_0

    :cond_2
    move v0, v1

    .line 293
    goto :goto_1
.end method

.method public final b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 205
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->onPause()V

    .line 207
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->setNuvaProvider(Lcom/alibaba/lightapp/runtime/INuvaContext;)V

    .line 209
    :cond_0
    const-string/jumbo v1, "RuntimeStart"

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->e:Ljava/lang/String;

    const-string/jumbo v3, "RuntimeWebViewLayout onPause"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v5, "mWebView isNull?"

    aput-object v5, v4, v0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-nez v0, :cond_1

    const-string/jumbo v0, "true"

    :goto_0
    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->j()V

    .line 214
    return-void

    .line 209
    :cond_1
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method public final d()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 252
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v0, :cond_3

    .line 253
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    const-string/jumbo v1, "legacy"

    .line 1477
    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    if-eqz v2, :cond_0

    .line 1478
    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/PluginManager;->b(Ljava/lang/String;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 1925
    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->h:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$b;

    if-eqz v1, :cond_1

    .line 1926
    iput-object v3, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->h:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$b;

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->d()V

    .line 256
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->j:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->j:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 259
    :cond_2
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 262
    :cond_3
    invoke-static {}, Lhhy;->a()Lhhy;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->q:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Lhhy;->e(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->i:Lgwk;

    if-eqz v0, :cond_4

    .line 266
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->i:Lgwk;

    invoke-interface {v0}, Lgwk;->a()V

    .line 268
    :cond_4
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->i:Lgwk;

    .line 269
    const-string/jumbo v1, "RuntimeStart"

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->e:Ljava/lang/String;

    const-string/jumbo v3, "RuntimeWebViewLayout handleActivityDestroy"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v5, "mWebView isNull?"

    aput-object v5, v4, v0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-nez v0, :cond_6

    const-string/jumbo v0, "true"

    :goto_1
    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    return-void

    .line 262
    :cond_5
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->n:Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    .line 263
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 269
    :cond_6
    const-string/jumbo v0, "false"

    goto :goto_1
.end method

.method public e()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 479
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->e:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->e:Ljava/lang/String;

    const-string/jumbo v8, "dd_nav_bgcolor"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 481
    :try_start_0
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->e:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 482
    .local v6, "uri":Landroid/net/Uri;
    const-string/jumbo v7, "dd_nav_bgcolor"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 483
    .local v5, "paramColor":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "#"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v5, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "color":Ljava/lang/String;
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 485
    .local v3, "colorInt":I
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "#"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 2499
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 2500
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 2501
    invoke-static {v9}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(C)I

    move-result v9

    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(C)I

    move-result v10

    add-int/lit8 v10, v10, 0x4

    shl-int/2addr v9, v10

    .line 2502
    int-to-float v9, v9

    const v10, 0x3ecccccd    # 0.4f

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 2503
    shr-int/lit8 v10, v9, 0x4

    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(I)C

    move-result v10

    .line 2504
    and-int/lit8 v9, v9, 0xf

    invoke-static {v9}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(I)C

    move-result v9

    .line 2505
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 485
    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, "colorAphla":Ljava/lang/String;
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 487
    .local v1, "colorAlphaInt":I
    const/4 v7, 0x4

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v1, v7, v8

    const/4 v8, 0x1

    aput v3, v7, v8

    const/4 v8, 0x2

    aput v1, v7, v8

    const/4 v8, 0x3

    aput v3, v7, v8

    invoke-virtual {p0, v7}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->setColorSchemeColors([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    .end local v0    # "color":Ljava/lang/String;
    .end local v1    # "colorAlphaInt":I
    .end local v2    # "colorAphla":Ljava/lang/String;
    .end local v3    # "colorInt":I
    .end local v5    # "paramColor":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 488
    :catch_0
    move-exception v4

    .line 489
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 493
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v7, 0x4

    new-array v7, v7, [I

    const/4 v8, 0x0

    sget v9, Lhdn$e;->swipe_refresh_color1:I

    aput v9, v7, v8

    const/4 v8, 0x1

    sget v9, Lhdn$e;->swipe_refresh_color2:I

    aput v9, v7, v8

    const/4 v8, 0x2

    sget v9, Lhdn$e;->swipe_refresh_color1:I

    aput v9, v7, v8

    const/4 v8, 0x3

    sget v9, Lhdn$e;->swipe_refresh_color2:I

    aput v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->setColorScheme([I)V

    goto :goto_0
.end method

.method public final f()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 545
    .line 2830
    new-instance v3, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->d:Landroid/content/Context;

    .line 3401
    invoke-static {}, Lhfw;->a()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 2830
    :goto_0
    invoke-direct {v3, v4, v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;-><init>(Landroid/content/Context;Z)V

    .line 2831
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->e:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->loadUrl(Ljava/lang/String;)V

    .line 545
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 546
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->j:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 547
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0, p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->setIVideoInterface(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$c;)V

    .line 548
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0, p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->setWebViewBackListener(Lcom/alibaba/lightapp/runtime/NuvaWebView$b;)V

    .line 549
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    new-instance v3, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$5;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$5;-><init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->setOnPageStatusListener(Lcom/alibaba/lightapp/runtime/WebViewWrapper$b;)V

    .line 561
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->d:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 3842
    :cond_0
    invoke-static {}, Lhfw;->b()I

    move-result v0

    .line 3843
    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_1

    .line 3845
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/uc/webview/export/extension/UCCore;->notifyCoreEvent(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3853
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    new-instance v3, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$9;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$9;-><init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->post(Ljava/lang/Runnable;)Z

    .line 569
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$b;

    if-eqz v0, :cond_2

    .line 570
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$b;

    invoke-virtual {v3, v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->setRimetWebViewCallback(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$b;)V

    .line 573
    :cond_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 575
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    new-instance v3, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$6;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$6;-><init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 5045
    :try_start_0
    const-string/jumbo v0, ".dingtalk.com"

    invoke-static {}, Lcom/alibaba/wukong/auth/WKAuthProxy;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/alibaba/wukong/auth/WKAuthProxy;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5054
    :goto_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5056
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebSettings;->setJavaScriptEnabled(Z)V

    .line 699
    :cond_3
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 701
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/WebSettings;->setSavePassword(Z)V

    .line 703
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    const-string/jumbo v3, "legacy"

    new-instance v4, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$Legacy;

    invoke-direct {v4, p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$Legacy;-><init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/Plugin;)V

    .line 704
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    new-instance v3, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$b;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$b;-><init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)V

    sget-object v4, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper$a;Ljava/lang/String;)V

    .line 709
    :cond_4
    invoke-static {}, Lhhy;->a()Lhhy;

    move-result-object v3

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->q:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v0}, Lhhy;->d(Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->b(Ljava/lang/String;)V

    .line 714
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->h()V

    .line 716
    const-string/jumbo v3, "RuntimeStart"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->e:Ljava/lang/String;

    const-string/jumbo v5, "RuntimeWebViewLayout initWebView"

    new-array v6, v7, [Ljava/lang/Object;

    const-string/jumbo v0, "mWebView isNull?"

    aput-object v0, v6, v2

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-nez v0, :cond_7

    const-string/jumbo v0, "true"

    :goto_3
    aput-object v0, v6, v1

    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 720
    const-string/jumbo v0, "UCCore"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->e:Ljava/lang/String;

    const-string/jumbo v4, "RuntimeWebViewLayout initWebView"

    new-array v5, v7, [Ljava/lang/Object;

    const-string/jumbo v6, "webview_core="

    aput-object v6, v5, v2

    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v0, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 722
    return-void

    :cond_5
    move v0, v2

    .line 3401
    goto/16 :goto_0

    .line 5047
    :catch_0
    move-exception v0

    .line 5049
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 709
    :cond_6
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->e:Ljava/lang/String;

    goto :goto_2

    .line 716
    :cond_7
    const-string/jumbo v0, "false"

    goto :goto_3
.end method

.method public final g()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 982
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->j:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 996
    :cond_0
    :goto_0
    return-void

    .line 986
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0, v5}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->setVisibility(I)V

    .line 988
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 989
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->j:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 990
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->m:Landroid/view/View;

    .line 992
    const-string/jumbo v1, "RuntimeStart"

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->e:Ljava/lang/String;

    const-string/jumbo v3, "RuntimeWebViewLayout onHideCustomView"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "mCustomView isNull?"

    aput-object v0, v4, v5

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->m:Landroid/view/View;

    if-nez v0, :cond_2

    const-string/jumbo v0, "true"

    :goto_1
    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "false"

    goto :goto_1
.end method

.method public getGroupNavId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getShadow()F
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->n:Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->n:Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->n:Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 337
    :goto_0
    return-object v0

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 337
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getWebView()Lcom/uc/webview/export/WebView;
    .locals 1

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    return-object v0
.end method

.method public getWebViewWrapper()Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    return-object v0
.end method

.method public getXFraction()F
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getWidth()I

    move-result v0

    .line 421
    .local v0, "width":I
    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 425
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getX()F

    move-result v1

    goto :goto_0
.end method

.method public getYFraction()F
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getHeight()I

    move-result v0

    .line 441
    .local v0, "height":I
    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 445
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getY()F

    move-result v1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 407
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->onAttachedToWindow()V

    .line 408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->r:Z

    .line 409
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 413
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->onDetachedFromWindow()V

    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->r:Z

    .line 415
    return-void
.end method

.method public setGroupNavId(Ljava/lang/String;)V
    .locals 0
    .param p1, "loadUrlId"    # Ljava/lang/String;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->o:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setIWebViewListener(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;)V
    .locals 0
    .param p1, "iWebViewListener"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->s:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;

    .line 343
    return-void
.end method

.method public setShadow(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 463
    return-void
.end method

.method public setXFraction(F)V
    .locals 3
    .param p1, "xFraction"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getWidth()I

    move-result v1

    .line 431
    .local v1, "width":I
    if-gtz v1, :cond_0

    .line 432
    const/high16 v2, -0x31000000

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->setX(F)V

    .line 437
    :goto_0
    return-void

    .line 435
    :cond_0
    if-lez v1, :cond_1

    int-to-float v2, v1

    mul-float v0, p1, v2

    .line 436
    .local v0, "newWidth":F
    :goto_1
    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->setX(F)V

    goto :goto_0

    .line 435
    .end local v0    # "newWidth":F
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setYFraction(F)V
    .locals 3
    .param p1, "yFraction"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getHeight()I

    move-result v0

    .line 451
    .local v0, "height":I
    if-gtz v0, :cond_0

    .line 452
    const/high16 v2, -0x31000000

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->setY(F)V

    .line 457
    :goto_0
    return-void

    .line 455
    :cond_0
    if-lez v0, :cond_1

    int-to-float v2, v0

    mul-float v1, p1, v2

    .line 456
    .local v1, "newHeight":F
    :goto_1
    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->setY(F)V

    goto :goto_0

    .line 455
    .end local v1    # "newHeight":F
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
