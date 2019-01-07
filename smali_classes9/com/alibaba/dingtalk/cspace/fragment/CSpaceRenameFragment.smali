.class public Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;
.super Lcom/alibaba/dingtalk/cspace/fragment/SpaceRenameBaseFragment;
.source "CSpaceRenameFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field a:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field b:Landroid/os/Handler;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private d:Ljava/lang/String;

.field private e:Lgdg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/SpaceRenameBaseFragment;-><init>()V

    .line 64
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->d:Ljava/lang/String;

    .line 211
    new-instance v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment$4;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment$4;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;
    .param p1, "x1"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 43
    .line 3051
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 2184
    if-eqz v0, :cond_1

    .line 2187
    if-eqz p1, :cond_2

    .line 2188
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_0

    .line 2189
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setName(Ljava/lang/String;)V

    .line 2190
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPath(Ljava/lang/String;)V

    .line 3178
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alibaba.dingtalk.space.rename"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3179
    const-string/jumbo v1, "dentry_model"

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3180
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 2193
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->b:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void

    .line 2195
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 2196
    const/16 v0, 0x66

    iput v0, v2, Landroid/os/Message;->what:I

    .line 2197
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    const/4 v0, 0x4

    invoke-static {v0, p2, p3}, Lggr;->a(ILjava/lang/String;Ljava/lang/String;)Lggs;

    move-result-object v0

    .line 2198
    const-string/jumbo v1, "13023003"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "13023004"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2199
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_4

    const-string/jumbo v0, "folder"

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2200
    sget v0, Lfzs$h;->cspace_rename_folder_exist:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    .line 2205
    :goto_1
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2207
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->b:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2202
    :cond_4
    sget v0, Lfzs$h;->cspace_rename_file_exist:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    goto :goto_1

    .line 2205
    :cond_5
    iget-object v1, v0, Lggs;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v0, v0, Lggs;->b:Ljava/lang/String;

    move-object v1, v2

    goto :goto_1

    :cond_6
    sget v0, Lfzs$h;->cspace_rename_error:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;)Lgdg;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->e:Lgdg;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 168
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->requestFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2051
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    .line 168
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 170
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 171
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 172
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setSelection(I)V

    .line 175
    .end local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method c()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 266
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "edtName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    const/4 v2, 0x0

    .line 276
    :goto_0
    return-object v2

    .line 270
    :cond_0
    new-instance v1, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 271
    .local v1, "sbStrName":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 272
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 273
    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 274
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 276
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/SpaceRenameBaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 88
    :try_start_0
    check-cast p1, Lgdg;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->e:Lgdg;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/SpaceRenameBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 73
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 74
    const-string/jumbo v1, "dentry_model"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v1, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lfzs$h;->cspace_rename_model_is_null:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 81
    :cond_1
    return-void
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
    .line 97
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lfzs$g;->cspace_create_folder:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 98
    .local v1, "view":Landroid/view/View;
    sget v2, Lfzs$f;->edt_name:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 99
    const-string/jumbo v2, "file"

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    sget v3, Lfzs$h;->cspace_create_file_hint:I

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 103
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 104
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->d:Ljava/lang/String;

    .line 105
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .end local v0    # "index":I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v3, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment$1;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment$1;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 139
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v3, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment$2;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment$2;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1158
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v3, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment$3;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment$3;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    return-object v1

    .line 107
    .restart local v0    # "index":I
    :cond_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->d:Ljava/lang/String;

    .line 108
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 112
    .end local v0    # "index":I
    :cond_2
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 281
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/fragment/SpaceRenameBaseFragment;->onDestroy()V

    .line 282
    return-void
.end method
