.class public Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "OtherOrgListActivity.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/BroadcastReceiver;

.field private c:Lfgr;

.field private d:Lffu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;ILcom/alibaba/android/user/contact/homepage/ContactHomePageModel;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;

    .prologue
    .line 39
    .line 4149
    if-eqz p2, :cond_0

    .line 4152
    sget-object v0, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity$4;->a:[I

    invoke-virtual {p2}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->getItemType()Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->ordinal()I

    .line 39
    :cond_0
    return-void
.end method

.method private b()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 107
    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->d:Lffu;

    if-nez v7, :cond_1

    .line 146
    :cond_0
    return-void

    .line 110
    :cond_1
    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->d:Lffu;

    invoke-virtual {v7}, Lffu;->b()Ljava/util/List;

    move-result-object v5

    .line 111
    .local v5, "orgComposites":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/contact/homepage/Composite;>;"
    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 112
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 113
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 114
    .local v4, "orgCompositeLength":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 116
    new-instance v3, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;

    invoke-direct {v3}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;-><init>()V

    .line 117
    .local v3, "mainOrgModel":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;
    sget-object v7, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->Department:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    invoke-virtual {v3, v7}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->setItemType(Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;)V

    .line 118
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/user/contact/homepage/Composite;

    invoke-virtual {v3, v7}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->setComposite(Lcom/alibaba/android/user/contact/homepage/Composite;)V

    .line 119
    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->a:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/contact/homepage/Composite;

    .line 123
    .local v1, "composite":Lcom/alibaba/android/user/contact/homepage/Composite;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/Composite;->getChildren()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/Composite;->getChildren()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 124
    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/Composite;->getChildren()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/homepage/Component;

    .line 125
    .local v0, "component":Lcom/alibaba/android/user/contact/homepage/Component;
    if-eqz v0, :cond_2

    .line 126
    instance-of v7, v1, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    if-eqz v7, :cond_3

    move-object v7, v1

    .line 127
    check-cast v7, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    invoke-virtual {v7}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->getOrgId()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/alibaba/android/user/contact/utils/UserUtils;->b(J)Z

    move-result v7

    if-nez v7, :cond_3

    .line 128
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component;->getType()I

    move-result v7

    sget-object v9, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->OrgHomePage:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    invoke-virtual {v9}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->getValue()I

    move-result v9

    if-eq v7, v9, :cond_2

    .line 132
    :cond_3
    new-instance v6, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;

    invoke-direct {v6}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;-><init>()V

    .line 133
    .local v6, "subMainOrgModel":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;
    invoke-virtual {v6, v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->setComponents(Lcom/alibaba/android/user/contact/homepage/Component;)V

    .line 134
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component;->getType()I

    move-result v7

    sget-object v9, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->OrgHomePage:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    invoke-virtual {v9}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->getValue()I

    move-result v9

    if-ne v7, v9, :cond_4

    .line 135
    sget-object v7, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->OrgHomePage:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    invoke-virtual {v6, v7}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->setItemType(Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;)V

    .line 139
    :goto_2
    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->a:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 137
    :cond_4
    sget-object v7, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->SubDepartment:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    invoke-virtual {v6, v7}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->setItemType(Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;)V

    goto :goto_2

    .line 114
    .end local v0    # "component":Lcom/alibaba/android/user/contact/homepage/Component;
    .end local v6    # "subMainOrgModel":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;

    .prologue
    .line 39
    .line 3097
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->c:Lfgr;

    if-eqz v0, :cond_1

    .line 3100
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->d:Lffu;

    if-eqz v0, :cond_0

    .line 3101
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->c:Lfgr;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->d:Lffu;

    .line 3371
    iget-wide v2, v1, Lffu;->b:J

    .line 4074
    iput-wide v2, v0, Lfgr;->g:J

    .line 3103
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->c:Lfgr;

    invoke-virtual {v0}, Lfgr;->notifyDataSetChanged()V

    .line 39
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sget v2, Lezg$j;->activity_other_org_layout:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->setContentView(I)V

    .line 55
    sget v2, Lezg$l;->dt_contact_otherOrgList:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->setTitle(I)V

    .line 57
    new-instance v2, Lffu;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0}, Lffu;-><init>(ILandroid/app/Activity;)V

    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->d:Lffu;

    .line 58
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->d:Lffu;

    new-instance v3, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;)V

    .line 1110
    iput-object v3, v2, Lffu;->a:Lfft$a;

    .line 76
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->d:Lffu;

    invoke-virtual {v2}, Lffu;->a()V

    .line 78
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->b()V

    .line 79
    sget v2, Lezg$h;->activity_other_org_listview:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    .line 80
    .local v1, "listView":Landroid/support/v7/widget/RecyclerView;
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 81
    .local v0, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 82
    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 83
    new-instance v2, Lfgr;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->a:Ljava/util/List;

    invoke-direct {v2, v3, p0}, Lfgr;-><init>(Ljava/util/List;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->c:Lfgr;

    .line 84
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->c:Lfgr;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 86
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->c:Lfgr;

    new-instance v3, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity$2;-><init>(Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;)V

    .line 2032
    iput-object v3, v2, Lfgb;->d:Lfgb$b;

    .line 2159
    new-instance v2, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity$3;-><init>(Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;)V

    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->b:Landroid/content/BroadcastReceiver;

    .line 2174
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 2175
    const-string/jumbo v3, "action_org_manager_update_reddot"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2176
    const-string/jumbo v3, "action_user_org_homepage_reddot_changed"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2178
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 94
    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 183
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->d:Lffu;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->d:Lffu;

    invoke-virtual {v0}, Lffu;->i()V

    .line 185
    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->d:Lffu;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->b:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 189
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 190
    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->b:Landroid/content/BroadcastReceiver;

    .line 193
    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 194
    return-void
.end method
