.class public Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;
.super Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;
.source "SelectOrgTypeActivity.java"

# interfaces
.implements Lfld$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$b;,
        Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$a;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private f:Landroid/widget/ListView;

.field private g:Landroid/widget/ListView;

.field private h:Landroid/widget/ListView;

.field private i:Landroid/view/View;

.field private j:Lflc;

.field private k:Lfld;

.field private l:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$a;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;-><init>()V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->n:Z

    .line 405
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;)Lfld;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->k:Lfld;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->m:Ljava/util/List;

    return-object p1
.end method

.method private a(Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;)V
    .locals 3
    .param p1, "mIndustryObject"    # Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 285
    if-eqz p1, :cond_0

    .line 286
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_key_select_org_type"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "action_key_selected_org_industry"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 288
    const-string/jumbo v1, "activity_identify"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 290
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->finish()V

    .line 292
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 65
    .line 4198
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 4199
    :cond_0
    :goto_0
    return-void

    .line 4202
    :cond_1
    sget-object v0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$4;

    invoke-direct {v1, p1, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$4;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;)Lflc;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->j:Lflc;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;Ljava/util/List;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 65
    .line 3274
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3275
    :cond_0
    :goto_0
    return-void

    .line 3278
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->j:Lflc;

    invoke-virtual {v0, p1}, Lflc;->a(Ljava/util/List;)V

    .line 3281
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->k:Lfld;

    .line 4051
    invoke-virtual {v0, p1}, Lfld;->a(Ljava/util/List;)V

    .line 4052
    invoke-virtual {v0}, Lfld;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->h:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->g:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->n:Z

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 8
    .param p1, "newText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 296
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 301
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->l:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$a;

    .line 2308
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2309
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->m:Ljava/util/List;

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v2

    .line 303
    :goto_1
    invoke-virtual {v3, p1, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$a;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 2313
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;

    .line 2314
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;->subList:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;->subList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2318
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;->subList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    .line 2319
    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->name:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2320
    new-instance v6, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$b;

    iget-object v7, v0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;->name:Ljava/lang/String;

    invoke-direct {v6, p0, v7, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$b;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object v0, v2

    .line 2324
    goto :goto_1
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 88
    sget v0, Lezg$h;->ll_search:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 93
    sget v0, Lezg$j;->select_org_type:I

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 329
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->f:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->f:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->i:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 333
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->onBackPressed()V

    .line 334
    return-void
.end method

.method public onClick(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 355
    if-nez p2, :cond_0

    .line 360
    .end local p2    # "object":Ljava/lang/Object;
    :goto_0
    return-void

    .line 358
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_0
    check-cast p2, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 98
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1152
    sget v0, Lezg$l;->org_need_type_name_txt:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->setTitle(I)V

    .line 1153
    sget v0, Lezg$h;->ll_industry_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->i:Landroid/view/View;

    .line 1154
    sget v0, Lezg$h;->lv_left_category:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->g:Landroid/widget/ListView;

    .line 1155
    sget v0, Lezg$h;->lv_right_detail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->h:Landroid/widget/ListView;

    .line 1156
    sget v0, Lezg$h;->list_view_search:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->f:Landroid/widget/ListView;

    .line 1157
    new-instance v0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$a;

    invoke-direct {v0, p0, p0, v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$a;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;Landroid/app/Activity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->l:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$a;

    .line 1158
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->l:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1159
    new-instance v0, Lflc;

    invoke-direct {v0, p0}, Lflc;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->j:Lflc;

    .line 1160
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->j:Lflc;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1162
    new-instance v0, Lfld;

    invoke-direct {v0, p0, v2}, Lfld;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->k:Lfld;

    .line 1163
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->k:Lfld;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "activity_identify"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->o:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->k:Lfld;

    .line 1199
    iput-object p0, v0, Lfld;->c:Lfld$d;

    .line 102
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$1;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->h:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$2;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 147
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "org_type_cache.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->p:Ljava/lang/String;

    .line 1212
    new-instance v0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$5;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;)V

    .line 1233
    const-class v1, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 1234
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->p:Ljava/lang/String;

    .line 2168
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_1

    .line 1236
    :cond_0
    :goto_0
    invoke-static {p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1237
    sget v0, Lezg$l;->network_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1238
    sget-object v0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "Net err"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1239
    :goto_1
    return-void

    .line 2172
    :cond_1
    sget-object v2, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->e:Ljava/lang/String;

    invoke-static {v2}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$3;

    invoke-direct {v3, v1, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$3;-><init>(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1242
    :cond_2
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    .line 1243
    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$6;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;)V

    const-class v2, Lcma;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1270
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    invoke-interface {v1, v0}, Lezt;->a(Lcma;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 350
    invoke-super {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->onDestroy()V

    .line 351
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 338
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->f:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->f:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->i:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 345
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
