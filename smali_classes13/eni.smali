.class public final Leni;
.super Ljava/lang/Object;
.source "AssureHeaderPresenter.java"

# interfaces
.implements Lenj;


# instance fields
.field a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/search/assure/model/AssureModel;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/widget/LinearLayout;

.field final c:Landroid/app/Activity;

.field final d:I

.field private e:Landroid/widget/ListView;

.field private f:Landroid/view/ViewGroup;

.field private g:Lere$a;

.field private final h:Lere$b;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;I)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "chooseMode"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    new-instance v0, Leni$2;

    invoke-direct {v0, p0}, Leni$2;-><init>(Leni;)V

    iput-object v0, p0, Leni;->h:Lere$b;

    .line 55
    const-string/jumbo v0, "fragment = null"

    invoke-static {p1, v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Leni;->c:Landroid/app/Activity;

    .line 57
    iput p2, p0, Leni;->d:I

    .line 58
    return-void
.end method

.method private a(Landroid/view/ViewGroup;Ljava/util/Collection;)V
    .locals 10
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/search/assure/model/AssureModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "assureModels":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 143
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-static {v6}, Lcpd;->a(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 144
    .local v2, "baseModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/assure/model/AssureModel;

    .line 145
    .local v0, "assureModel":Lcom/alibaba/android/search/assure/model/AssureModel;
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getBaseModel()Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v1

    .line 147
    .local v1, "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    if-eqz v1, :cond_0

    .line 148
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    .end local v0    # "assureModel":Lcom/alibaba/android/search/assure/model/AssureModel;
    .end local v1    # "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    :cond_1
    new-instance v5, Lemz;

    iget-object v6, p0, Leni;->c:Landroid/app/Activity;

    invoke-direct {v5, v6, v9, v9, v8}, Lemz;-><init>(Landroid/app/Activity;IILcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 152
    .local v5, "searchAdapter":Lemz;
    const/4 v6, 0x1

    .line 2114
    iput-boolean v6, v5, Lemz;->i:Z

    .line 153
    invoke-virtual {v5, v2}, Lemz;->a(Ljava/util/List;)V

    .line 155
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 156
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 157
    invoke-virtual {v5, v4, v8, v8}, Lemz;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 156
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 159
    :cond_2
    return-void
.end method

.method static synthetic a(Leni;Landroid/view/ViewGroup;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Leni;
    .param p1, "x1"    # Landroid/view/ViewGroup;
    .param p2, "x2"    # Ljava/util/Collection;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Leni;->a(Landroid/view/ViewGroup;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic a(Leni;Ljava/util/Collection;)V
    .locals 2
    .param p0, "x0"    # Leni;
    .param p1, "x1"    # Ljava/util/Collection;

    .prologue
    .line 43
    .line 4162
    iget-object v0, p0, Leni;->e:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 4166
    iget-object v0, p0, Leni;->e:Landroid/widget/ListView;

    .line 4168
    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4169
    if-eqz v0, :cond_0

    .line 4172
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 4176
    check-cast v0, Landroid/view/View;

    .line 4178
    sget v1, Lemt$e;->ll_assure_search_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4179
    if-eqz v0, :cond_0

    .line 4183
    iput-object v0, p0, Leni;->f:Landroid/view/ViewGroup;

    .line 4185
    invoke-direct {p0, v0, p1}, Leni;->a(Landroid/view/ViewGroup;Ljava/util/Collection;)V

    .line 43
    :cond_0
    return-void
.end method

.method public static a(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/search/assure/model/AssureModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "dataList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/search/model/BaseModel;>;"
    .local p1, "assureModels":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    const/4 v4, 0x1

    .line 209
    invoke-static {}, Lcom/alibaba/android/search/impls/SearchInterfaceImpl;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->v()Z

    move-result v2

    if-nez v2, :cond_1

    .line 228
    :cond_0
    return-void

    .line 213
    :cond_1
    invoke-static {p0}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 217
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 218
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/search/model/BaseModel;>;"
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/model/BaseModel;

    .line 220
    .local v1, "model":Lcom/alibaba/android/search/model/BaseModel;
    if-eqz v1, :cond_2

    .line 2294
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/search/assure/model/AssureModel;

    .line 2295
    if-eqz v2, :cond_3

    .line 2299
    invoke-virtual {v2}, Lcom/alibaba/android/search/assure/model/AssureModel;->getBaseModel()Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v3

    .line 2300
    if-eqz v3, :cond_3

    .line 2304
    instance-of v2, v3, Lcom/alibaba/android/search/model/FunctionModel;

    if-eqz v2, :cond_4

    instance-of v2, v1, Lcom/alibaba/android/search/model/FunctionModel;

    if-eqz v2, :cond_4

    move-object v2, v3

    .line 2305
    check-cast v2, Lcom/alibaba/android/search/model/FunctionModel;

    .line 2306
    invoke-virtual {v2}, Lcom/alibaba/android/search/model/FunctionModel;->getFunctionId()I

    move-result v6

    move-object v2, v1

    .line 2308
    check-cast v2, Lcom/alibaba/android/search/model/FunctionModel;

    .line 2309
    invoke-virtual {v2}, Lcom/alibaba/android/search/model/FunctionModel;->getFunctionId()I

    move-result v2

    if-ne v6, v2, :cond_4

    move v2, v4

    .line 224
    :goto_1
    if-eqz v2, :cond_2

    .line 225
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2314
    :cond_4
    invoke-virtual {v3}, Lcom/alibaba/android/search/model/BaseModel;->getId()Ljava/lang/String;

    move-result-object v2

    .line 2315
    if-eqz v2, :cond_3

    .line 2319
    invoke-virtual {v1}, Lcom/alibaba/android/search/model/BaseModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    .line 2320
    goto :goto_1

    .line 2324
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 66
    invoke-static {}, Lcom/alibaba/android/search/impls/SearchInterfaceImpl;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->v()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1290
    instance-of v2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    if-eqz v2, :cond_0

    invoke-static {p0}, Lhcn;->a(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    .line 66
    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 1290
    goto :goto_0

    :cond_1
    move v0, v1

    .line 66
    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/search/assure/model/AssureModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Leni;->a:Ljava/util/Collection;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "keyword"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Leni;->c:Landroid/app/Activity;

    invoke-static {v0}, Leni;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Leni;->g:Lere$a;

    if-nez v0, :cond_2

    .line 77
    new-instance v1, Lerd;

    iget-object v0, p0, Leni;->c:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Leni;->h:Lere$b;

    invoke-direct {v1, v0, v2}, Lerd;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lere$b;)V

    iput-object v1, p0, Leni;->g:Lere$a;

    .line 79
    :cond_2
    iget-object v0, p0, Leni;->g:Lere$a;

    invoke-interface {v0, p1}, Lere$a;->b(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Leni;->g:Lere$a;

    invoke-interface {v0}, Lere$a;->r()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Landroid/widget/ListView;)V
    .locals 6
    .param p1, "keyWord"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "listView"    # Landroid/widget/ListView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p2, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v3, p0, Leni;->c:Landroid/app/Activity;

    invoke-static {v3}, Leni;->a(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    iget-object v3, p0, Leni;->b:Landroid/widget/LinearLayout;

    if-nez v3, :cond_0

    .line 102
    iput-object p2, p0, Leni;->e:Landroid/widget/ListView;

    .line 105
    invoke-static {}, Lenf;->a()Lenh;

    move-result-object v2

    .line 106
    .local v2, "presenter":Lenh;
    if-eqz v2, :cond_0

    .line 109
    const-string/jumbo v3, "EVENTBUTLER"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    .line 110
    .local v0, "eventButler":Lcom/alibaba/doraemon/eventbus/EventButler;
    new-instance v3, Leni$1;

    invoke-direct {v3, p0, p2}, Leni$1;-><init>(Leni;Landroid/widget/ListView;)V

    const-class v4, Lcov;

    iget-object v5, p0, Leni;->c:Landroid/app/Activity;

    invoke-interface {v0, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcov;

    .line 139
    .local v1, "listener":Lcov;, "Lcov<Ljava/util/Collection<Lcom/alibaba/android/search/assure/model/AssureModel;>;>;"
    invoke-interface {v2, p1, v1}, Lenh;->a(Ljava/lang/String;Lcov;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "dataList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/search/model/BaseModel;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 232
    .line 3237
    invoke-static {p1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3238
    iget-object v0, p0, Leni;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3239
    iget-object v0, p0, Leni;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3241
    :cond_0
    iget-object v0, p0, Leni;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 3242
    iget-object v0, p0, Leni;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 233
    :cond_1
    :goto_0
    iget-object v0, p0, Leni;->a:Ljava/util/Collection;

    invoke-static {p1, v0}, Leni;->a(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 234
    return-void

    .line 3245
    :cond_2
    iget-object v0, p0, Leni;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 3246
    iget-object v0, p0, Leni;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3248
    :cond_3
    iget-object v0, p0, Leni;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 3249
    iget-object v0, p0, Leni;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
