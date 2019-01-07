.class public Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;
.super Landroid/support/v4/app/Fragment;
.source "DocPreviewFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$a;
    }
.end annotation


# instance fields
.field a:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$a;

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

.field private c:I

.field private d:Landroid/support/v4/view/ViewPager;

.field private e:Lhbn;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 42
    sget-object v0, Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;->SCAN:Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    iput-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->g:Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->d:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->f:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "%d/%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->c:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    return-void
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;

    .prologue
    const/4 v2, 0x1

    .line 32
    .line 1171
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1173
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1174
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$a;

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$a;

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$a;->c(Ljava/util/List;)V

    :cond_0
    :goto_0
    return-void

    .line 1178
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->b:Ljava/util/List;

    iget v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1179
    iget v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->c:I

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->c:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->c:I

    :goto_1
    iput v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->c:I

    .line 1180
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->e:Lhbn;

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->b:Ljava/util/List;

    .line 2060
    iput-object v1, v0, Lhbn;->b:Ljava/util/List;

    .line 2061
    invoke-virtual {v0}, Lhbn;->notifyDataSetChanged()V

    .line 1181
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->d:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 1182
    invoke-direct {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->a()V

    goto :goto_0

    .line 1179
    :cond_2
    iget v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->c:I

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 129
    .local v1, "id":I
    sget v2, Liff$d;->btn_continue_scan:I

    if-ne v1, v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$a;

    if-eqz v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$a;

    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$a;->c(Ljava/util/List;)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    sget v2, Liff$d;->btn_edit:I

    if-ne v1, v2, :cond_2

    .line 134
    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$a;

    if-eqz v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$a;

    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->b:Ljava/util/List;

    iget v4, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->c:I

    invoke-interface {v2, v3, v4}, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$a;->b(Ljava/util/List;I)V

    goto :goto_0

    .line 137
    :cond_2
    sget v2, Liff$d;->btn_send:I

    if-ne v1, v2, :cond_3

    .line 138
    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$a;

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$a;

    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$a;->b(Ljava/util/List;)V

    goto :goto_0

    .line 141
    :cond_3
    sget v2, Liff$d;->img_delete:I

    if-ne v1, v2, :cond_4

    .line 142
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 143
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Liff$f;->dt_photo_delete_doc_confirm:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 144
    sget v2, Liff$f;->dt_photo_confirm:I

    new-instance v3, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$2;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$2;-><init>(Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 151
    sget v2, Liff$f;->dt_photo_cancel:I

    new-instance v3, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$3;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$3;-><init>(Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 157
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 158
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 159
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_4
    sget v2, Liff$d;->btn_cancel:I

    if-ne v1, v2, :cond_5

    .line 160
    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$a;

    if-eqz v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$a;

    invoke-interface {v2}, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$a;->c()V

    goto :goto_0

    .line 163
    :cond_5
    sget v2, Liff$d;->btn_save_space:I

    if-ne v1, v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$a;

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$a;

    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$a;->d(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 76
    :goto_0
    return-void

    .line 69
    :cond_0
    :try_start_0
    sget-object v2, Lhcp;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->b:Ljava/util/List;

    .line 70
    sget-object v2, Lhcp;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->c:I

    .line 71
    sget-object v2, Lhcp;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    iput-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->g:Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "DocPreviewFragment"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "fragment parse argument extra exception : "

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

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 80
    sget v4, Liff$e;->fragment_layout_doc_preview:I

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 81
    .local v2, "root":Landroid/view/View;
    sget v4, Liff$d;->tv_index:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->f:Landroid/widget/TextView;

    .line 83
    sget v4, Liff$d;->view_pager_docs:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager;

    iput-object v4, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->d:Landroid/support/v4/view/ViewPager;

    .line 84
    const-string/jumbo v4, "IMAGE"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 86
    .local v0, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    new-instance v4, Lhbn;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->b:Ljava/util/List;

    invoke-direct {v4, v5, v6, v0}, Lhbn;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/alibaba/doraemon/image/ImageMagician;)V

    iput-object v4, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->e:Lhbn;

    .line 87
    iget-object v4, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->d:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->e:Lhbn;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Lgl;)V

    .line 88
    iget-object v4, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 90
    iget v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->c:I

    .line 91
    .local v1, "initIndex":I
    iget-object v4, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->d:Landroid/support/v4/view/ViewPager;

    new-instance v5, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$1;

    invoke-direct {v5, p0, v1}, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$1;-><init>(Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;I)V

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->post(Ljava/lang/Runnable;)Z

    .line 97
    invoke-direct {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->a()V

    .line 99
    sget v4, Liff$d;->btn_continue_scan:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    sget v4, Liff$d;->btn_edit:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    sget v4, Liff$d;->btn_send:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    sget v4, Liff$d;->img_delete:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    sget v4, Liff$d;->btn_cancel:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    sget v4, Liff$d;->btn_save_space:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 106
    .local v3, "saveText":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->g:Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    sget-object v5, Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;->SCAN:Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    if-ne v4, v5, :cond_0

    .line 107
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    :goto_0
    return-object v2

    .line 110
    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 119
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 120
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 198
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 188
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 192
    iput p1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->c:I

    .line 193
    invoke-direct {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->a()V

    .line 194
    return-void
.end method
