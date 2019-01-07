.class public Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "MultiOrgFragment.java"

# interfaces
.implements Lfvk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/profile/v2/MultiOrgFragment$a;
    }
.end annotation


# instance fields
.field a:Lcom/alibaba/android/user/profile/v2/MultiOrgFragment$a;

.field b:I

.field private c:Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;

.field private d:Lcom/alibaba/android/user/profile/v2/UserInfoFragment;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 224
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;
    .param p1, "x1"    # J

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->f:Ljava/util/List;

    return-object v0
.end method

.method private a(Ljava/util/List;I)V
    .locals 3
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "userInfoItemObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;>;"
    const/4 v1, 0x0

    .line 135
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->d:Lcom/alibaba/android/user/profile/v2/UserInfoFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->c:Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->c:Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->setSelect(I)V

    .line 137
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->d:Lcom/alibaba/android/user/profile/v2/UserInfoFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->a(Ljava/util/List;)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->a:Lcom/alibaba/android/user/profile/v2/MultiOrgFragment$a;

    if-eqz v0, :cond_1

    .line 140
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->a:Lcom/alibaba/android/user/profile/v2/MultiOrgFragment$a;

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->g:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->g:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment$a;->a(J)V

    .line 142
    :cond_1
    return-void

    .line 140
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->g:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->h:J

    return-wide v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;)Lcom/alibaba/android/user/profile/v2/UserInfoFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->d:Lcom/alibaba/android/user/profile/v2/UserInfoFragment;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;)Lcom/alibaba/android/user/profile/v2/MultiOrgFragment$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->a:Lcom/alibaba/android/user/profile/v2/MultiOrgFragment$a;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->a(Ljava/util/List;I)V

    .line 126
    return-void
.end method

.method public final a(Ljava/util/List;IJ)V
    .locals 3
    .param p2, "position"    # I
    .param p3, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "userInfoItemObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;>;"
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->d:Lcom/alibaba/android/user/profile/v2/UserInfoFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->c:Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->c:Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;

    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->setSelect(I)V

    .line 148
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->d:Lcom/alibaba/android/user/profile/v2/UserInfoFragment;

    invoke-virtual {v0, p1, p3, p4}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->a(Ljava/util/List;J)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->a:Lcom/alibaba/android/user/profile/v2/MultiOrgFragment$a;

    if-eqz v0, :cond_1

    .line 151
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->a:Lcom/alibaba/android/user/profile/v2/MultiOrgFragment$a;

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->g:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->g:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment$a;->a(J)V

    .line 153
    :cond_1
    return-void

    .line 151
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/util/List;J)V
    .locals 1
    .param p2, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->a(Ljava/util/List;I)V

    .line 131
    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "orgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "orgInfoList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;>;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 113
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->e:Ljava/util/List;

    .line 114
    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->f:Ljava/util/List;

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->c:Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->e:Ljava/util/List;

    .line 1102
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 1103
    iget v1, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->b:I

    if-ne v1, v2, :cond_2

    .line 1104
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->user_profile_org_tip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1091
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1092
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->c:Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->setItems([Ljava/lang/String;)V

    .line 121
    :cond_1
    return-void

    .line 1105
    :cond_2
    iget v1, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1106
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->user_profile_crm_tip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "orgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->g:Ljava/util/Map;

    .line 207
    return-void
.end method

.method public final c()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->g:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 162
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->g:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 163
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 166
    .local v1, "oid":Ljava/lang/Long;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->h:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 167
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2033
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 168
    .local v2, "position":I
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 169
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-wide v4, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->h:J

    invoke-virtual {p0, v3, v2, v4, v5}, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->a(Ljava/util/List;IJ)V

    goto :goto_0
.end method

.method public final d()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 178
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->f:Ljava/util/List;

    if-nez v3, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v2

    .line 181
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 182
    .local v0, "singleOrgInfo":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;>;"
    if-eqz v0, :cond_2

    .line 186
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    .line 187
    .local v1, "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    if-eqz v1, :cond_3

    iget-boolean v5, v1, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->showDingCardGuideTip:Z

    if-eqz v5, :cond_3

    .line 188
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->d:Lcom/alibaba/android/user/profile/v2/UserInfoFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->d:Lcom/alibaba/android/user/profile/v2/UserInfoFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->f()I

    move-result v0

    goto :goto_0
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->d:Lcom/alibaba/android/user/profile/v2/UserInfoFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->d:Lcom/alibaba/android/user/profile/v2/UserInfoFragment;

    .line 2219
    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->a:Ljava/util/List;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 56
    new-instance v2, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;

    invoke-direct {v2}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->d:Lcom/alibaba/android/user/profile/v2/UserInfoFragment;

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->getChildFragmentManager()Lcn;

    move-result-object v0

    .line 58
    .local v0, "fragmentManager":Lcn;
    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 59
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    sget v2, Lezg$h;->profile_info_fragment:I

    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->d:Lcom/alibaba/android/user/profile/v2/UserInfoFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 61
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->I:Landroid/view/View;

    sget v3, Lezg$h;->tab_org:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;

    iput-object v2, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->c:Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;

    .line 62
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->c:Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;

    new-instance v3, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment$1;-><init>(Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->setOnTabSwitchListener(Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView$b;)V

    .line 80
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->I:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->uidic_global_color_6_5:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 81
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->I:Landroid/view/View;

    return-object v2
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 216
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onPause()V

    .line 217
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 211
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onResume()V

    .line 212
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 221
    sget v0, Lezg$j;->multi_org_fragment_layout:I

    return v0
.end method
