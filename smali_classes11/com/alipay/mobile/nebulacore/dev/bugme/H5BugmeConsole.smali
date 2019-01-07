.class public Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;
.super Ljava/lang/Object;
.source "H5BugmeConsole.java"


# static fields
.field static final LOG_KEYS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "H5BugmeConsole"


# instance fields
.field private mApWebViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/mobile/nebula/webview/APWebView;",
            ">;"
        }
    .end annotation
.end field

.field private mContentViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDebugDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mInfoView:Landroid/view/View;

.field private mInitialized:Z

.field private mLogDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeLogMsg;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTabView:Landroid/view/View;

.field private mTabs:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "page"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "jsBridge"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "console"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "network"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->LOG_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/content/Context;)V
    .locals 2
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mContext:Landroid/content/Context;

    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mApWebViewRef:Ljava/lang/ref/WeakReference;

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mHandler:Landroid/os/Handler;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mInitialized:Z

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mLogDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mContentViewList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mDebugDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initTabView()V
    .locals 25

    .prologue
    .line 80
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mLogDataList:Ljava/util/List;

    .line 81
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mContentViewList:Ljava/util/List;

    .line 82
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    sget-object v22, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->LOG_KEYS:[Ljava/lang/String;

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_0

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mLogDataList:Ljava/util/List;

    move-object/from16 v22, v0

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mContentViewList:Ljava/util/List;

    move-object/from16 v22, v0

    new-instance v23, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v10}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;-><init>(Landroid/content/Context;Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;I)V

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 87
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 88
    .local v11, "inflater":Landroid/view/LayoutInflater;
    sget v22, Lcom/alipay/mobile/nebula/R$layout;->h5_bugme_tabview:I

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mTabView:Landroid/view/View;

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mTabView:Landroid/view/View;

    move-object/from16 v22, v0

    sget v23, Lcom/alipay/mobile/nebula/R$id;->h5_bugme_tabs:I

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mTabs:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mTabView:Landroid/view/View;

    move-object/from16 v22, v0

    sget v23, Lcom/alipay/mobile/nebula/R$id;->h5_bugme_viewPager:I

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v22, v0

    new-instance v23, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeViewPageAdapter;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeViewPageAdapter;-><init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)V

    invoke-virtual/range {v22 .. v23}, Landroid/support/v4/view/ViewPager;->setAdapter(Lgl;)V

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mTabs:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mTabView:Landroid/view/View;

    move-object/from16 v22, v0

    sget v23, Lcom/alipay/mobile/nebula/R$id;->h5_bugme_clear_tab:I

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 94
    .local v9, "clearTabBtn":Landroid/view/View;
    new-instance v22, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$1;-><init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)V

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mTabView:Landroid/view/View;

    move-object/from16 v22, v0

    sget v23, Lcom/alipay/mobile/nebula/R$id;->h5_bugme_clear_all:I

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 103
    .local v8, "clearAllBtn":Landroid/view/View;
    new-instance v22, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$2;-><init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)V

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 111
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v22, "\u5173\u95ed"

    new-instance v23, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$3;-><init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 121
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mDebugDialog:Landroid/app/AlertDialog;

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mDebugDialog:Landroid/app/AlertDialog;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mTabView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mDebugDialog:Landroid/app/AlertDialog;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mDebugDialog:Landroid/app/AlertDialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v22

    if-eqz v22, :cond_1

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mDebugDialog:Landroid/app/AlertDialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/Window;->setDimAmount(F)V

    .line 128
    :cond_1
    sget v22, Lcom/alipay/mobile/nebula/R$layout;->h5_bugme_info:I

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mInfoView:Landroid/view/View;

    .line 130
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v22

    if-eqz v22, :cond_6

    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopSession()Lipc;

    move-result-object v22

    if-eqz v22, :cond_6

    .line 131
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopSession()Lipc;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lipc;->getTopPage()Liop;

    move-result-object v22

    if-eqz v22, :cond_6

    .line 132
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopSession()Lipc;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lipc;->getTopPage()Liop;

    move-result-object v15

    .line 133
    .local v15, "page":Liop;
    if-eqz v15, :cond_6

    .line 134
    invoke-interface {v15}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v22

    const-string/jumbo v23, "package_nick"

    invoke-static/range {v22 .. v23}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 135
    .local v14, "packageNick":Ljava/lang/String;
    invoke-interface {v15}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v22

    const-string/jumbo v23, "appVersion"

    invoke-static/range {v22 .. v23}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 136
    .local v19, "version":Ljava/lang/String;
    invoke-interface {v15}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v22

    const-string/jumbo v23, "appId"

    invoke-static/range {v22 .. v23}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mInfoView:Landroid/view/View;

    move-object/from16 v22, v0

    sget v23, Lcom/alipay/mobile/nebula/R$id;->h5_bugme_info_appid:I

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 139
    .local v4, "appIdTextView":Landroid/widget/TextView;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mInfoView:Landroid/view/View;

    move-object/from16 v22, v0

    sget v23, Lcom/alipay/mobile/nebula/R$id;->h5_bugme_info_pkg_nick:I

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 142
    .local v16, "pkgNickTextView":Landroid/widget/TextView;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mInfoView:Landroid/view/View;

    move-object/from16 v22, v0

    sget v23, Lcom/alipay/mobile/nebula/R$id;->h5_bugme_info_version:I

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 145
    .local v20, "versionTextView":Landroid/widget/TextView;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    const-class v22, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 148
    .local v5, "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v5, :cond_2

    .line 149
    move-object/from16 v0, v19

    invoke-interface {v5, v3, v0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 150
    .local v12, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mInfoView:Landroid/view/View;

    move-object/from16 v22, v0

    sget v23, Lcom/alipay/mobile/nebula/R$id;->h5_bugme_info_name:I

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 151
    .local v13, "nameTextView":Landroid/widget/TextView;
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "nameTextView":Landroid/widget/TextView;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mInfoView:Landroid/view/View;

    move-object/from16 v22, v0

    sget v23, Lcom/alipay/mobile/nebula/R$id;->h5_bugme_info_webview:I

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 155
    .local v21, "webViewTextView":Landroid/widget/TextView;
    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mApWebViewRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mApWebViewRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_5

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mApWebViewRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface/range {v22 .. v22}, Lcom/alipay/mobile/nebula/webview/APWebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v18

    .line 157
    .local v18, "ua":Ljava/lang/String;
    if-eqz v18, :cond_5

    .line 158
    const-string/jumbo v22, "Chrome/"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    .line 159
    .local v17, "start":I
    const-string/jumbo v7, ""

    .line 160
    .local v7, "chromeVer":Ljava/lang/String;
    if-lez v17, :cond_3

    .line 161
    add-int/lit8 v22, v17, 0x7

    const-string/jumbo v23, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v23

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 163
    :cond_3
    const-string/jumbo v22, "UCBS"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_4

    const-string/jumbo v22, "UWS"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 164
    :cond_4
    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "U4 "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .end local v7    # "chromeVer":Ljava/lang/String;
    .end local v17    # "start":I
    .end local v18    # "ua":Ljava/lang/String;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mInfoView:Landroid/view/View;

    move-object/from16 v22, v0

    sget v23, Lcom/alipay/mobile/nebula/R$id;->h5_bugme_info_button_screenshot:I

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$4;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$4;-><init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    .end local v3    # "appId":Ljava/lang/String;
    .end local v4    # "appIdTextView":Landroid/widget/TextView;
    .end local v5    # "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v14    # "packageNick":Ljava/lang/String;
    .end local v15    # "page":Liop;
    .end local v16    # "pkgNickTextView":Landroid/widget/TextView;
    .end local v19    # "version":Ljava/lang/String;
    .end local v20    # "versionTextView":Landroid/widget/TextView;
    .end local v21    # "webViewTextView":Landroid/widget/TextView;
    :cond_6
    return-void

    .line 165
    .restart local v3    # "appId":Ljava/lang/String;
    .restart local v4    # "appIdTextView":Landroid/widget/TextView;
    .restart local v5    # "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v7    # "chromeVer":Ljava/lang/String;
    .restart local v14    # "packageNick":Ljava/lang/String;
    .restart local v15    # "page":Liop;
    .restart local v16    # "pkgNickTextView":Landroid/widget/TextView;
    .restart local v17    # "start":I
    .restart local v18    # "ua":Ljava/lang/String;
    .restart local v19    # "version":Ljava/lang/String;
    .restart local v20    # "versionTextView":Landroid/widget/TextView;
    .restart local v21    # "webViewTextView":Landroid/widget/TextView;
    :cond_7
    const-string/jumbo v22, "u3"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 166
    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "U3 "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 168
    :cond_8
    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "System WebView "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private showFloatTriggerButton()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, -0x2

    .line 191
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mApWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 192
    .local v0, "apWebView":Lcom/alipay/mobile/nebula/webview/APWebView;
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mApWebViewRef:Ljava/lang/ref/WeakReference;

    .line 193
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 195
    .local v4, "rootView":Landroid/view/ViewGroup;
    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;-><init>(Landroid/content/Context;)V

    .line 196
    .local v1, "debugConsoleEntryButton":Landroid/widget/ImageButton;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 197
    .local v3, "resources":Landroid/content/res/Resources;
    sget v5, Lcom/alipay/mobile/nebula/R$drawable;->h5_btn_debug_console:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 199
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 201
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 205
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v5, 0x5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 207
    new-instance v5, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$5;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$5;-><init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    invoke-virtual {v4, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    return-void
.end method


# virtual methods
.method public getLogDataList(I)Ljava/util/List;
    .locals 1
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeLogMsg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mLogDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getSubContentView(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 269
    if-nez p1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mInfoView:Landroid/view/View;

    .line 272
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mContentViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public getTabSize()I
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mContentViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public recordLog(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 6
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 224
    const-string/jumbo v4, "type"

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "logType":Ljava/lang/String;
    const-string/jumbo v4, "jsapi"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "event"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 226
    :cond_0
    const-string/jumbo v2, "jsBridge"

    .line 228
    :cond_1
    const/4 v1, 0x0

    .line 229
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->LOG_KEYS:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 230
    sget-object v4, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->LOG_KEYS:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 231
    move v1, v0

    .line 235
    :cond_2
    move v3, v1

    .line 236
    .local v3, "pos":I
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$6;

    invoke-direct {v5, p0, v3, p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$6;-><init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;ILcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 247
    return-void

    .line 229
    .end local v3    # "pos":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public release()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mContentViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mLogDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 252
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mContentViewList:Ljava/util/List;

    .line 253
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mLogDataList:Ljava/util/List;

    .line 254
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mDebugDialog:Landroid/app/AlertDialog;

    .line 255
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mTabView:Landroid/view/View;

    .line 256
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mTabs:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    .line 257
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 258
    return-void
.end method

.method public startup()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mInitialized:Z

    if-eqz v1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 70
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->initTabView()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->showFloatTriggerButton()V

    .line 76
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->mInitialized:Z

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5BugmeConsole"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
