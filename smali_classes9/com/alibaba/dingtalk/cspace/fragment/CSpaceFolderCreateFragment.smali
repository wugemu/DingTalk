.class public Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;
.super Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;
.source "CSpaceFolderCreateFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private b:Lgdd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;)Lgdd;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;->b:Lgdd;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 128
    :try_start_0
    check-cast p1, Lgdd;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;->b:Lgdd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 65
    sget v1, Lfzs$g;->cspace_create_folder:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "view":Landroid/view/View;
    sget v1, Lfzs$f;->edt_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 68
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment$1;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment$1;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 89
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment$2;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment$2;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1109
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment$3;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment$3;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 212
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onDestroy()V

    .line 213
    return-void
.end method
