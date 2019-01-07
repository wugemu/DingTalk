.class public Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "DingSearchHomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:I


# instance fields
.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/view/View;

.field private e:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->c()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;Ljava/util/List;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/16 v9, 0x8

    const/4 v6, 0x0

    .line 47
    .line 4134
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4137
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 4138
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4139
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 4140
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->setVisibility(I)V

    :cond_1
    return-void

    .line 4142
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4143
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4144
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->setVisibility(I)V

    .line 4146
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getChildCount()I

    move-result v2

    .line 4147
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 4148
    if-le v2, v3, :cond_5

    move v1, v2

    :goto_0
    move v5, v6

    .line 4150
    :goto_1
    if-ge v5, v1, :cond_1

    .line 4152
    if-ge v5, v3, :cond_6

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 4153
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lesr$a;

    iget-object v0, v0, Lesr$a;->a:Ljava/lang/String;

    move-object v4, v0

    .line 4158
    :goto_2
    const/4 v0, 0x0

    .line 4159
    if-ge v5, v2, :cond_3

    .line 4160
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4163
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v0, :cond_7

    .line 4164
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4150
    :cond_4
    :goto_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_5
    move v1, v3

    .line 4148
    goto :goto_0

    .line 4155
    :cond_6
    const-string/jumbo v0, ""

    move-object v4, v0

    goto :goto_2

    .line 4165
    :cond_7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 4166
    if-nez v0, :cond_8

    .line 4167
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 4168
    const/4 v7, 0x1

    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v0, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4169
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lemt$b;->uidic_global_color_c2:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4170
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4171
    sget v7, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->a:I

    sget v8, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->a:I

    invoke-virtual {v0, v7, v6, v8, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 4172
    const/16 v7, 0x10

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 4173
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const/high16 v8, 0x43480000    # 200.0f

    invoke-static {v7, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 4174
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    invoke-virtual {v7, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->addView(Landroid/view/View;)V

    .line 4176
    :cond_8
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4177
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4178
    new-instance v7, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment$4;

    invoke-direct {v7, p0, v4}, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment$4;-><init>(Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4184
    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_3
.end method

.method private c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 116
    invoke-static {}, Lesr;->a()Lesr;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string/jumbo v0, "EVENTBUTLER"

    .line 117
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment$3;-><init>(Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;)V

    const-class v4, Lcom/alibaba/wukong/Callback;

    .line 130
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 117
    invoke-interface {v0, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 3124
    if-nez v2, :cond_1

    .line 3125
    if-eqz v0, :cond_0

    .line 3126
    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3128
    :cond_0
    :goto_0
    return-void

    .line 3130
    :cond_1
    sget-object v3, Lesr;->a:Ljava/lang/String;

    invoke-static {v3}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v3

    new-instance v4, Lesr$3;

    const/16 v5, 0x8

    invoke-direct {v4, v1, v2, v5, v0}, Lesr$3;-><init>(Lesr;Landroid/content/Context;ILcom/alibaba/wukong/Callback;)V

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lemt$e;->iv_clear_histories:I

    if-ne v0, v1, :cond_0

    .line 75
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment$1;-><init>(Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    .line 89
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 75
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 1191
    invoke-static {}, Lesr;->a()Lesr;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 2143
    if-nez v2, :cond_1

    .line 2144
    if-eqz v0, :cond_0

    .line 2145
    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2147
    :cond_0
    :goto_0
    return-void

    .line 2149
    :cond_1
    sget-object v3, Lesr;->a:Ljava/lang/String;

    invoke-static {v3}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v3

    new-instance v4, Lesr$4;

    invoke-direct {v4, v1, v2, v0}, Lesr$4;-><init>(Lesr;Landroid/content/Context;Lcom/alibaba/wukong/Callback;)V

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 1094
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->ll_histories_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->b:Landroid/widget/LinearLayout;

    .line 1095
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->iv_clear_histories:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->c:Landroid/widget/ImageView;

    .line 1096
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->divider_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->d:Landroid/view/View;

    .line 1097
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->layout_histories:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    .line 1101
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->c()V

    .line 1105
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1106
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->I:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment$2;-><init>(Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 64
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lemt$f;->fragment_ding_search_homepage:I

    return v0
.end method
