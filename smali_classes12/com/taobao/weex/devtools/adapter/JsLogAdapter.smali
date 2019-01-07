.class public Lcom/taobao/weex/devtools/adapter/JsLogAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "JsLogAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/taobao/weex/utils/WXLogUtils$JsLogWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/adapter/JsLogAdapter$LogItem;,
        Lcom/taobao/weex/devtools/adapter/JsLogAdapter$ItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/taobao/weex/devtools/adapter/JsLogAdapter$ItemHolder;",
        ">;",
        "Landroid/widget/Filterable;",
        "Lcom/taobao/weex/utils/WXLogUtils$JsLogWatcher;"
    }
.end annotation


# static fields
.field private static sInstance:Lcom/taobao/weex/devtools/adapter/JsLogAdapter;


# instance fields
.field private currentLogLevel:I

.field private displayedLogItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/devtools/adapter/JsLogAdapter$LogItem;",
            ">;"
        }
    .end annotation
.end field

.field private originLogItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/devtools/adapter/JsLogAdapter$LogItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->originLogItems:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->displayedLogItems:Ljava/util/List;

    .line 28
    const/4 v0, 0x2

    iput v0, p0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->currentLogLevel:I

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/devtools/adapter/JsLogAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/adapter/JsLogAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->originLogItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/taobao/weex/devtools/adapter/JsLogAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/adapter/JsLogAdapter;

    .prologue
    .line 24
    iget v0, p0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->currentLogLevel:I

    return v0
.end method

.method static synthetic access$200(Lcom/taobao/weex/devtools/adapter/JsLogAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/adapter/JsLogAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->displayedLogItems:Ljava/util/List;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/taobao/weex/devtools/adapter/JsLogAdapter;
    .locals 2

    .prologue
    .line 33
    const-class v1, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->sInstance:Lcom/taobao/weex/devtools/adapter/JsLogAdapter;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;-><init>()V

    sput-object v0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->sInstance:Lcom/taobao/weex/devtools/adapter/JsLogAdapter;

    .line 36
    :cond_0
    sget-object v0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->sInstance:Lcom/taobao/weex/devtools/adapter/JsLogAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/devtools/adapter/JsLogAdapter$1;-><init>(Lcom/taobao/weex/devtools/adapter/JsLogAdapter;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->displayedLogItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLogLevel()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->currentLogLevel:I

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/taobao/weex/devtools/adapter/JsLogAdapter$ItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->onBindViewHolder(Lcom/taobao/weex/devtools/adapter/JsLogAdapter$ItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/taobao/weex/devtools/adapter/JsLogAdapter$ItemHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/taobao/weex/devtools/adapter/JsLogAdapter$ItemHolder;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    iget-object v1, p0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->displayedLogItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter$LogItem;

    .line 60
    .local v0, "logItem":Lcom/taobao/weex/devtools/adapter/JsLogAdapter$LogItem;
    invoke-virtual {p1, v0}, Lcom/taobao/weex/devtools/adapter/JsLogAdapter$ItemHolder;->render(Lcom/taobao/weex/devtools/adapter/JsLogAdapter$LogItem;)V

    .line 61
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/taobao/weex/devtools/adapter/JsLogAdapter$ItemHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/taobao/weex/devtools/adapter/JsLogAdapter$ItemHolder;
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 45
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 47
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 48
    .local v2, "textView":Landroid/widget/TextView;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 50
    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 51
    .local v0, "divider":Landroid/view/View;
    const v3, -0x777778

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 52
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 54
    new-instance v3, Lcom/taobao/weex/devtools/adapter/JsLogAdapter$ItemHolder;

    invoke-direct {v3, p0, v1}, Lcom/taobao/weex/devtools/adapter/JsLogAdapter$ItemHolder;-><init>(Lcom/taobao/weex/devtools/adapter/JsLogAdapter;Landroid/view/View;)V

    return-object v3
.end method

.method public onJsLog(ILjava/lang/String;)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "log"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    :goto_0
    iget-object v1, p0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->originLogItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    .line 71
    iget-object v1, p0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->originLogItems:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 73
    :cond_0
    new-instance v0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter$LogItem;

    invoke-direct {v0, p0}, Lcom/taobao/weex/devtools/adapter/JsLogAdapter$LogItem;-><init>(Lcom/taobao/weex/devtools/adapter/JsLogAdapter;)V

    .line 74
    .local v0, "item":Lcom/taobao/weex/devtools/adapter/JsLogAdapter$LogItem;
    iput p1, v0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter$LogItem;->level:I

    .line 75
    iput-object p2, v0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter$LogItem;->msg:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->originLogItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget v1, p0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->currentLogLevel:I

    if-lt p1, v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->displayedLogItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v1, p0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->displayedLogItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->notifyItemInserted(I)V

    .line 81
    :cond_1
    return-void
.end method

.method public setLogLevel(I)V
    .locals 2
    .param p1, "level"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 113
    iput p1, p0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->currentLogLevel:I

    .line 114
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 115
    return-void
.end method
