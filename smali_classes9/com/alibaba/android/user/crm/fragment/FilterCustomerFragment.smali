.class public Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;
.super Lcom/alibaba/android/user/UserBaseFragment;
.source "FilterCustomerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$b;,
        Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;,
        Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field public b:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$b;

.field private d:J

.field private e:Landroid/widget/LinearLayout;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseFragment;-><init>()V

    .line 387
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->d:J

    return-wide v0
.end method

.method public static a(Landroid/os/Bundle;)Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 74
    new-instance v0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;

    invoke-direct {v0}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;-><init>()V

    .line 75
    .local v0, "fragment":Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;
    invoke-virtual {v0, p0}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 76
    return-object v0
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 249
    .local v2, "size":I
    if-gtz v2, :cond_0

    .line 250
    const/4 v3, 0x0

    .line 260
    :goto_0
    return-object v3

    .line 253
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 254
    .local v1, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 255
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 256
    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_1

    .line 257
    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 254
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 260
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;Ljava/util/List;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v3, 0x0

    .line 55
    .line 1185
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 1187
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->f:Ljava/util/List;

    .line 1191
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/crm/model/CrmTagObject;

    .line 1192
    sget v1, Lezg$j;->item_customer_filter:I

    iget-object v2, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 1193
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1194
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v2, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1196
    sget v2, Lezg$h;->tv_customer_group:I

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1197
    iget-object v7, v0, Lcom/alibaba/android/user/crm/model/CrmTagObject;->groupName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1199
    iget-object v2, v0, Lcom/alibaba/android/user/crm/model/CrmTagObject;->tags:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/alibaba/android/user/crm/model/CrmTagObject;->tags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1200
    new-instance v7, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/alibaba/android/user/crm/model/CrmTagObject;->tags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1201
    iget-object v2, v0, Lcom/alibaba/android/user/crm/model/CrmTagObject;->tags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1202
    new-instance v9, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;

    invoke-direct {v9, p0, v2, v3}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;-><init>(Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;Ljava/lang/String;Z)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1205
    :cond_1
    sget v2, Lezg$h;->customer_grid_view:I

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    .line 1206
    new-instance v8, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;

    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    iget v0, v0, Lcom/alibaba/android/user/crm/model/CrmTagObject;->type:I

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-direct {v8, p0, v9, v0}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;-><init>(Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;Landroid/app/Activity;Z)V

    .line 1207
    invoke-virtual {v8, v7}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->a(Ljava/util/List;)V

    .line 1208
    invoke-virtual {v2, v8}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1209
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->f:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1211
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_3
    move v0, v3

    .line 1206
    goto :goto_2

    .line 55
    :cond_4
    return-void
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->c:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 264
    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->f:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;

    .line 266
    .local v0, "adapter":Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;
    invoke-virtual {v0}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->a()V

    goto :goto_0

    .line 269
    .end local v0    # "adapter":Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1124
    sget-object v0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->c:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 1125
    new-instance v1, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1;-><init>(Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lezg$h;->btn_ok:I

    if-ne v3, v4, :cond_4

    .line 219
    iget-object v3, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->b:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$b;

    if-eqz v3, :cond_2

    .line 220
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;

    .line 224
    .local v0, "adapter":Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;
    invoke-virtual {v0}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->b()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "labels":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 226
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 230
    .end local v0    # "adapter":Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;
    .end local v1    # "labels":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->b:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$b;

    invoke-interface {v3, v2}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$b;->a(Ljava/util/List;)V

    .line 233
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 234
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->b()V

    .line 240
    :cond_3
    :goto_1
    return-void

    .line 237
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lezg$h;->btn_reset:I

    if-ne v3, v4, :cond_3

    .line 238
    invoke-direct {p0}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->g()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 87
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string/jumbo v1, "org_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->d:J

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 96
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/UserBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 97
    iget-object v2, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->I:Landroid/view/View;

    sget v3, Lezg$h;->ll_container:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->e:Landroid/widget/LinearLayout;

    .line 98
    iget-object v2, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->I:Landroid/view/View;

    sget v3, Lezg$h;->btn_ok:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 99
    .local v1, "sureBtn":Landroid/widget/Button;
    iget-object v2, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->I:Landroid/view/View;

    sget v3, Lezg$h;->btn_reset:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 100
    .local v0, "resetBtn":Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v2, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->I:Landroid/view/View;

    return-object v2
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 274
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseFragment;->onDestroy()V

    .line 275
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 4
    .param p1, "hidden"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseFragment;->onHiddenChanged(Z)V

    .line 115
    sget-object v1, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onHiddenChanged "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->f:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;

    .line 118
    .local v0, "adapter":Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;
    invoke-virtual {v0}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->c()V

    goto :goto_0

    .line 121
    .end local v0    # "adapter":Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;
    :cond_0
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lezg$j;->fragment_customer_filter:I

    return v0
.end method
