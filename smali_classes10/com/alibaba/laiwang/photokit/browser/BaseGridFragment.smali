.class public abstract Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseGridFragment.java"


# instance fields
.field protected a:I

.field protected b:I

.field protected c:Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter;

.field protected d:Landroid/widget/GridView;

.field protected e:Landroid/view/View;

.field protected f:Landroid/widget/AdapterView$OnItemClickListener;

.field protected g:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->g:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;

    .prologue
    .line 26
    .line 1177
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->d:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Ljug;

    if-eqz v0, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->d:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Ljug;

    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->a:I

    invoke-virtual {v0, v1}, Ljug;->c(I)I

    move-result v0

    .line 1179
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->d:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelection(I)V

    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter;
.end method

.method protected abstract a(Landroid/os/Bundle;)V
.end method

.method public final a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const-string/jumbo v0, "BaseGridFragment"

    const-string/jumbo v1, "Please set the OnItemClickListener before adding fragment to activity."

    invoke-static {v0, v1}, Lhcw;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->f:Landroid/widget/AdapterView$OnItemClickListener;

    goto :goto_0
.end method

.method protected final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 149
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->d:Landroid/widget/GridView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->d:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 153
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->a()Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->c:Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter;

    .line 155
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->a:I

    if-lez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->d:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment$2;-><init>(Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->d:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->c:Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 168
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->c:Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter;->notifyDataSetChanged()V

    .line 174
    :cond_1
    :goto_0
    return-void

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->d:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    const-string/jumbo v0, "BaseGridFragment"

    const-string/jumbo v1, "Bad param bundle,it is null"

    invoke-static {v0, v1}, Lhcw;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public abstract c()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;",
            ">;"
        }
    .end annotation
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 93
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->a(Landroid/os/Bundle;)V

    .line 96
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    sget v2, Liff$e;->fragment_layout_grid:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 118
    .local v1, "view":Landroid/view/View;
    sget v2, Liff$d;->empty_tip:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->e:Landroid/view/View;

    .line 119
    sget v2, Liff$d;->gv_pic:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->d:Landroid/widget/GridView;

    .line 120
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->d:Landroid/widget/GridView;

    new-instance v3, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment$1;

    invoke-direct {v3, p0}, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment$1;-><init>(Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 129
    const-string/jumbo v2, "IMAGE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 130
    .local v0, "magician":Lcom/alibaba/doraemon/image/ImageMagician;
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->d:Landroid/widget/GridView;

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setFastScrollEnabled(Landroid/widget/AbsListView;Z)V

    .line 131
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->b()V

    .line 132
    return-object v1
.end method
