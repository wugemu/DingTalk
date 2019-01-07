.class public Lcom/taobao/weex/devtools/toolbox/JsLogFragment;
.super Landroid/support/v4/app/Fragment;
.source "JsLogFragment.java"


# instance fields
.field private logLevel:Landroid/widget/Spinner;

.field private logList:Landroid/support/v7/widget/RecyclerView;

.field private rootView:Landroid/view/View;

.field private searchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 35
    return-void
.end method

.method private instantiationViews()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 90
    iget-object v0, p0, Lcom/taobao/weex/devtools/toolbox/JsLogFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/taobao/weex/inspector/R$id;->log_level:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/taobao/weex/devtools/toolbox/JsLogFragment;->logLevel:Landroid/widget/Spinner;

    .line 91
    iget-object v0, p0, Lcom/taobao/weex/devtools/toolbox/JsLogFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/taobao/weex/inspector/R$id;->log_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/taobao/weex/devtools/toolbox/JsLogFragment;->logList:Landroid/support/v7/widget/RecyclerView;

    .line 92
    iget-object v0, p0, Lcom/taobao/weex/devtools/toolbox/JsLogFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/taobao/weex/inspector/R$id;->search_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/taobao/weex/devtools/toolbox/JsLogFragment;->searchView:Landroid/widget/SearchView;

    .line 93
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 42
    sget v0, Lcom/taobao/weex/inspector/R$layout;->fragment_js_log:I

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/devtools/toolbox/JsLogFragment;->rootView:Landroid/view/View;

    .line 43
    invoke-direct {p0}, Lcom/taobao/weex/devtools/toolbox/JsLogFragment;->instantiationViews()V

    .line 44
    iget-object v0, p0, Lcom/taobao/weex/devtools/toolbox/JsLogFragment;->logList:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/taobao/weex/devtools/toolbox/JsLogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 45
    iget-object v0, p0, Lcom/taobao/weex/devtools/toolbox/JsLogFragment;->logList:Landroid/support/v7/widget/RecyclerView;

    invoke-static {}, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->getInstance()Lcom/taobao/weex/devtools/adapter/JsLogAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 47
    iget-object v0, p0, Lcom/taobao/weex/devtools/toolbox/JsLogFragment;->logLevel:Landroid/widget/Spinner;

    new-instance v1, Lcom/taobao/weex/devtools/toolbox/JsLogFragment$1;

    invoke-virtual {p0}, Lcom/taobao/weex/devtools/toolbox/JsLogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090003

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "VERBOSE"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    const-string/jumbo v6, "DEBUG"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "INFO"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "WARN"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "ERROR"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string/jumbo v6, "ASSERT"

    aput-object v6, v4, v5

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/taobao/weex/devtools/toolbox/JsLogFragment$1;-><init>(Lcom/taobao/weex/devtools/toolbox/JsLogFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 59
    iget-object v0, p0, Lcom/taobao/weex/devtools/toolbox/JsLogFragment;->logLevel:Landroid/widget/Spinner;

    invoke-static {}, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->getInstance()Lcom/taobao/weex/devtools/adapter/JsLogAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->getLogLevel()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 61
    iget-object v0, p0, Lcom/taobao/weex/devtools/toolbox/JsLogFragment;->logLevel:Landroid/widget/Spinner;

    new-instance v1, Lcom/taobao/weex/devtools/toolbox/JsLogFragment$2;

    invoke-direct {v1, p0}, Lcom/taobao/weex/devtools/toolbox/JsLogFragment$2;-><init>(Lcom/taobao/weex/devtools/toolbox/JsLogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 73
    iget-object v0, p0, Lcom/taobao/weex/devtools/toolbox/JsLogFragment;->searchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/taobao/weex/devtools/toolbox/JsLogFragment$3;

    invoke-direct {v1, p0}, Lcom/taobao/weex/devtools/toolbox/JsLogFragment$3;-><init>(Lcom/taobao/weex/devtools/toolbox/JsLogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 86
    iget-object v0, p0, Lcom/taobao/weex/devtools/toolbox/JsLogFragment;->rootView:Landroid/view/View;

    return-object v0
.end method
