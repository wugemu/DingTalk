.class public Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "UserManagerFragment.java"


# instance fields
.field public a:Lfxw;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Z

.field private h:I

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

.field private l:Lfxx;

.field private m:Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 41
    iput-boolean v0, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->b:Z

    .line 43
    iput-boolean v1, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->c:Z

    .line 45
    iput-boolean v1, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->d:Z

    .line 47
    iput-boolean v0, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->e:Z

    .line 49
    iput v0, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->f:I

    .line 51
    iput-boolean v0, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->g:Z

    .line 53
    iput v1, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->h:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->i:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->j:Ljava/util/List;

    .line 71
    iput v1, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->n:I

    return-void
.end method

.method private c()Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->m:Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;

    invoke-direct {v0}, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->m:Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->m:Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;

    sget-object v1, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;->AddButton:Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    .line 3071
    iput-object v1, v0, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;->a:Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->m:Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;

    return-object v0
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 205
    iget-object v0, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 206
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->n:I

    .line 207
    iget-boolean v0, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->e:Z

    if-eqz v0, :cond_2

    .line 208
    iget-boolean v0, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->b:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->j:Ljava/util/List;

    invoke-direct {p0}, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->c()Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget v0, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->n:I

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 226
    :cond_1
    :goto_0
    return-void

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 219
    iget-boolean v0, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->b:Z

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->j:Ljava/util/List;

    invoke-direct {p0}, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->c()Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 189
    .local p1, "userList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;>;"
    if-eqz p1, :cond_1

    .end local p1    # "userList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;>;"
    :goto_0
    iput-object p1, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->i:Ljava/util/List;

    .line 191
    iget-object v0, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->l:Lfxx;

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->d()V

    .line 193
    iget-object v0, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->l:Lfxx;

    iget-object v1, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->j:Ljava/util/List;

    .line 4060
    iput-object v1, v0, Lfxx;->a:Ljava/util/List;

    .line 194
    iget-object v0, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->l:Lfxx;

    iget v1, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->n:I

    .line 4136
    iput v1, v0, Lfxx;->c:I

    .line 195
    iget-object v0, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->l:Lfxx;

    invoke-virtual {v0}, Lfxx;->notifyDataSetChanged()V

    .line 201
    :cond_0
    return-void

    .line 189
    .restart local p1    # "userList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;>;"
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "userList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 76
    iget-object v2, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->I:Landroid/view/View;

    sget v3, Lfxs$a;->grid_view:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    iput-object v2, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    .line 79
    invoke-direct {p0}, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->d()V

    .line 80
    new-instance v2, Lfxx;

    invoke-virtual {p0}, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->j:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lfxx;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v2, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->l:Lfxx;

    .line 81
    iget-object v2, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->l:Lfxx;

    iget v3, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->n:I

    .line 1136
    iput v3, v2, Lfxx;->c:I

    .line 82
    iget-object v2, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->l:Lfxx;

    iget-object v3, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->a:Lfxw;

    .line 2132
    iput-object v3, v2, Lfxx;->b:Lfxw;

    .line 83
    iget-object v2, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    iget-object v3, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->l:Lfxx;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    iget-object v2, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->I:Landroid/view/View;

    sget v3, Lfxs$a;->rl_more_button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    iget-object v2, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->I:Landroid/view/View;

    sget v3, Lfxs$a;->view_more_button_divider:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    iget-object v2, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->l:Lfxx;

    iget v3, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->f:I

    .line 2140
    iput v3, v2, Lfxx;->d:I

    .line 107
    iget v2, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->f:I

    if-nez v2, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    .line 109
    .local v0, "columnWidth":I
    invoke-virtual {p0}, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 114
    .local v1, "spacingWidth":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->setColumnWidth(I)V

    .line 115
    iget-object v2, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->setHorizontalSpacing(I)V

    .line 118
    iget-object v2, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->l:Lfxx;

    iget-boolean v3, p0, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->g:Z

    .line 2144
    iput-boolean v3, v2, Lfxx;->e:Z

    .line 127
    return-void

    .line 111
    .end local v0    # "columnWidth":I
    .end local v1    # "spacingWidth":I
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/high16 v3, 0x42700000    # 60.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    .line 112
    .restart local v0    # "columnWidth":I
    invoke-virtual {p0}, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .restart local v1    # "spacingWidth":I
    goto :goto_0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 131
    sget v0, Lfxs$b;->user_kit_manager_fragment:I

    return v0
.end method
