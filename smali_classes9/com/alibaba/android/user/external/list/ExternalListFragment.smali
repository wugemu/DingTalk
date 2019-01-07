.class public Lcom/alibaba/android/user/external/list/ExternalListFragment;
.super Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;
.source "ExternalListFragment.java"

# interfaces
.implements Lfit;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/external/list/ExternalListFragment$b;,
        Lcom/alibaba/android/user/external/list/ExternalListFragment$a;,
        Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;
    }
.end annotation


# static fields
.field private static final o:Ljava/lang/String;


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/view/View;

.field private F:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

.field private M:Landroid/view/View;

.field private N:Landroid/view/View;

.field private O:Landroid/view/View;

.field private P:Landroid/view/ViewGroup;

.field private Q:Landroid/widget/CheckBox;

.field private R:Landroid/widget/LinearLayout;

.field private S:Landroid/content/BroadcastReceiver;

.field private T:Lfnp;

.field e:Lcom/alibaba/android/user/external/list/ExternalListFragment$a;

.field f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

.field g:I

.field h:[Ljava/lang/String;

.field i:[J

.field j:Ljava/lang/String;

.field k:Z

.field l:Z

.field m:Lfnq;

.field n:Lcom/alibaba/android/user/external/list/ExternalListFragment$b;

.field private p:I

.field private q:Z

.field private r:Z

.field private s:J

.field private t:I

.field private u:J

.field private v:[Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lhdf;

.field private z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;-><init>()V

    .line 101
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->p:I

    .line 1163
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/ExternalListFragment;)Lhdf;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->y:Lhdf;

    return-object v0
.end method

.method private a(IZ)V
    .locals 5
    .param p1, "scope"    # I
    .param p2, "reloadForContactsAdd"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 949
    iput p1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->g:I

    .line 951
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/user/external/list/ExternalListActivity;

    if-eqz v0, :cond_0

    .line 952
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/external/list/ExternalListActivity;

    iget v1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->g:I

    sget-object v3, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->MINE:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    .line 953
    invoke-virtual {v3}, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->getType()I

    move-result v3

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    .line 952
    :goto_0
    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/external/list/ExternalListActivity;->a(Z)V

    .line 956
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->l()V

    .line 957
    iput-object v4, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->j:Ljava/lang/String;

    .line 958
    invoke-direct {p0, v2, v2, p2, v4}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->a(ZIZLjava/lang/Runnable;)V

    .line 959
    return-void

    :cond_1
    move v1, v2

    .line 953
    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;J)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "orgId"    # J

    .prologue
    .line 223
    if-nez p0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v2

    .line 227
    .local v2, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "corpId":Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 229
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 230
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "url"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "https://oa.dingtalk.com/banyan.htm#/external-contact/jump?industryCode="

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->industryCode:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "&corpId="

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v1, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/ExternalListFragment;I)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 80
    .line 7945
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->a(IZ)V

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/ExternalListFragment;IZ)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 80
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/ExternalListFragment;Landroid/view/View;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 80
    .line 9024
    const-string/jumbo v0, "pref_key_show_external_stat_menu"

    invoke-static {v0, v7}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9026
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9027
    const-string/jumbo v0, "pref_key_show_external_stat_menu"

    invoke-static {v0, v6}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 9030
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->s:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v2

    .line 9032
    if-eqz v2, :cond_1

    .line 9033
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->currentServerTime()J

    move-result-wide v0

    .line 9034
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_2

    .line 9037
    :goto_0
    const-wide/32 v4, 0x5265c00

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Lcog;->q(J)Ljava/lang/String;

    move-result-object v0

    .line 9038
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v8, :cond_1

    .line 9039
    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 9040
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string/jumbo v4, "https://clouddata.dingtalkapps.com/alid/mobile/index.html?mode=day&startDate=%s&endDate=%s&corpId=%s&from=ddmsg&dd_progress=false"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    aput-object v0, v5, v7

    const/4 v0, 0x2

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v0, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_1
    return-void

    .line 9034
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/ExternalListFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/ExternalListFragment;ZILjava/lang/Runnable;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Runnable;

    .prologue
    .line 80
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->a(ZILjava/lang/Runnable;)V

    return-void
.end method

.method private a(ZIZLjava/lang/Runnable;)V
    .locals 12
    .param p1, "loadMore"    # Z
    .param p2, "pageSize"    # I
    .param p3, "reloadForContactsAdd"    # Z
    .param p4, "callback"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 668
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->F:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->m:Lfnq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->D:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 801
    .end local p2    # "pageSize":I
    :cond_0
    :goto_0
    return-void

    .line 672
    .restart local p2    # "pageSize":I
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->k:Z

    .line 673
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 674
    .local v2, "startLoadingTime":J
    iput-wide v2, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->u:J

    .line 676
    new-instance v7, Lcdc;

    invoke-direct {v7}, Lcdc;-><init>()V

    .line 677
    .local v7, "m":Lcdc;
    iget v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v7, Lcdc;->a:Ljava/lang/Integer;

    .line 678
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->h:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->h:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 679
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->h:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v7, Lcdc;->b:Ljava/util/List;

    .line 681
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->i:[J

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->i:[J

    array-length v0, v0

    if-lez v0, :cond_3

    .line 682
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->i:[J

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v7, Lcdc;->c:Ljava/util/List;

    .line 683
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->i:[J

    array-length v0, v0

    if-ge v6, v0, :cond_3

    .line 684
    iget-object v0, v7, Lcdc;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->i:[J

    aget-wide v4, v1, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 687
    .end local v6    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->j:Ljava/lang/String;

    iput-object v0, v7, Lcdc;->d:Ljava/lang/String;

    .line 688
    if-eqz p2, :cond_6

    .end local p2    # "pageSize":I
    :goto_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v7, Lcdc;->f:Ljava/lang/Integer;

    .line 689
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v7, Lcdc;->e:Ljava/lang/Integer;

    .line 690
    if-eqz p3, :cond_4

    .line 691
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v7, Lcdc;->h:Ljava/lang/Integer;

    .line 693
    :cond_4
    if-eqz p1, :cond_7

    .line 694
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->m:Lfnq;

    invoke-virtual {v0}, Lfnq;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 695
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->m:Lfnq;

    invoke-virtual {v0}, Lfnq;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v7, Lcdc;->e:Ljava/lang/Integer;

    .line 708
    :cond_5
    :goto_3
    invoke-static {}, Lfao;->a()Lezu;

    move-result-object v8

    iget-wide v10, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->s:J

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v9

    new-instance v0, Lcom/alibaba/android/user/external/list/ExternalListFragment$2;

    move-object v1, p0

    move v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/user/external/list/ExternalListFragment$2;-><init>(Lcom/alibaba/android/user/external/list/ExternalListFragment;JZLjava/lang/Runnable;)V

    const-class v1, Lcma;

    .line 800
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 708
    invoke-interface {v9, v0, v1, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v8, v10, v11, v7, v0}, Lezu;->a(JLcdc;Lcma;)V

    goto/16 :goto_0

    .line 688
    .restart local p2    # "pageSize":I
    :cond_6
    const/16 p2, 0x14

    goto :goto_2

    .line 698
    .end local p2    # "pageSize":I
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->D:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->E:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 700
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->m:Lfnq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfnq;->a(Ljava/util/List;)V

    .line 6197
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->z:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 702
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->i()V

    .line 703
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->j()V

    .line 704
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->e:Lcom/alibaba/android/user/external/list/ExternalListFragment$a;

    if-eqz v0, :cond_5

    .line 705
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->e:Lcom/alibaba/android/user/external/list/ExternalListFragment$a;

    invoke-interface {v0, v7}, Lcom/alibaba/android/user/external/list/ExternalListFragment$a;->a(Lcdc;)V

    goto :goto_3
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/ExternalListFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->k:Z

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/ExternalListFragment;[J)[J
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;
    .param p1, "x1"    # [J

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->i:[J

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/ExternalListFragment;[Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;)[Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;
    .param p1, "x1"    # [Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->v:[Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/ExternalListFragment;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->h:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/external/list/ExternalListFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->s:J

    return-wide v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/external/list/ExternalListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->x:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/external/list/ExternalListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->l:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/user/external/list/ExternalListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->w:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic c(Lcom/alibaba/android/user/external/list/ExternalListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->k:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/external/list/ExternalListFragment;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->Q:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/external/list/ExternalListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->c:Z

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/external/list/ExternalListFragment;)Lfnq;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->m:Lfnq;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/external/list/ExternalListFragment;)Lcom/alibaba/android/user/contact/view/CommonScrollListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->F:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    return-object v0
.end method

.method public static h()Z
    .locals 5

    .prologue
    .line 214
    const-class v2, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v3, "user_settings"

    const-string/jumbo v4, "external_peerCase_key"

    invoke-interface {v2, v3, v4}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 215
    .local v0, "cloudSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    const/4 v1, 0x0

    .line 216
    .local v1, "externalPeerCase":Z
    if-eqz v0, :cond_0

    const-string/jumbo v2, "true"

    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    const/4 v1, 0x1

    .line 219
    :cond_0
    return v1
.end method

.method static synthetic h(Lcom/alibaba/android/user/external/list/ExternalListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->l:Z

    return v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/external/list/ExternalListFragment;)[Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->v:[Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/user/external/list/ExternalListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->t()V

    return-void
.end method

.method static synthetic k(Lcom/alibaba/android/user/external/list/ExternalListFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->u:J

    return-wide v0
.end method

.method static synthetic l(Lcom/alibaba/android/user/external/list/ExternalListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->x:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/user/external/list/ExternalListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->w:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/user/external/list/ExternalListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .prologue
    .line 80
    iget v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->g:I

    return v0
.end method

.method static synthetic o(Lcom/alibaba/android/user/external/list/ExternalListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .prologue
    .line 80
    iget v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->t:I

    return v0
.end method

.method static synthetic o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/user/external/list/ExternalListFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->D:Landroid/widget/TextView;

    return-object v0
.end method

.method private p()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, -0x1

    const/16 v2, 0x8

    const/4 v5, 0x0

    .line 274
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 275
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->B:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_search_warn_result_no_contact:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 287
    :goto_0
    invoke-static {}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 288
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->v()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 289
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->v()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->g:I

    sget-object v1, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->MINE:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    invoke-virtual {v1}, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->getType()I

    move-result v1

    if-ne v0, v1, :cond_9

    iget-boolean v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->q:Z

    if-eqz v0, :cond_9

    .line 5236
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->y:Lhdf;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->A:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 5237
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->createRuntimeEntry(Landroid/content/Context;)Lhdf;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->y:Lhdf;

    .line 5238
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->empty_web_view_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5239
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->y:Lhdf;

    invoke-interface {v1}, Lhdf;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5240
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->y:Lhdf;

    invoke-interface {v1}, Lhdf;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5242
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->y:Lhdf;

    invoke-interface {v0}, Lhdf;->handleCreate()V

    .line 5243
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/external/list/ExternalListFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment$1;-><init>(Lcom/alibaba/android/user/external/list/ExternalListFragment;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 5251
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->s:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 5252
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->corpId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5253
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->y:Lhdf;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "https://oa.dingtalk.com/banyan.htm#/external-contact/index?corpId="

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->corpId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "&industryCode="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->industryCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x4

    const-string/jumbo v3, "&isOpen="

    aput-object v3, v2, v0

    const/4 v3, 0x5

    invoke-static {}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "1"

    :goto_2
    aput-object v0, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lhdf;->loadUrl(Ljava/lang/String;)V

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->y:Lhdf;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->y:Lhdf;

    invoke-interface {v0}, Lhdf;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->y:Lhdf;

    invoke-interface {v0}, Lhdf;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 306
    :cond_2
    :goto_3
    return-void

    .line 276
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->k()Z

    move-result v0

    if-nez v0, :cond_4

    .line 277
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->B:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_external_filter_no_contacts:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 279
    :cond_4
    iget v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->g:I

    sget-object v1, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->MINE:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    invoke-virtual {v1}, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->getType()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 281
    iget v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->g:I

    sget-object v1, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->SHARE_ME:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    invoke-virtual {v1}, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->getType()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 282
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->B:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_external_no_share_contacts:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 284
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->B:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_external_no_contacts:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 291
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 294
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 5253
    :cond_8
    const-string/jumbo v0, "0"

    goto :goto_2

    .line 302
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->y:Lhdf;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->y:Lhdf;

    invoke-interface {v0}, Lhdf;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->y:Lhdf;

    invoke-interface {v0}, Lhdf;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method static synthetic q(Lcom/alibaba/android/user/external/list/ExternalListFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->E:Landroid/view/View;

    return-object v0
.end method

.method private q()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->O:Landroid/view/View;

    if-nez v1, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lezg$h;->ll_search_container:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 430
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lezg$j;->external_list_filter_button:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->O:Landroid/view/View;

    .line 432
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->O:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/user/external/list/ExternalListFragment$12;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment$12;-><init>(Lcom/alibaba/android/user/external/list/ExternalListFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->O:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private r()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->O:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lezg$h;->ll_search_container:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 447
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->O:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->O:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 449
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->O:Landroid/view/View;

    .line 452
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method static synthetic r(Lcom/alibaba/android/user/external/list/ExternalListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->g()V

    return-void
.end method

.method private s()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, -0x1

    .line 455
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lezg$h;->above_search_container:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->P:Landroid/view/ViewGroup;

    .line 456
    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->P:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 457
    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->P:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 459
    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->P:Landroid/view/ViewGroup;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/high16 v5, 0x42440000    # 49.0f

    invoke-static {v4, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->P:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->ui_common_cell_bg_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 461
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 462
    .local v1, "line":Landroid/view/View;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 463
    .local v0, "flp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 464
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 465
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$e;->ui_common_level1_line_bg_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 466
    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->P:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 468
    .end local v0    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "line":Landroid/view/View;
    :cond_0
    return-void
.end method

.method static synthetic s(Lcom/alibaba/android/user/external/list/ExternalListFragment;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 80
    .line 8309
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->A:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8310
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8311
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->F:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->setVisibility(I)V

    .line 8315
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->N:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 8316
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->N:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8318
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->p()V

    .line 80
    return-void

    .line 8313
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->F:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private t()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x0

    const/4 v9, -0x1

    .line 471
    iget-object v3, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->R:Landroid/widget/LinearLayout;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->v:[Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->v:[Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 472
    iget-object v3, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->P:Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 473
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->R:Landroid/widget/LinearLayout;

    .line 474
    iget-object v3, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->v:[Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    array-length v3, v3

    if-le v3, v7, :cond_0

    .line 475
    iget-object v3, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->R:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 481
    iget-object v3, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->v:[Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    array-length v3, v3

    new-array v1, v3, [Ljava/lang/String;

    .line 484
    .local v1, "tabLabel":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->v:[Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 485
    iget-object v3, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->v:[Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->access$900(Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 484
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 477
    .end local v0    # "i":I
    .end local v1    # "tabLabel":[Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->R:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 490
    .restart local v0    # "i":I
    .restart local v1    # "tabLabel":[Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->v:[Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    array-length v3, v3

    if-le v3, v7, :cond_4

    .line 491
    new-instance v2, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;-><init>(Landroid/content/Context;)V

    .line 495
    .local v2, "tabView":Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;
    :goto_2
    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->setItems([Ljava/lang/String;)V

    .line 496
    new-instance v3, Lcom/alibaba/android/user/external/list/ExternalListFragment$13;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment$13;-><init>(Lcom/alibaba/android/user/external/list/ExternalListFragment;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->setOnTabSwitchListener(Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView$b;)V

    .line 515
    iget-object v3, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 516
    iget-object v3, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->P:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->R:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const/high16 v8, 0x42400000    # 48.0f

    invoke-static {v7, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v6, v9, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lcom/alibaba/android/user/external/list/ExternalListActivity;

    if-eqz v3, :cond_3

    .line 519
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/user/external/list/ExternalListActivity;

    iget v5, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->g:I

    sget-object v6, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->MINE:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    .line 520
    invoke-virtual {v6}, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->getType()I

    move-result v6

    if-ne v5, v6, :cond_2

    const/4 v4, 0x1

    .line 519
    :cond_2
    invoke-virtual {v3, v4}, Lcom/alibaba/android/user/external/list/ExternalListActivity;->a(Z)V

    .line 524
    .end local v0    # "i":I
    .end local v1    # "tabLabel":[Ljava/lang/String;
    .end local v2    # "tabView":Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;
    :cond_3
    return-void

    .line 493
    .restart local v0    # "i":I
    .restart local v1    # "tabLabel":[Ljava/lang/String;
    :cond_4
    new-instance v2, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;-><init>(Landroid/content/Context;)V

    .restart local v2    # "tabView":Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;
    goto :goto_2
.end method

.method static synthetic t(Lcom/alibaba/android/user/external/list/ExternalListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->i()V

    return-void
.end method

.method private u()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 527
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->P:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->P:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 529
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->P:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 530
    iput-object v2, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->P:Landroid/view/ViewGroup;

    .line 531
    iput-object v2, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->R:Landroid/widget/LinearLayout;

    .line 533
    :cond_0
    return-void
.end method

.method static synthetic u(Lcom/alibaba/android/user/external/list/ExternalListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->j()V

    return-void
.end method

.method static synthetic v(Lcom/alibaba/android/user/external/list/ExternalListFragment;)Lcom/alibaba/android/user/external/list/ExternalListFragment$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->e:Lcom/alibaba/android/user/external/list/ExternalListFragment$a;

    return-object v0
.end method

.method private v()Z
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic w(Lcom/alibaba/android/user/external/list/ExternalListFragment;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->h:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic x(Lcom/alibaba/android/user/external/list/ExternalListFragment;)[J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->i:[J

    return-object v0
.end method


# virtual methods
.method public final H()V
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->m:Lfnq;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->m:Lfnq;

    invoke-virtual {v0}, Lfnq;->notifyDataSetChanged()V

    .line 971
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->j()V

    .line 973
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "keyWord"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 963
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->j:Ljava/lang/String;

    .line 6804
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->a(ZILjava/lang/Runnable;)V

    .line 965
    return-void
.end method

.method a(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 827
    .local p1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 828
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 829
    .local v0, "o":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v1

    .line 830
    .local v1, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v3, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {v3, v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->isHasSelected(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    .line 831
    invoke-virtual {v3, v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->isRequestSelect(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    .line 832
    invoke-virtual {v3, v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->isDisable(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->r:Z

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->subChannelStatus:Ljava/lang/Integer;

    .line 833
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    .line 834
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {v3, v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->addChooseObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    goto :goto_0

    .line 838
    .end local v0    # "o":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .end local v1    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->m:Lfnq;

    invoke-virtual {v2}, Lfnq;->notifyDataSetChanged()V

    .line 839
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->j()V

    .line 840
    return-void
.end method

.method a(ZILjava/lang/Runnable;)V
    .locals 1
    .param p1, "loadMore"    # Z
    .param p2, "pageSize"    # I
    .param p3, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 664
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->a(ZIZLjava/lang/Runnable;)V

    .line 665
    return-void
.end method

.method public final b(Z)V
    .locals 3
    .param p1, "isSearch"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1065
    if-eqz p1, :cond_2

    .line 1066
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->O:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->O:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1069
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->P:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1070
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->P:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1080
    :cond_1
    :goto_0
    return-void

    .line 1073
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->O:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1074
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->O:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1076
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->P:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1077
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->P:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 977
    return-void
.end method

.method g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 201
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->n:Lcom/alibaba/android/user/external/list/ExternalListFragment$b;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->n:Lcom/alibaba/android/user/external/list/ExternalListFragment$b;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->m:Lfnq;

    invoke-virtual {v1}, Lfnq;->getCount()I

    invoke-interface {v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment$b;->b()V

    .line 204
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->n:Lcom/alibaba/android/user/external/list/ExternalListFragment$b;

    invoke-interface {v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->m:Lfnq;

    invoke-virtual {v0}, Lfnq;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->z:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method i()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 322
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->A:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->F:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->N:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->N:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 327
    :cond_0
    return-void
.end method

.method j()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 330
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->M:Landroid/view/View;

    if-nez v0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-static {}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->v()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->g:I

    sget-object v1, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->MINE:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    invoke-virtual {v1}, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->getType()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->m:Lfnq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->m:Lfnq;

    invoke-virtual {v0}, Lfnq;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->m:Lfnq;

    invoke-virtual {v0}, Lfnq;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->M:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->M:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->i:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->i:[J

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->h:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->h:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 615
    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->x:Ljava/util/ArrayList;

    .line 616
    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->i:[J

    .line 617
    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->w:Ljava/util/ArrayList;

    .line 618
    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->h:[Ljava/lang/String;

    .line 619
    return-void
.end method

.method public final m()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 804
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->a(ZILjava/lang/Runnable;)V

    .line 805
    return-void
.end method

.method public final n()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 916
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/label_select.html"

    new-instance v2, Lcom/alibaba/android/user/external/list/ExternalListFragment$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment$5;-><init>(Lcom/alibaba/android/user/external/list/ExternalListFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 942
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 174
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 176
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    const-class v1, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->a(Ljava/lang/Class;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    .line 2193
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->z:Landroid/view/View;

    .line 2259
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->list_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->A:Landroid/view/View;

    .line 2260
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->empty_add_text_tip_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->B:Landroid/widget/TextView;

    .line 2261
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->empty_add_text_link:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->C:Landroid/widget/TextView;

    .line 2262
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->C:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "<u>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lezg$l;->dt_external_see_peerCsae:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "></u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2263
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->C:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/user/external/list/ExternalListFragment$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment$7;-><init>(Lcom/alibaba/android/user/external/list/ExternalListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2270
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->p()V

    .line 2341
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lezg$j;->external_list_header_layout:I

    invoke-static {v0, v1, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2343
    sget v0, Lezg$h;->data_desc:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->D:Landroid/widget/TextView;

    .line 2344
    sget v0, Lezg$h;->data_desc_cancel:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->E:Landroid/view/View;

    .line 2345
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->E:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/user/external/list/ExternalListFragment$8;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment$8;-><init>(Lcom/alibaba/android/user/external/list/ExternalListFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2353
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "intent_key_embed_in_scroll_view"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 2355
    if-eqz v8, :cond_5

    .line 2356
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->I:Landroid/view/View;

    sget v2, Lezg$h;->list_view_scroll:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->F:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    .line 2357
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->I:Landroid/view/View;

    sget v2, Lezg$h;->list_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2362
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->F:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->addHeaderView(Landroid/view/View;)V

    .line 2363
    iget v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->p:I

    if-nez v0, :cond_1

    .line 2364
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->header_external_list_all_check:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->N:Landroid/view/View;

    .line 2365
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->N:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/external/list/ExternalListFragment$9;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment$9;-><init>(Lcom/alibaba/android/user/external/list/ExternalListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2377
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->N:Landroid/view/View;

    sget v1, Lezg$h;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->Q:Landroid/widget/CheckBox;

    .line 2378
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->F:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->N:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->addHeaderView(Landroid/view/View;)V

    .line 2380
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lezg$j;->external_list_fragment_mine_footer:I

    invoke-static {v0, v1, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->M:Landroid/view/View;

    .line 2381
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->M:Landroid/view/View;

    sget v1, Lezg$h;->link_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "<u>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lezg$l;->dt_external_see_peerCsae:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "></u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2382
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->M:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2383
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->M:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/external/list/ExternalListFragment$10;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment$10;-><init>(Lcom/alibaba/android/user/external/list/ExternalListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2390
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->F:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->M:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->addFooterView(Landroid/view/View;)V

    .line 2391
    new-instance v1, Lfnq;

    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->p:I

    iget-object v4, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    iget-boolean v5, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->r:Z

    iget-wide v6, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->s:J

    invoke-direct/range {v1 .. v7}, Lfnq;-><init>(Landroid/app/Activity;ILcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;ZJ)V

    iput-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->m:Lfnq;

    .line 2392
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->Q:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    .line 2393
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->m:Lfnq;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->Q:Landroid/widget/CheckBox;

    .line 3058
    iput-object v1, v0, Lfnq;->a:Landroid/widget/CheckBox;

    .line 2395
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->F:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->m:Lfnq;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2396
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->F:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    new-instance v1, Lcom/alibaba/android/user/external/list/ExternalListFragment$11;

    invoke-direct {v1, p0, v8}, Lcom/alibaba/android/user/external/list/ExternalListFragment$11;-><init>(Lcom/alibaba/android/user/external/list/ExternalListFragment;Z)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 183
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->s()V

    .line 185
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->q()V

    .line 3862
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->S:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_3

    .line 3863
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "action_key_select_labels"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3864
    const-string/jumbo v1, "com.workapp.org.external.delete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3865
    const-string/jumbo v1, "com.workapp.org.external.update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3866
    const-string/jumbo v1, "com.workapp.org.external.added"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3867
    new-instance v1, Lcom/alibaba/android/user/external/list/ExternalListFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment$4;-><init>(Lcom/alibaba/android/user/external/list/ExternalListFragment;)V

    iput-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->S:Landroid/content/BroadcastReceiver;

    .line 3905
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->S:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 187
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "load_data_on_init"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4582
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->m()V

    .line 4631
    invoke-static {}, Lfao;->a()Lezu;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->s:J

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v4, Lcom/alibaba/android/user/external/list/ExternalListFragment$14;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment$14;-><init>(Lcom/alibaba/android/user/external/list/ExternalListFragment;)V

    const-class v5, Lcma;

    .line 4660
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 4631
    invoke-interface {v0, v4, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v1, v2, v3, v0}, Lezu;->a(JLcma;)V

    .line 190
    :cond_4
    return-void

    .line 2359
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->I:Landroid/view/View;

    sget v2, Lezg$h;->list_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->F:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    .line 2360
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->I:Landroid/view/View;

    sget v2, Lezg$h;->list_view_scroll:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2162
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "choose_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->p:I

    .line 2163
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "external_list_show_add_button"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->q:Z

    .line 2164
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "external_list_show_channel_focus_states"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->r:Z

    .line 2165
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "display_enterprise_oid"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->s:J

    .line 2166
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "external_list_init_scope"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->g:I

    .line 2167
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "external_list_init_followers"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->h:[Ljava/lang/String;

    .line 2168
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "external_list_init_labels"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->i:[J

    .line 2169
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "key_org_role"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->t:I

    .line 159
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 11
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 981
    const/4 v2, 0x0

    .line 982
    .local v2, "order":I
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    instance-of v7, v7, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    if-nez v7, :cond_1

    .line 983
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcms;->c()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 984
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    add-int/lit8 v2, v2, 0x1

    sget v10, Lezg$l;->experience:I

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 985
    .local v1, "menuItem":Landroid/view/MenuItem;
    sget v7, Lezg$l;->icon_question:I

    sget v8, Lezg$e;->ui_common_theme_text_color:I

    sget v9, Lezg$f;->contact_action_bar_menu_icon_size:I

    sget v10, Lezg$f;->contact_action_bar_menu_icon_size:I

    invoke-static {v7, v8, v9, v10}, Lfxp;->a(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 987
    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 990
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    invoke-static {}, Lfvv;->a()Lfvv;

    move-result-object v7

    const-string/jumbo v8, "external_contact_stat"

    .line 7217
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lfvv;->a(Ljava/lang/String;ZZ)Z

    move-result v7

    .line 990
    if-eqz v7, :cond_1

    .line 991
    invoke-static {}, Lcms;->c()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 992
    const/4 v7, 0x0

    const/4 v8, 0x3

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "order":I
    .local v3, "order":I
    sget v9, Lezg$l;->dt_external_contact_list_stat:I

    invoke-virtual {p0, v9}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v7, v8, v2, v9}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    .line 993
    .local v5, "statMenu":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lezg$j;->layout_external_contact_menu_statistic:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 995
    .local v6, "view":Landroid/view/View;
    sget v7, Lezg$h;->view_red_dot:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 997
    .local v4, "redDot":Landroid/view/View;
    const-string/jumbo v7, "pref_key_show_external_stat_menu"

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 998
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1003
    :goto_0
    new-instance v7, Lcom/alibaba/android/user/external/list/ExternalListFragment$6;

    invoke-direct {v7, p0, v4}, Lcom/alibaba/android/user/external/list/ExternalListFragment$6;-><init>(Lcom/alibaba/android/user/external/list/ExternalListFragment;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1010
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 1011
    const/4 v7, 0x2

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    move v2, v3

    .line 1014
    .end local v3    # "order":I
    .end local v4    # "redDot":Landroid/view/View;
    .end local v5    # "statMenu":Landroid/view/MenuItem;
    .end local v6    # "view":Landroid/view/View;
    .restart local v2    # "order":I
    :cond_1
    iget-boolean v7, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->q:Z

    if-eqz v7, :cond_2

    .line 1015
    const/4 v7, 0x0

    const/4 v8, 0x2

    sget v9, Lezg$l;->action_add:I

    invoke-interface {p1, v7, v8, v2, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1016
    .local v0, "item2":Landroid/view/MenuItem;
    const/4 v7, 0x2

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1018
    .end local v0    # "item2":Landroid/view/MenuItem;
    :cond_2
    return-void

    .line 1000
    .end local v2    # "order":I
    .restart local v3    # "order":I
    .restart local v4    # "redDot":Landroid/view/View;
    .restart local v5    # "statMenu":Landroid/view/MenuItem;
    .restart local v6    # "view":Landroid/view/View;
    :cond_3
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->y:Lhdf;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->y:Lhdf;

    invoke-interface {v0}, Lhdf;->handleDestroy()V

    .line 568
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->y:Lhdf;

    .line 570
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onDestroy()V

    .line 571
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 575
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->u()V

    .line 576
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->r()V

    .line 5910
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->S:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 5911
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->S:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 578
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onDestroyView()V

    .line 579
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .prologue
    .line 553
    if-eqz p1, :cond_0

    .line 554
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->u()V

    .line 555
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->r()V

    .line 561
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onHiddenChanged(Z)V

    .line 562
    return-void

    .line 557
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->s()V

    .line 558
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->q()V

    .line 559
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->t()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1047
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 1048
    const-string/jumbo v0, "contact_exter_list_add_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 1049
    iget v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->g:I

    sget-object v1, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->MINE:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    invoke-virtual {v1}, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->getType()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->m:Lfnq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->m:Lfnq;

    invoke-virtual {v0}, Lfnq;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->m:Lfnq;

    invoke-virtual {v0}, Lfnq;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1050
    :cond_0
    const-string/jumbo v0, "contact_exter_firstadd_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 1052
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->T:Lfnp;

    if-nez v0, :cond_2

    .line 1053
    new-instance v0, Lfnp;

    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->s:J

    invoke-direct {v0, v1, v2, v3}, Lfnp;-><init>(Landroid/app/Activity;J)V

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->T:Lfnp;

    .line 1055
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->T:Lfnp;

    invoke-virtual {v0}, Lfnp;->a()V

    .line 1060
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1056
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1057
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "https://csmobile.alipay.com/router.htm?scene=dd_khtxl"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->y:Lhdf;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->y:Lhdf;

    invoke-interface {v0}, Lhdf;->handlePause()V

    .line 540
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onPause()V

    .line 541
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->y:Lhdf;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->y:Lhdf;

    invoke-interface {v0}, Lhdf;->handleResume()V

    .line 548
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onResume()V

    .line 549
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 152
    sget v0, Lezg$j;->external_list_fragment:I

    return v0
.end method
