.class public Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;
.super Landroid/support/v4/app/Fragment;
.source "EnvironmentFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment$EnvironmentUtil;
    }
.end annotation


# instance fields
.field arrayAdapter:Landroid/widget/ArrayAdapter;

.field info:Landroid/widget/TextView;

.field items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field list:Landroid/widget/ListView;

.field spinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->items:Ljava/util/List;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->showModules()V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->showComponents()V

    return-void
.end method

.method static synthetic access$200(Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->showEnvironment()V

    return-void
.end method

.method private showComponents()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 122
    invoke-static {}, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment$EnvironmentUtil;->getExistedComponents()Ljava/util/Map;

    move-result-object v0

    .line 123
    .local v0, "components":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;>;"
    iget-object v1, p0, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->list:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 124
    iget-object v1, p0, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->info:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v1, p0, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 126
    iget-object v1, p0, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    iget-object v1, p0, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 128
    iget-object v1, p0, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->list:Landroid/widget/ListView;

    new-instance v2, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment$3;

    invoke-direct {v2, p0, v0}, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment$3;-><init>(Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 143
    return-void
.end method

.method private showEnvironment()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 146
    iget-object v4, p0, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->list:Landroid/widget/ListView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 147
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInitParams()Lcom/taobao/weex/bridge/WXParams;

    move-result-object v3

    .line 148
    .local v3, "params":Lcom/taobao/weex/bridge/WXParams;
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getConfig()Ljava/util/Map;

    move-result-object v1

    .line 149
    .local v1, "environment":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "platform"

    invoke-virtual {v3}, Lcom/taobao/weex/bridge/WXParams;->getPlatform()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string/jumbo v4, "osVersion"

    invoke-virtual {v3}, Lcom/taobao/weex/bridge/WXParams;->getOsVersion()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string/jumbo v4, "appVersion"

    invoke-virtual {v3}, Lcom/taobao/weex/bridge/WXParams;->getAppVersion()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string/jumbo v4, "weexVersion"

    invoke-virtual {v3}, Lcom/taobao/weex/bridge/WXParams;->getWeexVersion()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string/jumbo v4, "deviceModel"

    invoke-virtual {v3}, Lcom/taobao/weex/bridge/WXParams;->getDeviceModel()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string/jumbo v4, "appName"

    invoke-virtual {v3}, Lcom/taobao/weex/bridge/WXParams;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string/jumbo v4, "deviceWidth"

    invoke-virtual {v3}, Lcom/taobao/weex/bridge/WXParams;->getDeviceWidth()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string/jumbo v4, "deviceHeight"

    invoke-virtual {v3}, Lcom/taobao/weex/bridge/WXParams;->getDeviceHeight()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string/jumbo v4, "shouldInfoCollect"

    invoke-virtual {v3}, Lcom/taobao/weex/bridge/WXParams;->getShouldInfoCollect()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getCustomOptions()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 160
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 162
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    iget-object v4, p0, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->info:Landroid/widget/TextView;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private showModules()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 94
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 95
    .local v1, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/TypeModuleFactory;>;"
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment$EnvironmentUtil;->getExistedModules(Z)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 96
    .local v0, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/common/TypeModuleFactory;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "  [global]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 98
    .end local v0    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/common/TypeModuleFactory;>;"
    :cond_0
    invoke-static {v5}, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment$EnvironmentUtil;->getExistedModules(Z)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 99
    iget-object v2, p0, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 100
    iget-object v2, p0, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->info:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v2, p0, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 102
    iget-object v2, p0, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 103
    iget-object v2, p0, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 104
    iget-object v2, p0, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->list:Landroid/widget/ListView;

    new-instance v3, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment$2;

    invoke-direct {v3, p0, v1}, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment$2;-><init>(Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 119
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v7, 0x1090003

    const/4 v6, 0x0

    .line 57
    sget v1, Lcom/taobao/weex/inspector/R$layout;->fragment_environment:I

    invoke-virtual {p1, v1, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "root":Landroid/view/View;
    sget v1, Lcom/taobao/weex/inspector/R$id;->spinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->spinner:Landroid/widget/Spinner;

    .line 59
    iget-object v1, p0, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->spinner:Landroid/widget/Spinner;

    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "Modules"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    const-string/jumbo v6, "Components"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "Environment"

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v7, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 60
    iget-object v1, p0, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->spinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment$1;

    invoke-direct {v2, p0}, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment$1;-><init>(Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 82
    sget v1, Lcom/taobao/weex/inspector/R$id;->list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->list:Landroid/widget/ListView;

    .line 83
    sget v1, Lcom/taobao/weex/inspector/R$id;->info:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->info:Landroid/widget/TextView;

    .line 84
    iget-object v1, p0, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->info:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 86
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->items:Ljava/util/List;

    invoke-direct {v1, v2, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->arrayAdapter:Landroid/widget/ArrayAdapter;

    .line 87
    iget-object v1, p0, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    invoke-direct {p0}, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->showModules()V

    .line 90
    return-object v0
.end method
