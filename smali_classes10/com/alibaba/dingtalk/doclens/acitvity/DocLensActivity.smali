.class public Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "DocLensActivity.java"

# interfaces
.implements Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$a;
.implements Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$a;
.implements Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$a;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

.field private d:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;

.field private e:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

.field private f:Landroid/support/v4/app/Fragment;

.field private g:Lgrl;

.field private h:Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

.field private i:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a:Ljava/util/List;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->b:I

    return-void
.end method

.method private a(Ljava/lang/Class;)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "clazz"    # Ljava/lang/Class;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    const-class v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    if-ne p1, v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->e:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->e:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    .line 130
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->e:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    .line 1058
    iput-object p0, v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$a;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->e:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    invoke-direct {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->e()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->setArguments(Landroid/os/Bundle;)V

    .line 134
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->e:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    .line 152
    :goto_0
    return-object v0

    .line 135
    :cond_1
    const-class v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    if-ne p1, v0, :cond_3

    .line 136
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->c:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    if-nez v0, :cond_2

    .line 137
    new-instance v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->c:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    .line 138
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->c:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    .line 1110
    iput-object p0, v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$a;

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->c:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    invoke-direct {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->e()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->setArguments(Landroid/os/Bundle;)V

    .line 142
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->c:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    goto :goto_0

    .line 143
    :cond_3
    const-class v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;

    if-ne p1, v0, :cond_5

    .line 144
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->d:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;

    if-nez v0, :cond_4

    .line 145
    new-instance v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->d:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;

    .line 146
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->d:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;

    .line 2057
    iput-object p0, v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$a;

    .line 148
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->d:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;

    invoke-direct {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->e()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 150
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->d:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;

    goto :goto_0

    .line 152
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;)Lgrl;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->g:Lgrl;

    return-object v0
.end method

.method private a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "from"    # Landroid/support/v4/app/Fragment;
    .param p2, "to"    # Landroid/support/v4/app/Fragment;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    if-nez p2, :cond_0

    .line 116
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    .line 106
    .local v0, "fm":Lcn;
    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 107
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 110
    :cond_1
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    invoke-virtual {v1, p2}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 114
    :cond_2
    sget v2, Liff$d;->fl_fragment_container:I

    invoke-virtual {v1, v2, p2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 115
    iput-object p2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->f:Landroid/support/v4/app/Fragment;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;Landroid/app/Activity;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 42
    .line 5235
    invoke-static {p1}, Lhcn;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->i:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5236
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 42
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    .line 5224
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->i:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 5225
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->i:Landroid/app/ProgressDialog;

    .line 5227
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5228
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 5230
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 5231
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 42
    return-void
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;

    .prologue
    .line 42
    .line 4241
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4242
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    .line 4243
    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getContentPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    :cond_0
    return-object v1
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;)Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->h:Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a:Ljava/util/List;

    return-object v0
.end method

.method private e()Landroid/os/Bundle;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 119
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 120
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v2, Lhcp;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 121
    sget-object v1, Lhcp;->b:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    sget-object v1, Lhcp;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->h:Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 123
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 274
    const-class v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a(Ljava/lang/Class;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;

    iput-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->d:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;

    .line 275
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->e:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->d:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    .line 276
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 167
    .local p1, "docInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;>;"
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a:Ljava/util/List;

    .line 168
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->b:I

    .line 173
    const-class v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a(Ljava/lang/Class;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;

    iput-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->d:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;

    .line 174
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->d:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;

    invoke-direct {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->e()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 175
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->c:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->d:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;I)V
    .locals 2
    .param p2, "selectedDocIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 281
    .local p1, "docCorrectInfos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;>;"
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a:Ljava/util/List;

    .line 282
    iput p2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->b:I

    .line 283
    const-class v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a(Ljava/lang/Class;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;

    iput-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->d:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;

    .line 284
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->e:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->d:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    .line 285
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 162
    .line 2157
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->finish()V

    .line 163
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 182
    .local p1, "docCorrectInfos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;>;"
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a:Ljava/util/List;

    .line 183
    new-instance v0, Lgrq;

    new-instance v1, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$2;-><init>(Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;Ljava/util/List;)V

    invoke-direct {v0, p0, v1}, Lgrq;-><init>(Landroid/content/Context;Lgrq$a;)V

    .line 220
    .local v0, "dialog":Lgrq;
    invoke-virtual {v0}, Lgrq;->a()V

    .line 221
    return-void
.end method

.method public final b(Ljava/util/List;I)V
    .locals 2
    .param p2, "selectedDocIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 250
    .local p1, "docCorrectInfos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;>;"
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a:Ljava/util/List;

    .line 251
    iput p2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->b:I

    .line 253
    const-class v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a(Ljava/lang/Class;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    iput-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->e:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    .line 254
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->d:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->e:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    .line 255
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 268
    .line 3157
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->finish()V

    .line 269
    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 259
    .local p1, "docCorrectInfos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;>;"
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a:Ljava/util/List;

    .line 261
    const-class v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a(Ljava/lang/Class;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    iput-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->c:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    .line 262
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->d:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->c:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    .line 263
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->g:Lgrl;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->g:Lgrl;

    invoke-interface {v0, p0}, Lgrl;->a(Landroid/app/Activity;)V

    .line 352
    :cond_0
    return-void
.end method

.method public final d(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 306
    .local p1, "docCorrectInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;>;"
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a:Ljava/util/List;

    .line 307
    new-instance v0, Lgrq;

    new-instance v1, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$3;-><init>(Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;)V

    invoke-direct {v0, p0, v1}, Lgrq;-><init>(Landroid/content/Context;Lgrq$a;)V

    .line 344
    .local v0, "dialog":Lgrq;
    invoke-virtual {v0}, Lgrq;->a()V

    .line 345
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 289
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->f:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_1

    .line 290
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->f:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    if-eqz v0, :cond_2

    .line 4157
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->finish()V

    goto :goto_0

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->f:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;

    if-eqz v0, :cond_3

    .line 297
    const-class v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a(Ljava/lang/Class;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    iput-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->c:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    .line 298
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->f:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->c:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 299
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->f:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v3, 0x400

    const/4 v6, 0x1

    .line 63
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/Window;->requestFeature(I)Z

    .line 66
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 68
    sget v2, Liff$e;->activity_layout_doc_lens:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 72
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    sget-object v2, Lhcp;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    iput-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->h:Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->h:Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    if-nez v2, :cond_0

    .line 79
    sget-object v2, Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;->SCAN:Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    iput-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->h:Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    .line 81
    :cond_0
    invoke-static {}, Lgzo;->a()Lgzo;

    move-result-object v2

    invoke-virtual {v2}, Lgzo;->b()Lgrl;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->g:Lgrl;

    .line 82
    const-class v2, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    invoke-direct {p0, v2}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a(Ljava/lang/Class;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    iput-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->c:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    .line 84
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->c:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    invoke-direct {p0, v2, v3}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    .line 86
    const-string/jumbo v2, "DocLensActivity"

    sget-object v3, Lcom/alibaba/doraemon/Priority;->HIGH:Lcom/alibaba/doraemon/Priority;

    invoke-static {v2, v6, v3}, Lhcn;->a(Ljava/lang/String;ILcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$1;-><init>(Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 93
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "DocLensActivity"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "intent extra nav_from exception"

    aput-object v5, v3, v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1018
    const-string/jumbo v4, "im"

    invoke-static {v2, v3, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 98
    return-void
.end method
