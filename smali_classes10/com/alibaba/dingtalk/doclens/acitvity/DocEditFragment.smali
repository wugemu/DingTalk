.class public Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;
.super Landroid/support/v4/app/Fragment;
.source "DocEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$a;
    }
.end annotation


# instance fields
.field a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$a;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;

.field private d:I

.field private e:Landroid/widget/ImageView;

.field private f:Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;

.field private g:Lcom/alibaba/dingtalk/doclens/DocLensLib;

.field private h:I

.field private i:I

.field private j:Landroid/app/ProgressDialog;

.field private k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 137
    new-instance v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$1;-><init>(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->k:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    .prologue
    .line 41
    .line 4153
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 4156
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4157
    if-eqz v0, :cond_0

    .line 4159
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 4160
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->e:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 4163
    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->e:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 4164
    const/16 v3, 0xa

    new-array v3, v3, [F

    .line 4165
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 4168
    const/4 v2, 0x0

    aget v2, v3, v2

    .line 4169
    const/4 v4, 0x4

    aget v3, v3, v4

    .line 4172
    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->h:I

    .line 4173
    int-to-float v0, v1

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->i:I

    .line 41
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    .prologue
    .line 41
    iget v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->h:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    .prologue
    .line 41
    iget v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->i:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->f:Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->c:Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    .prologue
    .line 41
    .line 5120
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->j:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 5121
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 41
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    .prologue
    .line 41
    iget v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->d:I

    return v0
.end method

.method static synthetic i(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$a;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    .line 180
    .local v7, "id":I
    sget v0, Liff$d;->btn_done:I

    if-ne v7, v0, :cond_5

    .line 182
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->g:Lcom/alibaba/dingtalk/doclens/DocLensLib;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lcom/alibaba/dingtalk/doclens/DocLensLib;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/doclens/DocLensLib;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->g:Lcom/alibaba/dingtalk/doclens/DocLensLib;

    .line 185
    :cond_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->f:Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;

    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->c:Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->getSourceImageWidth()I

    move-result v3

    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->c:Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->getSourceImageHeight()I

    move-result v4

    .line 2154
    iget-object v0, v2, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->a:[F

    iget v1, v2, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->d:I

    neg-int v1, v1

    iget v6, v2, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->e:I

    neg-int v6, v6

    invoke-static {v0, v1, v6}, Lgro;->a([FII)[F

    move-result-object v0

    .line 2155
    iget v1, v2, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->b:I

    iget v2, v2, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->c:I

    move v6, v5

    invoke-static/range {v0 .. v6}, Lgro;->a([FIIIIII)[F

    move-result-object v8

    .line 186
    .local v8, "quad":[F
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->c:Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;

    invoke-virtual {v0, v8}, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->setQuad([F)V

    .line 3111
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->j:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    .line 3112
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->j:Landroid/app/ProgressDialog;

    .line 3114
    :cond_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3115
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v9}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3117
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 188
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->g:Lcom/alibaba/dingtalk/doclens/DocLensLib;

    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->c:Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$2;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$2;-><init>(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)V

    const-class v4, Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/support/v4/app/Fragment;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 3238
    if-nez v2, :cond_4

    .line 3239
    const-string/jumbo v2, "DocLensLib"

    const-string/jumbo v3, "doc info param is null"

    .line 4018
    const-string/jumbo v4, "im"

    invoke-static {v2, v3, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3240
    if-eqz v0, :cond_3

    .line 3241
    if-eqz v0, :cond_3

    .line 3242
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/dingtalk/doclens/DocLensLib$4;

    invoke-direct {v3, v1, v0}, Lcom/alibaba/dingtalk/doclens/DocLensLib$4;-><init>(Lcom/alibaba/dingtalk/doclens/DocLensLib;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 216
    .end local v8    # "quad":[F
    :cond_3
    :goto_0
    return-void

    .line 3252
    .restart local v8    # "quad":[F
    :cond_4
    new-instance v3, Lcom/alibaba/dingtalk/doclens/DocLensLib$5;

    invoke-direct {v3, v1, v2, v0}, Lcom/alibaba/dingtalk/doclens/DocLensLib$5;-><init>(Lcom/alibaba/dingtalk/doclens/DocLensLib;Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v1, v3}, Lcom/alibaba/dingtalk/doclens/DocLensLib;->a(Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 211
    .end local v8    # "quad":[F
    :cond_5
    sget v0, Liff$d;->btn_cancel:I

    if-ne v7, v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$a;

    if-eqz v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$a;

    invoke-interface {v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$a;->a()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 70
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 74
    :cond_0
    :try_start_0
    sget-object v2, Lhcp;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->b:Ljava/util/List;

    .line 75
    sget-object v2, Lhcp;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->d:I

    .line 76
    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->b:Ljava/util/List;

    iget v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->d:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;

    iput-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->c:Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "DocEditFragment"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "onCreate parse extra exception : "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1018
    const-string/jumbo v4, "im"

    invoke-static {v2, v3, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/high16 v6, 0x42000000    # 32.0f

    .line 84
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->b:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->c:Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;

    if-nez v3, :cond_1

    :cond_0
    move-object v2, v4

    .line 100
    :goto_0
    return-object v2

    .line 87
    :cond_1
    sget v3, Liff$e;->fragment_layout_doc_edit:I

    const/4 v5, 0x0

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 88
    .local v2, "root":Landroid/view/View;
    sget v3, Liff$d;->imv_doc_source:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->e:Landroid/widget/ImageView;

    .line 89
    sget v3, Liff$d;->doc_edge_detect_view:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;

    iput-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->f:Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;

    .line 90
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->f:Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;

    sget-object v5, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$Mode;->EDIT:Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$Mode;

    invoke-virtual {v3, v5}, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->setMode(Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$Mode;)V

    .line 91
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->f:Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->setVisibility(I)V

    .line 92
    const-string/jumbo v3, "IMAGE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 93
    .local v0, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->e:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->c:Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->getSourceImagePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5, v4}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 94
    sget v3, Liff$d;->btn_cancel:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    sget v3, Liff$d;->btn_done:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    sget v3, Liff$d;->img_rotate:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 98
    .local v1, "mRotationBtn":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Liff$f;->icon_anticlockwise:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1104
    sget v4, Liff$a;->doc_lens_bar_text:I

    invoke-static {v4}, Leda;->b(I)I

    move-result v4

    .line 1105
    new-instance v5, Lecw;

    invoke-direct {v5, v3, v4}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 1106
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v6}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v3

    .line 2070
    iput v3, v5, Lecw;->a:I

    .line 1107
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v6}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v3

    .line 2079
    iput v3, v5, Lecw;->b:I

    .line 98
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 134
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 128
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 129
    return-void
.end method
