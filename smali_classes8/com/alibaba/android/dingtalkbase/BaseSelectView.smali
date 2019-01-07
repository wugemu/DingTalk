.class public Lcom/alibaba/android/dingtalkbase/BaseSelectView;
.super Landroid/widget/LinearLayout;
.source "BaseSelectView.java"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Lcia;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/BaseSelectView;->a()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/BaseSelectView;->a()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/BaseSelectView;->a()V

    .line 42
    return-void
.end method

.method private a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/BaseSelectView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcig$h;->layout_select_base_mode:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, "view":Landroid/view/View;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectView;->b:Ljava/util/List;

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectView;->c:Ljava/util/List;

    .line 69
    sget v1, Lcig$f;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectView;->a:Landroid/widget/ListView;

    .line 70
    new-instance v1, Lcia;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/BaseSelectView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectView;->b:Ljava/util/List;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectView;->c:Ljava/util/List;

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectView;->d:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcia;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;I)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectView;->e:Lcia;

    .line 71
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectView;->a:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectView;->e:Lcia;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/BaseSelectView;->addView(Landroid/view/View;)V

    .line 73
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;IZ)V
    .locals 2
    .param p2, "initialIndex"    # I
    .param p3, "isFirstSpecial"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;IZ)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 52
    .local p1, "desResIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 53
    if-eqz p1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectView;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 56
    :cond_0
    iput p2, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectView;->d:I

    .line 57
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectView;->e:Lcia;

    const/4 v1, 0x1

    .line 1085
    iput-boolean v1, v0, Lcia;->b:Z

    .line 58
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectView;->e:Lcia;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectView;->d:I

    invoke-virtual {v0, v1}, Lcia;->a(I)V

    .line 59
    return-void
.end method

.method public getSelectIndex()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectView;->e:Lcia;

    .line 2081
    iget v0, v0, Lcia;->a:I

    .line 62
    return v0
.end method

.method public setEnables(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "enables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 46
    if-eqz p1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectView;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    :cond_0
    return-void
.end method
