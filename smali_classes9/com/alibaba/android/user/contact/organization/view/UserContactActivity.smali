.class public Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;
.super Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;
.source "UserContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lfio;
.implements Lfip;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:I

.field private F:I

.field private G:Ljava/lang/String;

.field private H:J

.field private I:J

.field private J:I

.field private K:J

.field private L:Z

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:J

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:Z

.field private Y:Z

.field private Z:Z

.field private aA:Landroid/content/BroadcastReceiver;

.field private aB:Lcjo$a;

.field private aC:Landroid/view/View$OnClickListener;

.field private aa:Z

.field private ab:Z

.field private ac:Z

.field private ad:Z

.field private ae:Z

.field private af:Z

.field private ag:Z

.field private ah:Z

.field private ai:Ljava/io/Serializable;

.field private aj:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

.field private ak:I

.field private al:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

.field private am:Ljava/lang/String;

.field private an:Z

.field private ao:Z

.field private ap:Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;

.field private aq:Landroid/view/View;

.field private ar:Landroid/view/View;

.field private as:Landroid/widget/Button;

.field private at:Landroid/widget/TextView;

.field private au:Landroid/widget/RelativeLayout;

.field private av:Landroid/view/View;

.field private aw:I

.field private ax:Ljava/lang/String;

.field private ay:Ljava/lang/String;

.field private az:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

.field protected e:Lcoi;

.field public f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

.field public g:Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

.field private final h:I

.field private final i:I

.field private j:Lfkn;

.field private k:Landroid/support/v4/app/Fragment;

.field private l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

.field private m:Lfjl;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;"
        }
    .end annotation
.end field

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:I

.field private u:Z

.field private v:I

.field private w:I

.field private x:I

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 136
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;-><init>()V

    .line 142
    iput v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->h:I

    .line 143
    iput v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->i:I

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->n:Ljava/util/List;

    .line 177
    iput v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    .line 178
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->q:Z

    .line 179
    iput-boolean v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->r:Z

    .line 180
    iput-boolean v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->s:Z

    .line 189
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->B:Ljava/lang/String;

    .line 195
    iput-wide v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->H:J

    .line 196
    iput-wide v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->I:J

    .line 197
    iput v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->J:I

    .line 198
    iput-wide v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->K:J

    .line 199
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->L:Z

    .line 207
    iput-boolean v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->T:Z

    .line 208
    iput-boolean v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->U:Z

    .line 209
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->V:Z

    .line 210
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->W:Z

    .line 211
    iput-boolean v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->X:Z

    .line 212
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->Y:Z

    .line 214
    iput-boolean v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->aa:Z

    .line 215
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ab:Z

    .line 216
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ac:Z

    .line 217
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ad:Z

    .line 218
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ae:Z

    .line 219
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->af:Z

    .line 220
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ag:Z

    .line 221
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ah:Z

    .line 225
    iput v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ak:I

    .line 383
    new-instance v0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$12;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$12;-><init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->aA:Landroid/content/BroadcastReceiver;

    .line 1705
    new-instance v0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$7;-><init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->aC:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;
    .param p1, "x1"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;J)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;
    .param p1, "x1"    # J

    .prologue
    .line 136
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->K:J

    return-wide v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->G:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->M:Ljava/lang/String;

    return-object p1
.end method

.method private static a(J)Ljava/util/List;
    .locals 6
    .param p0, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 879
    const-wide/16 v4, 0x0

    cmp-long v3, p0, v4

    if-lez v3, :cond_1

    .line 880
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    .line 881
    .local v2, "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v2, :cond_1

    .line 882
    iget-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 883
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 884
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 885
    .local v1, "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v4, v4, p0

    if-nez v4, :cond_0

    .line 886
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    .line 892
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    .end local v1    # "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v2    # "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1628
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1629
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p0, :cond_1

    .line 1630
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1631
    .local v1, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v1, :cond_0

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 1632
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1636
    .end local v1    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_1
    return-object v0
.end method

.method private a(Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;)V
    .locals 11
    .param p1, "detailFragment"    # Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
    .param p2, "newText"    # Ljava/lang/String;
    .param p3, "filterObject"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1003
    const-wide/16 v6, 0x0

    .line 1005
    .local v6, "orgId":J
    iget-object v8, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    instance-of v8, v8, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    if-eqz v8, :cond_3

    .line 1006
    iget-wide v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->H:J

    .line 1007
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "HomeContactSearchFragment"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "_"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1015
    .local v4, "key":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    .line 1016
    .local v2, "contactSearchKind":I
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    .line 1017
    const/16 v2, 0x40

    .line 1020
    :cond_0
    iget-object v8, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->e:Lcoi;

    .line 10155
    iget-object v8, v8, Lcoi;->a:Ljava/util/HashMap;

    .line 1020
    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 1021
    .local v3, "fragment":Landroid/support/v4/app/Fragment;
    if-nez v3, :cond_2

    .line 1022
    const-class v8, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {p0, v8}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Ljava/lang/Class;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 1023
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1024
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v8, "choose_mode"

    iget v9, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1027
    const-string/jumbo v8, "hide_org_external"

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1028
    const-string/jumbo v8, "show_label_contact"

    iget-boolean v9, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->r:Z

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1029
    const-string/jumbo v8, "show_org_relation_contact"

    iget-boolean v9, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->s:Z

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1030
    const-string/jumbo v8, "choose_enterprise_oid"

    invoke-virtual {v1, v8, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1031
    const-string/jumbo v8, "intent_key_contact_search_kind_flag"

    invoke-virtual {v1, v8, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1032
    const-string/jumbo v8, "im_navigator_from"

    iget-object v9, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ay:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    const/4 v5, 0x3

    .line 1035
    .local v5, "searchTabFlag":I
    iget-boolean v8, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->q:Z

    if-nez v8, :cond_1

    .line 1036
    const/16 v5, 0x23

    .line 1038
    :cond_1
    const-string/jumbo v8, "intent_key_search_tab_show_flag"

    invoke-virtual {v1, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1039
    const-string/jumbo v8, "intent_key_search_show_global_homepage"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1040
    const-string/jumbo v8, "intent_key_search_entry"

    sget-object v9, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->CONTACT_PICKER:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v9}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1041
    invoke-virtual {p1, v1}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1042
    move-object v3, p1

    .line 1044
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v5    # "searchTabFlag":I
    :cond_2
    iget-object v8, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->e:Lcoi;

    .line 11082
    const/4 v9, 0x0

    invoke-virtual {v8, v4, v3, v9}, Lcoi;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;Z)V

    .line 1045
    iput-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    move-object v0, v3

    .line 1047
    check-cast v0, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    .line 1048
    .local v0, "absSearchFragment":Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
    invoke-virtual {v0, p3}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;)V

    .line 1049
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->a(Ljava/lang/String;)V

    .line 1050
    return-void

    .line 1008
    .end local v0    # "absSearchFragment":Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
    .end local v2    # "contactSearchKind":I
    .end local v3    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v4    # "key":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    instance-of v8, v8, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;

    if-eqz v8, :cond_4

    .line 1009
    iget-wide v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->I:J

    .line 1012
    :cond_4
    const-string/jumbo v4, "HomeContactSearchFragment"

    .restart local v4    # "key":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 136
    .line 25069
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$13;-><init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 136
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 136
    .line 26297
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "groupchat_create_success"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 26299
    if-eqz p1, :cond_0

    .line 26302
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "name_card_forward"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26303
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.conversation.forward.NAMECARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26304
    const-string/jumbo v1, "conversation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 26305
    const-string/jumbo v1, "conversation_id"

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26306
    const-string/jumbo v1, "intent_key_menu_seed"

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "intent_key_menu_seed"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 26307
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 26308
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->finish()V

    .line 26342
    :cond_0
    :goto_0
    return-void

    .line 26309
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_jsapi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26310
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.create.group.Action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26311
    const-string/jumbo v1, "conversation_id"

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26312
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 26313
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "msg_forward"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26314
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "message_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26316
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.conversation.FORWARD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26317
    const-string/jumbo v2, "conversation_id"

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26318
    const-string/jumbo v2, "message_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26319
    const-string/jumbo v0, "intent_key_menu_seed"

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "intent_key_menu_seed"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 26320
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 26321
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_share"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26322
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_share"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26323
    const-string/jumbo v1, "conversation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 26324
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 26325
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "choose_enterprise_group_conversation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 26326
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "choose_enterprise_group_conversation"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26327
    const-string/jumbo v1, "conversation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 26328
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 26329
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_space"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26331
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_orgchat_create_success"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 26333
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_space_create_conversation"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26334
    const-string/jumbo v1, "conversation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 26335
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 26336
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_mail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 26337
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_share"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26338
    const-string/jumbo v1, "conversation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 26339
    const-string/jumbo v1, "from_mail"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 26340
    const-string/jumbo v1, "choose_mode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26341
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 26343
    :cond_7
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ay:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, v2, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;ZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 136
    .line 22852
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->e:Lcoi;

    .line 23155
    iget-object v0, v0, Lcoi;->a:Ljava/util/HashMap;

    .line 22852
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 22853
    if-nez v0, :cond_0

    .line 22854
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 22855
    const-string/jumbo v0, "choose_mode"

    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 22856
    const-string/jumbo v0, "hide_org_external"

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->q:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 22857
    const-string/jumbo v0, "external_list_show_add_button"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 22858
    const-string/jumbo v0, "show_label_contact"

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->r:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 22859
    const-string/jumbo v0, "show_org_relation_contact"

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->s:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 22860
    const-string/jumbo v0, "node"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 22861
    const-string/jumbo v0, "display_enterprise_oid"

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->H:J

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 22862
    const-string/jumbo v0, "im_navigator_from"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ay:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22863
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->j:Lfkn;

    invoke-virtual {v0, p2}, Lfkn;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 22864
    if-nez v0, :cond_0

    .line 22865
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->j:Lfkn;

    .line 24052
    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lfkn;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lfip;Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 22868
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->e:Lcoi;

    .line 24082
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v0, v2}, Lcoi;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;Z)V

    .line 22869
    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    .line 22870
    iput-object p2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ax:Ljava/lang/String;

    .line 22872
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->s()V

    .line 136
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;Ljava/util/List;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 136
    .line 25167
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25171
    :cond_0
    :goto_0
    return-void

    .line 25170
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 25171
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->b(Ljava/util/List;)V

    goto :goto_0

    .line 25173
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25174
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 25175
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 25177
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->showLoadingDialog()V

    .line 25181
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$16;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$16;-><init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;Ljava/util/ArrayList;)V

    const-class v4, Lcma;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v2, v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;Ljava/util/List;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 12
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 136
    .line 27223
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27224
    :cond_0
    :goto_0
    return-void

    .line 27226
    :cond_1
    const/4 v1, 0x0

    .line 27227
    const/4 v0, 0x0

    .line 27228
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "from_mail"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 27229
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "conversation_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27230
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "intent_key_mail_msg_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27232
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 27233
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v1

    .line 27235
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v6

    .line 27237
    iget-wide v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->I:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    .line 27238
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, p1, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/util/List;I)Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    .line 27242
    :goto_1
    const-wide/16 v4, 0x0

    .line 27243
    const/4 v3, 0x0

    .line 27244
    iget-wide v8, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->I:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_4

    .line 27245
    const-wide/16 v4, 0x2

    .line 27246
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 27247
    const-string/jumbo v7, "id"

    iget-wide v8, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->I:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27249
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 27250
    if-nez v3, :cond_5

    .line 27251
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 27253
    :cond_5
    const-string/jumbo v7, "mail_msg_id"

    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27255
    :cond_6
    const/4 v0, 0x0

    .line 27256
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 27257
    new-instance v0, Lcom/alibaba/wukong/im/GroupIconObject;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/GroupIconObject;-><init>()V

    .line 27258
    sget-object v7, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->AUTOMATIC:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    invoke-virtual {v7}, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->typeValue()I

    move-result v7

    iput v7, v0, Lcom/alibaba/wukong/im/GroupIconObject;->groupIconType:I

    .line 27260
    iput-object p3, v0, Lcom/alibaba/wukong/im/GroupIconObject;->groupIcon:Ljava/lang/String;

    .line 27262
    :cond_7
    new-instance v7, Lcom/alibaba/wukong/im/CreateConversationParams;

    invoke-direct {v7}, Lcom/alibaba/wukong/im/CreateConversationParams;-><init>()V

    .line 27263
    invoke-virtual {v7, v2}, Lcom/alibaba/wukong/im/CreateConversationParams;->setMessage(Lcom/alibaba/wukong/im/Message;)V

    .line 27264
    invoke-virtual {v7, p2}, Lcom/alibaba/wukong/im/CreateConversationParams;->setOpenIds(Ljava/util/List;)V

    .line 27265
    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Lcom/alibaba/wukong/im/CreateConversationParams;->setTypeMask(I)V

    .line 27266
    invoke-virtual {v7, v6}, Lcom/alibaba/wukong/im/CreateConversationParams;->setIcon(Ljava/lang/String;)V

    .line 27267
    invoke-virtual {v7, v0}, Lcom/alibaba/wukong/im/CreateConversationParams;->setGroupIconObject(Lcom/alibaba/wukong/im/GroupIconObject;)V

    .line 27268
    invoke-virtual {v7, v3}, Lcom/alibaba/wukong/im/CreateConversationParams;->setExtension(Ljava/util/Map;)V

    .line 27269
    invoke-virtual {v7, v1}, Lcom/alibaba/wukong/im/CreateConversationParams;->setTitle(Ljava/lang/String;)V

    .line 27270
    invoke-virtual {v7, v4, v5}, Lcom/alibaba/wukong/im/CreateConversationParams;->setTag(J)V

    .line 27271
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/alibaba/wukong/im/CreateConversationParams;->setShowHistoryType(I)V

    .line 27272
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$17;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$17;-><init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V

    invoke-interface {v0, v1, v7}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/CreateConversationParams;)V

    goto/16 :goto_0

    .line 27240
    :cond_8
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, p1, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/util/List;I)Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "newText"    # Ljava/lang/String;
    .param p2, "allowEmptyKeyword"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 908
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 912
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->q()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 913
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->aq:Landroid/view/View;

    iget-boolean v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a:Z

    if-eqz v4, :cond_4

    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 916
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    instance-of v4, v4, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;

    if-eqz v4, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 917
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->e:Lcoi;

    .line 7155
    iget-object v4, v4, Lcoi;->a:Ljava/util/HashMap;

    .line 917
    const-string/jumbo v6, "FriendsSearchFragment"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 918
    .local v3, "fragment":Landroid/support/v4/app/Fragment;
    if-nez v3, :cond_3

    .line 919
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->g()Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    move-result-object v2

    .line 920
    .local v2, "detailFragment":Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
    const-class v4, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Ljava/lang/Class;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 921
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 922
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "choose_mode"

    iget v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 923
    const-string/jumbo v4, "intent_key_contact_search_kind_flag"

    const/16 v6, 0x10

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 925
    const-string/jumbo v4, "intent_key_show_fragment_title"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 926
    const-string/jumbo v4, "im_navigator_from"

    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ay:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 928
    move-object v3, v2

    .line 930
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "detailFragment":Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->e:Lcoi;

    const-string/jumbo v6, "FriendsSearchFragment"

    .line 8082
    invoke-virtual {v4, v6, v3, v5}, Lcoi;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;Z)V

    .line 931
    iput-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    .line 932
    check-cast v3, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    .end local v3    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v3, p1}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v4, v5

    .line 913
    goto :goto_1

    .line 934
    :cond_5
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    instance-of v4, v4, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;

    if-eqz v4, :cond_7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 935
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->e:Lcoi;

    .line 8155
    iget-object v4, v4, Lcoi;->a:Ljava/util/HashMap;

    .line 935
    const-string/jumbo v6, "LocalContactSearchFragment"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 936
    .restart local v3    # "fragment":Landroid/support/v4/app/Fragment;
    if-nez v3, :cond_6

    .line 937
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->g()Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    move-result-object v2

    .line 938
    .restart local v2    # "detailFragment":Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
    const-class v4, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Ljava/lang/Class;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 939
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 940
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "choose_mode"

    iget v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 941
    const-string/jumbo v4, "intent_key_contact_search_kind_flag"

    const/16 v6, 0x20

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 943
    const-string/jumbo v4, "intent_key_show_fragment_title"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 944
    const-string/jumbo v4, "im_navigator_from"

    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ay:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 946
    move-object v3, v2

    .line 948
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "detailFragment":Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
    :cond_6
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->e:Lcoi;

    const-string/jumbo v6, "LocalContactSearchFragment"

    .line 9082
    invoke-virtual {v4, v6, v3, v5}, Lcoi;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;Z)V

    .line 949
    iput-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    .line 950
    check-cast v3, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    .end local v3    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v3, p1}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 952
    :cond_7
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    instance-of v4, v4, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    if-eqz v4, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 953
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->g()Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    move-result-object v2

    .line 954
    .restart local v2    # "detailFragment":Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->r()Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    move-result-object v4

    invoke-direct {p0, v2, p1, v4}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;)V

    goto/16 :goto_0

    .line 956
    .end local v2    # "detailFragment":Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
    :cond_8
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    instance-of v4, v4, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;

    if-eqz v4, :cond_a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz p2, :cond_a

    .line 957
    :cond_9
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->q()Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    move-result-object v2

    .line 958
    .restart local v2    # "detailFragment":Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
    const/4 v4, 0x0

    invoke-direct {p0, v2, p1, v4}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;)V

    goto/16 :goto_0

    .line 960
    .end local v2    # "detailFragment":Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
    :cond_a
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    instance-of v4, v4, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    if-eqz v4, :cond_b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 961
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    check-cast v4, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    invoke-virtual {v4, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 963
    :cond_b
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    instance-of v4, v4, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    if-eqz v4, :cond_c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v4

    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    invoke-virtual {v4, v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/support/v4/app/Fragment;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 964
    :cond_d
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    .line 965
    .local v0, "absSearchFragment":Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->r()Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;)V

    .line 966
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 968
    .end local v0    # "absSearchFragment":Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
    :cond_e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 969
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->e:Lcoi;

    .line 9155
    iget-object v4, v4, Lcoi;->a:Ljava/util/HashMap;

    .line 969
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ax:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 970
    .restart local v3    # "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v3, :cond_0

    .line 971
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->e:Lcoi;

    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ax:Ljava/lang/String;

    .line 10082
    invoke-virtual {v4, v6, v3, v5}, Lcoi;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;Z)V

    .line 972
    iput-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->H:J

    return-wide v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 136
    .line 26384
    if-nez p1, :cond_0

    .line 26385
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->as:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 26386
    sget v0, Lezg$l;->create_con_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 26415
    :goto_0
    return-void

    .line 26390
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "name_card_forward"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26391
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.conversation.forward.NAMECARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26392
    const-string/jumbo v1, "conversation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 26393
    const-string/jumbo v1, "intent_key_menu_seed"

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "intent_key_menu_seed"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 26394
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 26395
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->finish()V

    goto :goto_0

    .line 26396
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "msg_forward"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26397
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "message_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26399
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.conversation.FORWARD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26400
    const-string/jumbo v2, "conversation_id"

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26401
    const-string/jumbo v2, "message_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26402
    const-string/jumbo v0, "intent_key_menu_seed"

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "intent_key_menu_seed"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 26403
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 26404
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->finish()V

    goto/16 :goto_0

    .line 26405
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_share"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26406
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_share"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26407
    const-string/jumbo v1, "conversation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 26408
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 26409
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->finish()V

    goto/16 :goto_0

    .line 26410
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_mail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26411
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_share"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26412
    const-string/jumbo v1, "conversation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 26413
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 26414
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->finish()V

    goto/16 :goto_0

    .line 26416
    :cond_4
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/ding/home.html"

    new-instance v2, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$19;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$19;-><init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 26417
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 136
    .line 26133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26136
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->showLoadingDialog()V

    .line 26137
    new-instance v1, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$15;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$15;-><init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V

    .line 26163
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-static {v1, v2, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v1, p1}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 136
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2431
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$20;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$20;-><init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V

    invoke-interface {v0, v1, p1}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 2473
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2348
    .local p1, "mSelectedUserIdentityList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->dismissLoadingDialog()V

    .line 2349
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 2381
    :cond_0
    :goto_0
    return-void

    .line 2352
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v12, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 2353
    .local v12, "uid":J
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 2354
    .local v10, "model":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v4, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 2355
    .local v4, "nick":Ljava/lang/String;
    iget-object v9, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 2357
    .local v9, "mediaId":Ljava/lang/String;
    new-instance v11, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {v11}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;-><init>()V

    .line 2358
    .local v11, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iput-wide v12, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 2359
    iput-object v4, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 2360
    iput-object v9, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 2361
    new-instance v14, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v14, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2362
    .local v14, "userProfileObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2363
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v14, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v5

    .line 2364
    .local v5, "icon":Ljava/lang/String;
    const-class v2, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v3, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$18;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$18;-><init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Long;

    const/4 v15, 0x0

    .line 2380
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v8, v15

    .line 2364
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;I[Ljava/lang/Long;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->C:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V
    .locals 11
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 136
    .line 22443
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->o:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 22444
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->o:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 22445
    if-eqz v6, :cond_0

    iget-object v0, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v0, :cond_0

    .line 22446
    iget-object v0, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->K:J

    .line 22447
    iget-object v0, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->C:Ljava/lang/String;

    .line 22448
    const-string/jumbo v2, "OrgContactFragment"

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->H:J

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    .line 22463
    :goto_0
    return-void

    .line 22449
    :cond_0
    if-eqz v6, :cond_1

    iget-object v0, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v0, :cond_1

    .line 22451
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;-><init>()V

    .line 22452
    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 22453
    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    .line 22454
    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 22455
    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    .line 22456
    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 22457
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->masterNodeList:Ljava/util/List;

    .line 22458
    const-string/jumbo v2, "OrgContactFragment"

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->H:J

    move-object v1, p0

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    goto :goto_0

    .line 22460
    :cond_1
    const-string/jumbo v6, "OrgContactFragment"

    iget-object v7, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->C:Ljava/lang/String;

    iget-wide v8, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->H:J

    move-object v5, p0

    move-object v10, v3

    invoke-virtual/range {v5 .. v10}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    goto :goto_0

    .line 22462
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->o:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_3

    .line 22463
    const-string/jumbo v6, "OrgSelectLocalDeptFragment"

    sget v0, Lezg$l;->select_org_dept:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->H:J

    move-object v5, p0

    move-object v10, v3

    invoke-virtual/range {v5 .. v10}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    goto :goto_0

    .line 22465
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->C:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->G:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->H:J

    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->M:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->az:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->g:Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->as:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Lfkn;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->j:Lfkn;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->n:Ljava/util/List;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 136
    iget v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    return v0
.end method

.method static synthetic o(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->aq:Landroid/view/View;

    return-object v0
.end method

.method private o()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 342
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->A:Ljava/lang/String;

    const-string/jumbo v1, "identify_flag_connection"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private p()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 844
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ap:Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;->getKeyPathList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ap:Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;->getKeyPathList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-wide v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->O:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->aq:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 849
    :goto_0
    return-void

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->aq:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic p(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->w()V

    return-void
.end method

.method static synthetic q(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ap:Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;

    return-object v0
.end method

.method private q()Z
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/alibaba/android/user/external/list/ExternalListFragment;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic r(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->av:Landroid/view/View;

    return-object v0
.end method

.method private r()Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 978
    iget-wide v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->O:J

    .line 979
    .local v2, "label":J
    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->labelObject:Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    if-eqz v1, :cond_0

    .line 980
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->labelObject:Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->id:J

    .line 982
    :cond_0
    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 983
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;-><init>()V

    .line 984
    .local v0, "filterObject":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    const-string/jumbo v1, "sys.role.visible"

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->appId:Ljava/lang/String;

    .line 986
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->labels:Ljava/util/List;

    .line 987
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->labels:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 999
    .end local v0    # "filterObject":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    :goto_0
    return-object v0

    .line 991
    :cond_1
    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    .line 992
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v4, "f_contact_get_user_profile_under_org_context"

    invoke-virtual {v1, v4}, Lchx;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 994
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;-><init>()V

    .line 995
    .restart local v0    # "filterObject":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    const-string/jumbo v1, "sys.choose.visible"

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->appId:Ljava/lang/String;

    goto :goto_0

    .line 999
    .end local v0    # "filterObject":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic s(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 136
    iget v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->aw:I

    return v0
.end method

.method private s()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    .line 1295
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "GroupConversationFragment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 1298
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->i()V

    .line 1302
    :goto_0
    return-void

    .line 1300
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->j()V

    goto :goto_0
.end method

.method static synthetic t(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 136
    iget v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    return v0
.end method

.method private t()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1513
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1514
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lezg$l;->cancel_create_conversation_tips:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->sure:I

    new-instance v3, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$3;-><init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V

    .line 1515
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->cancel:I

    new-instance v3, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$2;-><init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V

    .line 1529
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 1533
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 1534
    return-void
.end method

.method static synthetic u(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 136
    iget v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->v:I

    return v0
.end method

.method private u()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1607
    iget v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->x:I

    if-nez v0, :cond_1

    sget v0, Lezg$l;->choose_limit:I

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1612
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->aj:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    if-eqz v0, :cond_0

    .line 1613
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->aj:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    iget v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->aw:I

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;->onSelectedCountExceedsLimit(II)V

    .line 1615
    :cond_0
    return-void

    .line 1607
    :cond_1
    iget v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->x:I

    goto :goto_0

    .line 1609
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->y:Ljava/lang/String;

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private v()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1867
    iget v7, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    if-nez v7, :cond_1

    .line 1868
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->u()V

    .line 1965
    :cond_0
    :goto_0
    return-void

    .line 1871
    :cond_1
    iget-object v7, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->g:Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    invoke-virtual {v7}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->getRequestSelectResult()Ljava/util/List;

    move-result-object v5

    .line 1872
    .local v5, "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iget-object v7, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->g:Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    invoke-virtual {v7}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->getChooseResult()Ljava/util/ArrayList;

    move-result-object v6

    .line 1873
    .local v6, "selectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1874
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1875
    .local v3, "deptNoCountModels":Ljava/util/List;, "Ljava/util/List<Lcen;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1876
    .local v0, "deptHaveCountModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 1877
    .local v4, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    if-eqz v4, :cond_2

    iget v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    if-nez v8, :cond_2

    .line 1878
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->toIDLModel()Lcen;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1880
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1883
    .end local v4    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1886
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v8

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v7

    new-instance v9, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$9;

    invoke-direct {v9, p0, v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$9;-><init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;Ljava/util/List;)V

    const-class v10, Lcma;

    invoke-interface {v7, v9, v10, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcma;

    invoke-interface {v8, v3, v7}, Lezt;->a(Ljava/util/List;Lcma;)V

    .line 1928
    .end local v0    # "deptHaveCountModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local v3    # "deptNoCountModels":Ljava/util/List;, "Ljava/util/List<Lcen;>;"
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1929
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1930
    .local v2, "deptModels":Ljava/util/List;, "Ljava/util/List<Lcen;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1931
    .local v1, "deptHaveModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 1932
    .restart local v4    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    if-eqz v4, :cond_5

    iget v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    if-nez v8, :cond_5

    .line 1933
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->toIDLModel()Lcen;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1935
    :cond_5
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1938
    .end local v4    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1941
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v8

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v7

    new-instance v9, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$10;

    invoke-direct {v9, p0, v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$10;-><init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;Ljava/util/List;)V

    const-class v10, Lcma;

    invoke-interface {v7, v9, v10, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcma;

    invoke-interface {v8, v2, v7}, Lezt;->a(Ljava/util/List;Lcma;)V

    goto/16 :goto_0
.end method

.method static synthetic v(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->u()V

    return-void
.end method

.method static synthetic w(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->A:Ljava/lang/String;

    return-object v0
.end method

.method private w()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2512
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-boolean v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->unionNode:Z

    if-eqz v3, :cond_0

    move v0, v1

    .line 2514
    .local v0, "showUnionOrgDesView":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    const-string/jumbo v4, "contact_related_org"

    iget-wide v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->H:J

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;J)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 2516
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ar:Landroid/view/View;

    if-eqz v0, :cond_2

    :goto_2
    invoke-static {v1, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 2517
    return-void

    .end local v0    # "showUnionOrgDesView":Z
    :cond_0
    move v0, v2

    .line 2512
    goto :goto_0

    .restart local v0    # "showUnionOrgDesView":Z
    :cond_1
    move v0, v2

    .line 2514
    goto :goto_1

    .line 2516
    :cond_2
    const/16 v2, 0x8

    goto :goto_2
.end method

.method static synthetic x(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ab:Z

    return v0
.end method

.method static synthetic y(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ad:Z

    return v0
.end method


# virtual methods
.method public final a(Ljava/io/Serializable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1683
    .local p1, "t":Ljava/io/Serializable;, "TT;"
    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->am:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1684
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1685
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lezg$l;->chat_forward_yes:I

    new-instance v2, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$6;-><init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->chat_forward_no:I

    new-instance v3, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$5;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$5;-><init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V

    .line 1691
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->am:Ljava/lang/String;

    .line 1696
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 1700
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :goto_0
    return-void

    .line 1698
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->m()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 904
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Ljava/lang/String;Z)V

    .line 905
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "breadName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1137
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    .line 1138
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
    .locals 9
    .param p1, "fragmentKey"    # Ljava/lang/String;
    .param p2, "breadName"    # Ljava/lang/String;
    .param p3, "orgId"    # J
    .param p5, "nodeObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .prologue
    .line 1142
    iput-wide p3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->H:J

    .line 1144
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1145
    .local v3, "bundle":Landroid/os/Bundle;
    if-nez v3, :cond_0

    .line 1146
    new-instance v3, Landroid/os/Bundle;

    .end local v3    # "bundle":Landroid/os/Bundle;
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1149
    .restart local v3    # "bundle":Landroid/os/Bundle;
    :cond_0
    if-eqz p5, :cond_1

    .line 1150
    iput-object p5, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 1151
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->w()V

    .line 1153
    const-string/jumbo v0, "node"

    invoke-virtual {v3, v0, p5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1155
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1156
    const-string/jumbo v0, "bread_node_name"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->al:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    if-eqz v0, :cond_3

    .line 1159
    const-string/jumbo v0, "intent_key_filter_model"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->al:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1161
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->az:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->az:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getChooseConversationHandler()Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1163
    const-string/jumbo v0, "intent_key_use_external_logic"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1166
    :cond_4
    const-string/jumbo v0, "choose_mode"

    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1167
    const-string/jumbo v0, "im_navigator_from"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ay:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    const-string/jumbo v0, "hide_org_external"

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->q:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1169
    const-string/jumbo v0, "external_list_show_add_button"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1170
    const-string/jumbo v0, "show_label_contact"

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->r:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1171
    const-string/jumbo v0, "show_org_relation_contact"

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->s:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1172
    const-string/jumbo v0, "show_group"

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->P:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1173
    const-string/jumbo v0, "show_header_existed_group"

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->Q:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1174
    const-string/jumbo v0, "show_header_f2f_create_group"

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->R:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1175
    const-string/jumbo v0, "show_friends"

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->T:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1176
    const-string/jumbo v0, "show_crm_customer"

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->Z:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1177
    const-string/jumbo v0, "show_local_contact"

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->U:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1178
    const-string/jumbo v0, "show_common_friends"

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->X:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1179
    const-string/jumbo v0, "intent_key_show_alpha_smart_devices"

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->S:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1180
    const-string/jumbo v0, "choose_enterprise_oid"

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->I:J

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1181
    const-string/jumbo v0, "display_enterprise_oid"

    invoke-virtual {v3, v0, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1182
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->M:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1183
    const-string/jumbo v0, "conversation_id"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->M:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    :cond_5
    const-string/jumbo v0, "intent_key_label_id"

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->O:J

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1186
    const-string/jumbo v0, "count_limit"

    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1187
    const-string/jumbo v0, "can_choose_current_user"

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->Y:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1188
    const-string/jumbo v0, "filter_myself"

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->an:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1190
    const-string/jumbo v0, "intent_key_contact_choose_request"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->az:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1193
    const/4 v2, 0x0

    .line 1194
    .local v2, "key":Ljava/lang/String;
    if-eqz p5, :cond_6

    invoke-static {p5}, Lfxe;->f(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1195
    :cond_6
    invoke-static {p5}, Lfxe;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v2

    .line 1196
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1197
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1198
    const-string/jumbo v2, "default"

    .line 1210
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->n:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1211
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ap:Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;

    invoke-virtual {v0, v2, p2}, Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ap:Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;

    new-instance v1, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$22;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$22;-><init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;->post(Ljava/lang/Runnable;)Z

    .line 1238
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1239
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->H:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_16

    .line 1240
    const-string/jumbo p1, "OrgContactFragment"

    .line 1247
    :cond_8
    :goto_2
    const-string/jumbo v0, "CrmListFragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1248
    new-instance v6, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;

    invoke-direct {v6}, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;-><init>()V

    .line 1249
    .local v6, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v6, v3}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1250
    instance-of v0, v6, Lfit;

    if-eqz v0, :cond_9

    move-object v0, v6

    .line 1251
    check-cast v0, Lfit;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Lfit;)V

    .line 1257
    :cond_9
    :goto_3
    if-nez v6, :cond_a

    .line 1258
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->j:Lfkn;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    move-object v1, p1

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lfkn;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lfip;Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    .line 1259
    instance-of v0, v6, Lfit;

    if-eqz v0, :cond_a

    move-object v0, v6

    .line 1260
    check-cast v0, Lfit;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Lfit;)V

    .line 1268
    :cond_a
    instance-of v0, v6, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;

    if-eqz v0, :cond_b

    move-object v0, v6

    .line 1269
    check-cast v0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->B:Ljava/lang/String;

    .line 13109
    iput-object v1, v0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->e:Ljava/lang/String;

    .line 1271
    :cond_b
    instance-of v0, v6, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;

    if-eqz v0, :cond_c

    move-object v0, v6

    .line 1272
    check-cast v0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->o:Ljava/util/List;

    .line 14106
    iput-object v1, v0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->e:Ljava/util/List;

    .line 1274
    :cond_c
    if-eqz v6, :cond_18

    .line 1275
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->e:Lcoi;

    .line 15082
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v6, v1}, Lcoi;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;Z)V

    .line 1276
    iput-object v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    .line 1277
    iput-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ax:Ljava/lang/String;

    .line 1287
    :cond_d
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p()V

    .line 1288
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->s()V

    .line 1289
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->supportInvalidateOptionsMenu()V

    .line 1290
    return-void

    .line 1200
    .end local v6    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_e
    invoke-static {p5}, Lfxe;->f(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1201
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "label:"

    aput-object v4, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 1202
    :cond_f
    const-string/jumbo v0, "ExternalContactFragmentser"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget v0, Lezg$l;->dt_user_external_header_title:I

    .line 1203
    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1204
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "external:"

    aput-object v4, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 1206
    :cond_10
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "dept:"

    aput-object v4, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 1220
    :cond_11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ap:Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;->getKeyPathList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ap:Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;->getKeyPathList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ap:Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;->getKeyPathList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1221
    :cond_12
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->n:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1222
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ap:Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;

    invoke-virtual {v0, p2, p2}, Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    :cond_13
    iget-object v0, p5, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->masterNodeList:Ljava/util/List;

    if-eqz v0, :cond_14

    iget-object v0, p5, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->masterNodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 1225
    iget-object v0, p5, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->masterNodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 1226
    .local v7, "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    invoke-static {v7}, Lfxe;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v2

    .line 1227
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->n:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1228
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ap:Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;

    invoke-static {v7}, Lfxe;->c(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1231
    .end local v7    # "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_14
    invoke-static {p5}, Lfxe;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v2

    .line 1232
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->n:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1233
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ap:Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;

    invoke-static {p5}, Lfxe;->c(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    :cond_15
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ap:Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;->b()V

    goto/16 :goto_1

    .line 1242
    :cond_16
    const-string/jumbo p1, "HomeContactFragment"

    goto/16 :goto_2

    .line 1254
    :cond_17
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->j:Lfkn;

    invoke-virtual {v0, v2}, Lfkn;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    .restart local v6    # "fragment":Landroid/support/v4/app/Fragment;
    goto/16 :goto_3

    .line 1279
    :cond_18
    const-string/jumbo v0, "UserContactActivity"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "fragmentKey: "

    aput-object v5, v1, v4

    const/4 v4, 0x1

    aput-object p1, v1, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ", key: "

    aput-object v5, v1, v4

    const/4 v4, 0x3

    aput-object v2, v1, v4

    const/4 v4, 0x4

    const-string/jumbo v5, ", breadName: "

    aput-object v5, v1, v4

    const/4 v4, 0x5

    aput-object p2, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1282
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v0, v1, :cond_d

    .line 1283
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "fragment MUST NOT be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1971
    .local p1, "deptObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iget-object v9, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {v9}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->getChooseResultHaveId()Ljava/util/ArrayList;

    move-result-object v8

    .line 1972
    .local v8, "userObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v9, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->g:Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    invoke-virtual {v9}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->getChooseResultHaveId()Ljava/util/ArrayList;

    move-result-object v6

    .line 1973
    .local v6, "orgDeptObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iget v9, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->E:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 19100
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 19101
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->finish()V

    .line 2065
    :cond_1
    :goto_0
    return-void

    .line 19105
    :cond_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    iget-boolean v9, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->Y:Z

    if-nez v9, :cond_3

    .line 19106
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v9

    invoke-virtual {v9}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 19108
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 19109
    invoke-direct {p0, v8}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->b(Ljava/util/List;)V

    goto :goto_0

    .line 19111
    :cond_4
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v9

    new-instance v10, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$14;

    invoke-direct {v10, p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$14;-><init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V

    invoke-virtual {v9, p0, v8, v10}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/util/List;Ldca;)V

    goto :goto_0

    .line 1975
    :cond_5
    iget v9, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->E:I

    const/16 v10, 0x64

    if-ne v9, v10, :cond_6

    .line 1976
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_1

    .line 1979
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1980
    .local v7, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v7, :cond_1

    .line 1983
    iget-object v9, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    iget-object v10, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    new-instance v11, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$11;

    invoke-direct {v11, p0, v7}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$11;-><init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    invoke-static {v9, v10, v11}, Lflo;->a(Ljava/lang/String;Ljava/lang/String;Lflo$a;)V

    goto :goto_0

    .line 1990
    .end local v7    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_6
    iget v9, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->E:I

    const/16 v10, 0xa

    if-ne v9, v10, :cond_7

    .line 1991
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 1992
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1993
    .local v5, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v10, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v9

    invoke-virtual {v9}, Lcid;->b()Lchy;

    move-result-object v9

    invoke-virtual {v9}, Lchy;->getCurrentUid()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-nez v9, :cond_7

    .line 1994
    sget v9, Lezg$l;->conf_txt_call_myself_prompt:I

    invoke-static {v9}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 1999
    .end local v5    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_7
    iget v9, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_8

    iget v9, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_9

    .line 2000
    :cond_8
    const/4 v9, 0x1

    iput v9, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    .line 2007
    :cond_9
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v9

    const-string/jumbo v10, "f_user_choose_contact_limit_new_logic_v2"

    .line 20083
    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v9

    .line 2007
    if-eqz v9, :cond_e

    .line 2008
    iget v9, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    const/4 v10, 0x6

    if-eq v9, v10, :cond_a

    iget v9, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_b

    :cond_a
    if-eqz v6, :cond_b

    .line 2009
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v10, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    if-gt v9, v10, :cond_c

    :cond_b
    if-eqz v8, :cond_d

    .line 2010
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v10, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    if-le v9, v10, :cond_d

    :cond_c
    const/4 v4, 0x1

    .line 2017
    .local v4, "logic":Z
    :goto_1
    if-eqz v4, :cond_13

    .line 2018
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->u()V

    goto/16 :goto_0

    .line 2010
    .end local v4    # "logic":Z
    :cond_d
    const/4 v4, 0x0

    goto :goto_1

    .line 2012
    :cond_e
    iget v9, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    if-lez v9, :cond_10

    iget v9, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    const/4 v10, 0x6

    if-eq v9, v10, :cond_f

    iget v9, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_10

    :cond_f
    if-eqz v6, :cond_10

    .line 2013
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v10, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    if-gt v9, v10, :cond_11

    :cond_10
    iget v9, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    if-lez v9, :cond_12

    if-eqz v8, :cond_12

    .line 2014
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v10, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    if-le v9, v10, :cond_12

    :cond_11
    const/4 v4, 0x1

    .restart local v4    # "logic":Z
    :goto_2
    goto :goto_1

    .end local v4    # "logic":Z
    :cond_12
    const/4 v4, 0x0

    goto :goto_2

    .line 2022
    .restart local v4    # "logic":Z
    :cond_13
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_14

    iget-boolean v9, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->Y:Z

    if-nez v9, :cond_14

    .line 2023
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v9

    invoke-virtual {v9}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2026
    :cond_14
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v9, "com.workapp.choose.people.from.contact"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2027
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v9, "choose_user_ids"

    iget-object v10, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    .line 2028
    invoke-virtual {v10}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->getChooseResultIds()[J

    move-result-object v10

    .line 2027
    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 2030
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v9

    const-string/jumbo v10, "select_members_limit_optimize_closed"

    invoke-virtual {v9, v10}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v3

    .line 2031
    .local v3, "isLimitOptimizeClosed":Z
    if-nez v3, :cond_18

    iget-boolean v9, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ah:Z

    if-eqz v9, :cond_18

    if-eqz v8, :cond_18

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/16 v10, 0x5dc

    if-le v9, v10, :cond_18

    .line 2032
    const-string/jumbo v9, "select_members_output"

    invoke-static {v9, v8}, Lcnf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcnf$a;

    move-result-object v1

    .line 2033
    .local v1, "fileDescriptorWrapper":Lcnf$a;
    if-eqz v1, :cond_17

    .line 21044
    iget v9, v1, Lcnf$a;->a:I

    .line 2033
    if-lez v9, :cond_17

    .line 21048
    iget v9, v1, Lcnf$a;->b:I

    .line 2033
    if-lez v9, :cond_17

    .line 2034
    const-string/jumbo v9, "memory_file_descriptor"

    .line 22044
    iget v10, v1, Lcnf$a;->a:I

    .line 2034
    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2035
    const-string/jumbo v9, "memory_file_size"

    .line 22048
    iget v10, v1, Lcnf$a;->b:I

    .line 2035
    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2045
    .end local v1    # "fileDescriptorWrapper":Lcnf$a;
    :goto_3
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_15

    .line 2046
    const-string/jumbo v9, "choose_department_ids"

    iget-object v10, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->g:Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    invoke-virtual {v10}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->getChooseResultIds()[J

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 2047
    const-string/jumbo v9, "choose_department_array"

    invoke-virtual {v2, v9, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2050
    :cond_15
    const-string/jumbo v9, "activity_identify"

    iget-object v10, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->A:Ljava/lang/String;

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2051
    const-string/jumbo v9, "choose_mode"

    iget v10, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2052
    const-string/jumbo v9, "org_request_from_source_type"

    iget-object v10, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->D:Ljava/lang/String;

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2053
    const-string/jumbo v9, "conversation_id"

    iget-object v10, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->M:Ljava/lang/String;

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2054
    const-string/jumbo v9, "im_navigator_from"

    iget-object v10, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ay:Ljava/lang/String;

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22252
    iget-object v9, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->b:Landroid/widget/SearchView;

    if-eqz v9, :cond_16

    .line 22253
    iget-object v9, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->b:Landroid/widget/SearchView;

    invoke-static {p0, v9}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 22254
    iget-object v9, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->b:Landroid/widget/SearchView;

    invoke-virtual {v9}, Landroid/widget/SearchView;->clearFocus()V

    .line 2057
    :cond_16
    iget-object v9, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ai:Ljava/io/Serializable;

    if-eqz v9, :cond_19

    iget-object v9, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ai:Ljava/io/Serializable;

    instance-of v9, v9, Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    if-eqz v9, :cond_19

    .line 2058
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ai:Ljava/io/Serializable;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    .line 2059
    .local v0, "callback":Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-interface {v0, p0, v9}, Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;->doLogic(Landroid/app/Activity;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2037
    .end local v0    # "callback":Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;
    .restart local v1    # "fileDescriptorWrapper":Lcnf$a;
    :cond_17
    const-string/jumbo v9, "choose_user_identities"

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_3

    .line 2041
    .end local v1    # "fileDescriptorWrapper":Lcnf$a;
    :cond_18
    const-string/jumbo v9, "choose_user_identities"

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_3

    .line 2061
    :cond_19
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v9

    invoke-virtual {v9, v2}, Ldq;->a(Landroid/content/Intent;)Z

    .line 2062
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->finish()V

    goto/16 :goto_0
.end method

.method public final a(Z)V
    .locals 7
    .param p1, "isSearchModel"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 1053
    if-nez p1, :cond_4

    .line 1054
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    instance-of v1, v1, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    if-eqz v1, :cond_3

    .line 1055
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->e:Lcoi;

    .line 11155
    iget-object v1, v1, Lcoi;->a:Ljava/util/HashMap;

    .line 1055
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ax:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1056
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_0

    .line 1057
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->j:Lfkn;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ax:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lfkn;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1059
    :cond_0
    if-eqz v0, :cond_1

    .line 1060
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->e:Lcoi;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ax:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v6}, Lcoi;->b(Ljava/lang/String;Landroid/support/v4/app/Fragment;Z)V

    .line 1061
    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    .line 1066
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->O:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 1067
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->aq:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1072
    :cond_2
    :goto_1
    return-void

    .line 1063
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    instance-of v1, v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    if-eqz v1, :cond_1

    .line 1064
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    check-cast v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1070
    :cond_4
    const-string/jumbo v1, ""

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 251
    sget v0, Lezg$h;->view_search:I

    return v0
.end method

.method public final b(Z)V
    .locals 11
    .param p1, "isRemove"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 1077
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    instance-of v3, v3, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    if-eqz v3, :cond_0

    .line 1078
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    check-cast v3, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->f()V

    .line 1080
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->getChooseResult()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1081
    .local v0, "chooseSize":I
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->g:Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->getChooseResult()Ljava/util/ArrayList;

    move-result-object v1

    .line 1082
    .local v1, "deptObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->at:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1084
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1085
    iget v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    if-ne v3, v10, :cond_6

    .line 1086
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1087
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->at:Landroid/widget/TextView;

    sget v3, Lezg$l;->dt_choose_kit_dept_hint:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1101
    :goto_1
    iget v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    if-gez v3, :cond_1

    .line 1102
    iput v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    .line 1105
    :cond_1
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v3

    const-string/jumbo v5, "f_user_choose_contact_limit_new_logic_v2"

    .line 12083
    invoke-virtual {v3, v5, v8}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v3

    .line 1105
    if-nez v3, :cond_2

    iget v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    if-nez v3, :cond_2

    .line 1106
    iput-boolean v8, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ah:Z

    .line 1109
    :cond_2
    iget v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    if-ne v3, v10, :cond_b

    .line 1110
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->as:Landroid/widget/Button;

    const-string/jumbo v6, "%s(%d)"

    new-array v7, v9, [Ljava/lang/Object;

    sget v3, Lezg$l;->sure:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v4

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1120
    :goto_3
    if-nez v0, :cond_e

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_e

    :cond_3
    iget-boolean v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ac:Z

    if-nez v3, :cond_e

    .line 1121
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->as:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1122
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->as:Landroid/widget/Button;

    sget v5, Lezg$g;->ui_common_level2_button_bg:I

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1128
    :goto_4
    iput v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->aw:I

    .line 1130
    iget-boolean v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a:Z

    if-eqz v3, :cond_4

    .line 12233
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->b:Landroid/widget/SearchView;

    if-eqz v3, :cond_4

    .line 12235
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->b:Landroid/widget/SearchView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 12236
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->b:Landroid/widget/SearchView;

    const-string/jumbo v5, ""

    invoke-virtual {v3, v5, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 12238
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->d:Landroid/os/Handler;

    new-instance v4, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity$5;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity$5;-><init>(Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1133
    :cond_4
    return-void

    :cond_5
    move v3, v4

    .line 1087
    goto/16 :goto_0

    .line 1089
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 1090
    .local v2, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    iget v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    add-int/2addr v0, v5

    .line 1091
    goto :goto_5

    .line 1092
    .end local v2    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_7
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->at:Landroid/widget/TextView;

    sget v5, Lezg$l;->contact_select_user_dept_count:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1094
    :cond_8
    if-lez v0, :cond_9

    .line 1095
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->at:Landroid/widget/TextView;

    sget v5, Lezg$l;->contact_select_user_count:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1097
    :cond_9
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->at:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1098
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->at:Landroid/widget/TextView;

    sget v5, Lezg$l;->contact_select_no_user:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_a
    move v3, v4

    .line 1110
    goto/16 :goto_2

    .line 1111
    :cond_b
    iget v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    if-nez v3, :cond_c

    .line 1112
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->as:Landroid/widget/Button;

    const-string/jumbo v5, "%s(%d)"

    new-array v6, v9, [Ljava/lang/Object;

    sget v7, Lezg$l;->sure:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1113
    :cond_c
    iget-boolean v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->u:Z

    if-eqz v3, :cond_d

    .line 1115
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->as:Landroid/widget/Button;

    const-string/jumbo v5, "%s(%d)"

    new-array v6, v9, [Ljava/lang/Object;

    sget v7, Lezg$l;->sure:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1117
    :cond_d
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->as:Landroid/widget/Button;

    const-string/jumbo v5, "%s(%d/%d)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    sget v7, Lezg$l;->sure:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget v7, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1124
    :cond_e
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->as:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1125
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->as:Landroid/widget/Button;

    sget v5, Lezg$g;->ui_common_level1_button_bg:I

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_4
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 256
    sget v0, Lezg$j;->activity_user_contact:I

    return v0
.end method

.method public final h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x2

    .line 1641
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->aq:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ap:Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;

    .line 1642
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;->getKeyPathList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ap:Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;->getKeyPathList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 1643
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ap:Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;->a()V

    .line 1663
    :goto_0
    return-void

    .line 1644
    :cond_0
    iget v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    if-eq v1, v0, :cond_5

    .line 1645
    const-class v0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1646
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;

    if-eqz v0, :cond_3

    .line 1647
    const-string/jumbo v0, "contact_create_team_add_member_ding_friend_back_btn_click"

    invoke-static {v0}, Lfxo;->b(Ljava/lang/String;)V

    .line 1652
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->A:Ljava/lang/String;

    const-string/jumbo v1, "identify_flag_connection"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1653
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->finish()V

    .line 1655
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->getChooseResult()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1656
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t()V

    goto :goto_0

    .line 1648
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;

    if-eqz v0, :cond_1

    .line 1649
    const-string/jumbo v0, "contact_create_team_add_member_mobile_friend_confirm_btn_click"

    invoke-static {v0}, Lfxo;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 1658
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->finish()V

    goto :goto_0

    .line 1661
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->finish()V

    goto :goto_0
.end method

.method protected final l()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1751
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->aa:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->g:Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->getRequestSelectResult()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->g:Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->getChooseResult()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 18563
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->showLoadingDialog()V

    .line 18564
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->getChooseResultIds()[J

    move-result-object v1

    .line 18618
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 18619
    if-eqz v1, :cond_0

    .line 18620
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-wide v4, v1, v0

    .line 18621
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18620
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18565
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->getRequestSelectResult()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18567
    new-instance v0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$4;-><init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V

    .line 18600
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcma;

    .line 18601
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->g:Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->getChooseResult()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->g:Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->getDisableSelectResult()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    .line 18602
    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->getDisableSelectResult()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->v:I

    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->al:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .line 18601
    invoke-interface/range {v0 .. v7}, Lezt;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcma;)V

    .line 1756
    :goto_1
    return-void

    .line 18742
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->g:Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->getChooseResult()Ljava/util/ArrayList;

    move-result-object v0

    .line 18744
    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public final m()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1762
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->getChooseResultNoId()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1763
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->l()V

    .line 1861
    :goto_0
    return-void

    .line 1765
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->showLoadingDialog()V

    .line 1766
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->getChooseResultNoId()Ljava/util/ArrayList;

    move-result-object v0

    .line 1767
    .local v0, "chooseResultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;-><init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;Ljava/util/ArrayList;)V

    const-class v4, Lcma;

    invoke-interface {v2, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 1853
    .local v1, "listener":Lcma;
    iget-boolean v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ao:Z

    if-eqz v2, :cond_1

    .line 1855
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v2

    iget-boolean v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ab:Z

    invoke-interface {v2, v0, v3, v1}, Lfac;->a(Ljava/util/List;ZLcma;)V

    goto :goto_0

    .line 1858
    :cond_1
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v2

    iget-boolean v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ab:Z

    invoke-interface {v2, v0, v3, v1}, Lfac;->b(Ljava/util/List;ZLcma;)V

    goto :goto_0
.end method

.method public final n()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2476
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2477
    .local v1, "pathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->n:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2478
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 2479
    .local v0, "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v3, :cond_0

    .line 2480
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2484
    .end local v0    # "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_1
    return-object v1
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1667
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1668
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->finish()V

    .line 1679
    :goto_0
    return-void

    .line 1670
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a:Z

    if-eqz v0, :cond_1

    .line 1671
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a:Z

    .line 1672
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->g()V

    .line 1673
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->supportInvalidateOptionsMenu()V

    goto :goto_0

    .line 1676
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->h()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1553
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    .line 1554
    .local v7, "vid":I
    sget v0, Lezg$h;->tv_select_count:I

    if-ne v7, v0, :cond_0

    .line 1555
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    iget v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->aw:I

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->getChooseResult()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->g:Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->getChooseResult()Ljava/util/ArrayList;

    move-result-object v5

    const-string/jumbo v6, "UserContactActivity"

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;IILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1557
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x2

    const/16 v4, 0x3e8

    const-wide/16 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 261
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->onCreate(Landroid/os/Bundle;)V

    .line 263
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->hideToolbarDivide()V

    .line 265
    new-instance v1, Lcoi;

    sget v2, Lezg$h;->ll_fragment_container:I

    invoke-direct {v1, p0, v2}, Lcoi;-><init>(Landroid/support/v4/app/FragmentActivity;I)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->e:Lcoi;

    .line 266
    new-instance v1, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;-><init>(Lfio;)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    .line 267
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {v1, p0}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->setActivityContext(Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;)V

    .line 268
    new-instance v1, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;-><init>(Lfio;)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->g:Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    .line 269
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->g:Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    invoke-virtual {v1, p0}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->setActivityContext(Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;)V

    .line 270
    new-array v1, v9, [Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->g:Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    aput-object v2, v1, v7

    .line 3110
    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->c:[Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    .line 271
    new-instance v1, Lfkn;

    invoke-direct {v1}, Lfkn;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->j:Lfkn;

    .line 272
    new-instance v1, Lfjl;

    invoke-direct {v1, p0}, Lfjl;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->m:Lfjl;

    .line 274
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "intent_key_contact_choose_request"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->az:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 275
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->az:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    if-eqz v1, :cond_17

    .line 3610
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 3611
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->az:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 3612
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getStatisticsFrom()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ay:Ljava/lang/String;

    .line 3613
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getChooseMode()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    .line 3614
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->isHideExternalContact()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->q:Z

    .line 3615
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->isShowLabelContact()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->r:Z

    .line 3616
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->isShowOrgRelationContact()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->s:Z

    .line 3617
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getChooseAction()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->E:I

    .line 3619
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getChooseCountLimit()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    .line 3620
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getChooseCountLimitByIntent()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->v:I

    .line 3775
    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    if-ne v1, v4, :cond_0

    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->v:I

    if-eq v1, v4, :cond_1

    .line 3777
    :cond_0
    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    if-ne v1, v4, :cond_f

    .line 3778
    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->v:I

    iput v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    .line 3622
    :cond_1
    :goto_0
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getLeastChooseCount()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->w:I

    .line 3623
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->isMemoryMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ah:Z

    .line 3626
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v4, "f_user_choose_contact_limit_new_logic_v2"

    .line 4083
    invoke-virtual {v1, v4, v7}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 3626
    if-eqz v1, :cond_3

    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_3

    .line 3627
    :cond_2
    iput-boolean v7, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ah:Z

    .line 3628
    const v1, 0x7fffffff

    iput v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    .line 3629
    iput-boolean v7, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->u:Z

    .line 3634
    :cond_3
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getChooseLimitTips()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->y:Ljava/lang/String;

    .line 3635
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->z:Ljava/lang/String;

    .line 3636
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getIdentifyFlag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->A:Ljava/lang/String;

    .line 3637
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getFromSource()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->D:Ljava/lang/String;

    .line 3638
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getOrgQuitAction()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->F:I

    .line 3640
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getShowDialogTips()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->am:Ljava/lang/String;

    .line 3641
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getNodeName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->C:Ljava/lang/String;

    .line 3642
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getDisplayOid()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->H:J

    .line 3643
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getChooseOid()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->I:J

    .line 3644
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getConversationId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->M:Ljava/lang/String;

    .line 3645
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getConversationTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->N:Ljava/lang/String;

    .line 3646
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->isDirect2Conversation()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->W:Z

    .line 3647
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->M:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->isLoadConversation()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3648
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->M:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->b(Ljava/lang/String;)V

    .line 3650
    :cond_4
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->isCanManageContact()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->af:Z

    .line 3651
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getFilterObject()Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->al:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .line 3652
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getCurrentNode()Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 3653
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getInitFragmentKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->G:Ljava/lang/String;

    .line 3655
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->isChangeDept()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->aa:Z

    .line 3656
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->isShowGroup()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->P:Z

    .line 3657
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->isShowChooseExistedGroup()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->Q:Z

    .line 3658
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->isShowF2FCreateGroup()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->R:Z

    .line 3659
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->isShowSmartDevice()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->S:Z

    .line 3660
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->isShowFriends()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->T:Z

    .line 3661
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->isShowLocalFriends()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->U:Z

    .line 3662
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->isShowCommonFriends()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->X:Z

    .line 3663
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->isCanChooseCurrentUser()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->Y:Z

    .line 3665
    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->I:J

    cmp-long v1, v4, v10

    if-lez v1, :cond_10

    const-string/jumbo v1, "show_crm_customer"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 3666
    iput-boolean v8, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->Z:Z

    .line 3670
    :goto_1
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->isShowOnlyLocalContact()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ae:Z

    .line 3671
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->isFromManageOrgActivity()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->L:Z

    .line 3672
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getAuthLevel()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->J:I

    .line 3673
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getDepartId()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->K:J

    .line 3674
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getStartType()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ak:I

    .line 3676
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->isSupportFixLine()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ab:Z

    .line 3677
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->isDeliverErrorResult()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ad:Z

    .line 3678
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->isDirect2Group()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->V:Z

    .line 3679
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->isDirect2Conversation()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->W:Z

    .line 3680
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->isFilterMyself()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->an:Z

    .line 3681
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->isPromptUserIdentityCreationError()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ao:Z

    .line 3683
    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    if-eq v1, v9, :cond_9

    .line 3684
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getUnCheckUserList()Ljava/util/ArrayList;

    move-result-object v1

    .line 3685
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {v4, v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->setDisChooseList(Ljava/util/ArrayList;)V

    .line 3688
    const-string/jumbo v1, "selectUserList"

    invoke-static {v1}, Lffv;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3690
    :try_start_0
    const-string/jumbo v1, "selectUserList"

    invoke-static {v1}, Lffv;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3704
    :goto_2
    iget v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    if-eq v4, v7, :cond_13

    .line 3705
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {v4, v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->setChoosedList(Ljava/util/ArrayList;)V

    .line 3709
    :goto_3
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_14

    move v1, v7

    :goto_4
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ac:Z

    .line 3711
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getUnCheckDeptList()Ljava/util/ArrayList;

    move-result-object v1

    .line 3712
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->g:Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    invoke-virtual {v4, v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->setDisChooseList(Ljava/util/ArrayList;)V

    .line 3714
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getSelectedDeptList()Ljava/util/ArrayList;

    move-result-object v1

    .line 3715
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->g:Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    invoke-virtual {v4, v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->setChoosedList(Ljava/util/ArrayList;)V

    .line 3716
    iget-boolean v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ac:Z

    if-nez v4, :cond_5

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_15

    :cond_5
    move v1, v7

    :goto_5
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ac:Z

    .line 3718
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getRequestUserList()Ljava/util/ArrayList;

    move-result-object v1

    .line 3721
    iget-boolean v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->Y:Z

    if-nez v4, :cond_7

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->isForwardMsg()Z

    move-result v4

    if-nez v4, :cond_7

    .line 3722
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->isFromShare()Z

    move-result v4

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->an:Z

    if-nez v4, :cond_7

    .line 3723
    if-nez v1, :cond_6

    .line 3724
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3726
    :cond_6
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v4

    .line 3727
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 3728
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3731
    :cond_7
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {v4, v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->setRequestSelectList(Ljava/util/List;)V

    .line 3733
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getRequestDeptList()Ljava/util/ArrayList;

    move-result-object v1

    .line 3734
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->g:Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    invoke-virtual {v4, v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->setRequestSelectList(Ljava/util/List;)V

    .line 3736
    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    const/4 v4, 0x6

    if-eq v1, v4, :cond_8

    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    const/4 v4, 0x5

    if-ne v1, v4, :cond_16

    .line 3737
    :cond_8
    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->g:Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->getRequestSelectResult()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    .line 3743
    :goto_6
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getLabelId()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->O:J

    .line 3745
    :cond_9
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->y:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->setChooseLimitTips(Ljava/lang/String;)V

    .line 3747
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getChooseResultHandler()Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ai:Ljava/io/Serializable;

    .line 3748
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ai:Ljava/io/Serializable;

    if-eqz v1, :cond_a

    .line 3749
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ai:Ljava/io/Serializable;

    invoke-static {v1}, Lfxd;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ai:Ljava/io/Serializable;

    .line 3752
    :cond_a
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getContactChooseCallback()Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    move-result-object v1

    invoke-static {v1}, Lfxd;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    .line 3753
    if-eqz v1, :cond_b

    instance-of v4, v1, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    if-eqz v4, :cond_b

    .line 3754
    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->aj:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    .line 3755
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->aj:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->setChooseCallback(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;)V

    .line 3757
    :cond_b
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->isEnableAutoJumpDepart()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ag:Z

    .line 3762
    const-string/jumbo v1, "fragment_key"

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getInitFragmentKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3763
    const-string/jumbo v1, "title"

    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->z:Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3764
    const-string/jumbo v1, "bread_node_name"

    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->C:Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3765
    const-string/jumbo v1, "display_enterprise_oid"

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->H:J

    invoke-virtual {v2, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3766
    const-string/jumbo v1, "orerate_org"

    iget v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->F:I

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3767
    const-string/jumbo v1, "key_org_auth_level"

    iget v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->J:I

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3768
    const-string/jumbo v1, "show_crm_customer"

    iget-boolean v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->Z:Z

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3769
    const-string/jumbo v1, "key_org_role"

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getUserRole()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3770
    const-string/jumbo v1, "display_department_oid"

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->K:J

    invoke-virtual {v2, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3771
    const-string/jumbo v1, "node"

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4788
    :cond_c
    :goto_7
    sget v1, Lezg$h;->tv_select_count:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->at:Landroid/widget/TextView;

    .line 4789
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->at:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4790
    sget v1, Lezg$h;->btn_ok:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->as:Landroid/widget/Button;

    .line 4791
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->as:Landroid/widget/Button;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->aC:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4792
    sget v1, Lezg$h;->rl_select_result:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->au:Landroid/widget/RelativeLayout;

    .line 4794
    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    if-eq v1, v9, :cond_d

    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    if-eq v1, v7, :cond_d

    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_27

    .line 4797
    :cond_d
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->au:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4805
    :goto_8
    sget v1, Lezg$h;->view_bread:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ap:Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;

    .line 4806
    sget v1, Lezg$h;->ll_bread_crumbs:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->aq:Landroid/view/View;

    .line 4807
    sget v1, Lezg$h;->ll_union_org_des:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ar:Landroid/view/View;

    .line 4809
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ap:Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;

    new-instance v2, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$21;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$21;-><init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;->setBreakClickListener(Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView$a;)V

    .line 282
    sget v1, Lezg$l;->ding_create_select_user:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 283
    const-string/jumbo v1, "userType=ding"

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->B:Ljava/lang/String;

    .line 294
    :goto_9
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->z:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 295
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 300
    :goto_a
    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ak:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2d

    .line 301
    iget-wide v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->H:J

    invoke-static {v2, v3}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(J)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->o:Ljava/util/List;

    .line 5349
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->showLoadingDialog()V

    .line 5350
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v2

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->H:J

    const-string/jumbo v1, "EVENTBUTLER"

    .line 5351
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$1;-><init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V

    const-class v9, Lcma;

    invoke-interface {v1, v3, v9, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 5350
    invoke-interface {v2, v4, v5, v1}, Lezt;->a(JLcma;)V

    .line 311
    :goto_b
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->v()V

    .line 6311
    new-instance v1, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$23;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$23;-><init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->aB:Lcjo$a;

    .line 6332
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->aB:Lcjo$a;

    invoke-interface {v1, v2}, Lfac;->a(Lcjo$a;)V

    .line 6432
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 6433
    const-string/jumbo v2, "com.workapp.add.new.fragment"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6434
    const-string/jumbo v2, "action_select_contact_result"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6435
    const-string/jumbo v2, "action_select_do_logic_fail"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6436
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->aA:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 314
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p()V

    .line 315
    invoke-virtual {p0, v8}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->b(Z)V

    .line 317
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ae:Z

    if-eqz v1, :cond_2f

    .line 318
    const-string/jumbo v1, "LocalContactFragment"

    sget v2, Lezg$l;->tab_local_contact:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_e
    :goto_c
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 339
    return-void

    .line 3779
    :cond_f
    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->v:I

    if-ne v1, v4, :cond_1

    .line 3780
    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    iput v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->v:I

    goto/16 :goto_0

    .line 3668
    :cond_10
    const-string/jumbo v1, "show_crm_customer"

    invoke-virtual {v2, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->Z:Z

    goto/16 :goto_1

    .line 3692
    :catch_0
    move-exception v1

    const-string/jumbo v1, "UserContactActivity"

    const-string/jumbo v4, "ShareDataSource.getAndRemove failed!"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3693
    const/4 v1, 0x0

    .line 3694
    goto/16 :goto_2

    .line 3696
    :cond_11
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getMemoryFileDescriptor()I

    move-result v1

    .line 3697
    if-lez v1, :cond_12

    .line 3698
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getMemoryFileSize()I

    move-result v4

    .line 3699
    invoke-static {v1, v4}, Lcnf;->a(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    goto/16 :goto_2

    .line 3701
    :cond_12
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getSelectedUserList()Ljava/util/ArrayList;

    move-result-object v1

    goto/16 :goto_2

    .line 3707
    :cond_13
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {v4, v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->addDisChooseList(Ljava/util/ArrayList;)V

    goto/16 :goto_3

    :cond_14
    move v1, v8

    .line 3709
    goto/16 :goto_4

    :cond_15
    move v1, v8

    .line 3716
    goto/16 :goto_5

    .line 3739
    :cond_16
    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->getRequestSelectResult()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    .line 3740
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    iget v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    invoke-virtual {v1, v4}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->setChooseLimit(I)V

    goto/16 :goto_6

    .line 4471
    :cond_17
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 4472
    const-string/jumbo v1, "im_navigator_from"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ay:Ljava/lang/String;

    .line 4473
    const-string/jumbo v1, "choose_mode"

    invoke-virtual {v2, v1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    .line 4474
    const-string/jumbo v1, "hide_org_external"

    invoke-virtual {v2, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->q:Z

    .line 4475
    const-string/jumbo v1, "show_label_contact"

    invoke-virtual {v2, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->r:Z

    .line 4476
    const-string/jumbo v1, "show_org_relation_contact"

    invoke-virtual {v2, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->s:Z

    .line 4477
    const-string/jumbo v1, "choose_people_action"

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->E:I

    .line 4479
    const-string/jumbo v1, "count_limit"

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    .line 4480
    const-string/jumbo v1, "count_limit"

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->v:I

    .line 4481
    const-string/jumbo v1, "count_least"

    invoke-virtual {v2, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->w:I

    .line 4482
    const-string/jumbo v1, "intent_key_is_memory_mode"

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ah:Z

    .line 4485
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v3, "f_user_choose_contact_limit_new_logic_v2"

    invoke-virtual {v1, v3}, Lchx;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    if-eqz v1, :cond_18

    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_19

    .line 4486
    :cond_18
    iput-boolean v7, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ah:Z

    .line 4487
    const v1, 0x7fffffff

    iput v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    .line 4488
    iput-boolean v7, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->u:Z

    .line 4491
    :cond_19
    const-string/jumbo v1, "count_limit_tips"

    sget v3, Lezg$l;->create_conversation_choose_limit:I

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->x:I

    .line 4492
    const-string/jumbo v1, "count_limit_str"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->y:Ljava/lang/String;

    .line 4493
    const-string/jumbo v1, "title"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->z:Ljava/lang/String;

    .line 4494
    const-string/jumbo v1, "activity_identify"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->A:Ljava/lang/String;

    .line 4495
    const-string/jumbo v1, "org_request_from_source_type"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->D:Ljava/lang/String;

    .line 4496
    const-string/jumbo v1, "orerate_org"

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->F:I

    .line 4498
    const-string/jumbo v1, "show_select_dialog_tips"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->am:Ljava/lang/String;

    .line 4499
    const-string/jumbo v1, "bread_node_name"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->C:Ljava/lang/String;

    .line 4500
    const-string/jumbo v1, "display_enterprise_oid"

    invoke-virtual {v2, v1, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->H:J

    .line 4501
    const-string/jumbo v1, "choose_enterprise_oid"

    invoke-virtual {v2, v1, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->I:J

    .line 4502
    const-string/jumbo v1, "conversation_id"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->M:Ljava/lang/String;

    .line 4503
    const-string/jumbo v1, "conversation_title"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->N:Ljava/lang/String;

    .line 4504
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->M:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 4505
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->M:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->b(Ljava/lang/String;)V

    .line 4507
    :cond_1a
    const-string/jumbo v1, "intent_key_filter_model"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->al:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .line 4508
    const-string/jumbo v1, "node"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 4509
    const-string/jumbo v1, "fragment_key"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->G:Ljava/lang/String;

    .line 4511
    const-string/jumbo v1, "key_need_change_dept"

    invoke-virtual {v2, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->aa:Z

    .line 4512
    const-string/jumbo v1, "show_group"

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->P:Z

    .line 4513
    const-string/jumbo v1, "show_header_existed_group"

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->Q:Z

    .line 4514
    const-string/jumbo v1, "show_header_f2f_create_group"

    invoke-virtual {v2, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->R:Z

    .line 4515
    const-string/jumbo v1, "intent_key_show_alpha_smart_devices"

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->S:Z

    .line 4516
    const-string/jumbo v1, "show_friends"

    invoke-virtual {v2, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->T:Z

    .line 4517
    const-string/jumbo v1, "show_local_contact"

    invoke-virtual {v2, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->U:Z

    .line 4518
    const-string/jumbo v1, "show_common_friends"

    invoke-virtual {v2, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->X:Z

    .line 4519
    const-string/jumbo v1, "can_choose_current_user"

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->Y:Z

    .line 4520
    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->I:J

    cmp-long v1, v4, v10

    if-lez v1, :cond_20

    const-string/jumbo v1, "show_crm_customer"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 4521
    iput-boolean v8, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->Z:Z

    .line 4525
    :goto_d
    const-string/jumbo v1, "intent_key_show_only_local_contact"

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ae:Z

    .line 4527
    const-string/jumbo v1, "KEY_IS_FROM_MANAGE_ORG_ACTIVITY"

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->L:Z

    .line 4528
    const-string/jumbo v1, "key_org_auth_level"

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->J:I

    .line 4529
    const-string/jumbo v1, "display_department_oid"

    invoke-virtual {v2, v1, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->K:J

    .line 4530
    const-string/jumbo v1, "org_start_type"

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ak:I

    .line 4532
    const-string/jumbo v1, "intent_key_support_fix_line"

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ab:Z

    .line 4533
    const-string/jumbo v1, "intent_key_deliver_error_result"

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ad:Z

    .line 4535
    const-string/jumbo v1, "intent_key_enable_auto_jump_depart"

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ag:Z

    .line 4537
    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    if-eq v1, v9, :cond_1f

    .line 4538
    const-string/jumbo v1, "unchecked_users"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4539
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {v3, v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->setDisChooseList(Ljava/util/ArrayList;)V

    .line 4542
    const-string/jumbo v1, "selectUserList"

    invoke-static {v1}, Lffv;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 4544
    :try_start_1
    const-string/jumbo v1, "selectUserList"

    invoke-static {v1}, Lffv;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4558
    :goto_e
    iget v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    if-eq v3, v7, :cond_23

    .line 4559
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {v3, v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->setChoosedList(Ljava/util/ArrayList;)V

    .line 4563
    :goto_f
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_24

    move v1, v7

    :goto_10
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ac:Z

    .line 4565
    const-string/jumbo v1, "unchecked_departments"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4566
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->g:Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    invoke-virtual {v3, v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->setDisChooseList(Ljava/util/ArrayList;)V

    .line 4568
    const-string/jumbo v1, "seleced_departments"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4569
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->g:Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    invoke-virtual {v3, v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->setChoosedList(Ljava/util/ArrayList;)V

    .line 4570
    iget-boolean v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ac:Z

    if-nez v3, :cond_1b

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_25

    :cond_1b
    move v1, v7

    :goto_11
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ac:Z

    .line 4572
    const-string/jumbo v1, "key_request_select_user_list"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4573
    const-string/jumbo v3, "filter_myself"

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 4575
    iget-boolean v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->Y:Z

    if-nez v4, :cond_1d

    const-string/jumbo v4, "msg_forward"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1d

    const-string/jumbo v4, "from_share"

    .line 4576
    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1d

    const-string/jumbo v4, "from_mail"

    .line 4577
    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1d

    if-nez v3, :cond_1d

    .line 4578
    if-nez v1, :cond_1c

    .line 4579
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4581
    :cond_1c
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v3

    .line 4582
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 4583
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4586
    :cond_1d
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {v3, v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->setRequestSelectList(Ljava/util/List;)V

    .line 4588
    const-string/jumbo v1, "key_request_select_dept_list"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4589
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->g:Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    invoke-virtual {v3, v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->setRequestSelectList(Ljava/util/List;)V

    .line 4591
    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    const/4 v3, 0x6

    if-eq v1, v3, :cond_1e

    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_26

    .line 4592
    :cond_1e
    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->g:Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->getRequestSelectResult()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    .line 4598
    :goto_12
    const-string/jumbo v1, "intent_key_label_id"

    invoke-virtual {v2, v1, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->O:J

    .line 4601
    :cond_1f
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->setChooseLimitTips(Ljava/lang/String;)V

    .line 4603
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "choose_people_from_contact_logic"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ai:Ljava/io/Serializable;

    .line 4604
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ai:Ljava/io/Serializable;

    if-eqz v1, :cond_c

    .line 4605
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ai:Ljava/io/Serializable;

    invoke-static {v1}, Lfxd;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ai:Ljava/io/Serializable;

    goto/16 :goto_7

    .line 4523
    :cond_20
    const-string/jumbo v1, "show_crm_customer"

    invoke-virtual {v2, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->Z:Z

    goto/16 :goto_d

    .line 4546
    :catch_1
    move-exception v1

    const-string/jumbo v1, "UserContactActivity"

    const-string/jumbo v3, "ShareDataSource.getAndRemove failed!"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4547
    const/4 v1, 0x0

    .line 4548
    goto/16 :goto_e

    .line 4550
    :cond_21
    const-string/jumbo v1, "memory_file_descriptor"

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4551
    if-lez v1, :cond_22

    .line 4552
    const-string/jumbo v3, "memory_file_size"

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 4553
    invoke-static {v1, v3}, Lcnf;->a(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    goto/16 :goto_e

    .line 4555
    :cond_22
    const-string/jumbo v1, "seleced_members"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto/16 :goto_e

    .line 4561
    :cond_23
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {v3, v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->addDisChooseList(Ljava/util/ArrayList;)V

    goto/16 :goto_f

    :cond_24
    move v1, v8

    .line 4563
    goto/16 :goto_10

    :cond_25
    move v1, v8

    .line 4570
    goto/16 :goto_11

    .line 4594
    :cond_26
    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->getRequestSelectResult()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    .line 4595
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    iget v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t:I

    invoke-virtual {v1, v3}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->setChooseLimit(I)V

    goto/16 :goto_12

    .line 4799
    :cond_27
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->au:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4800
    sget v1, Lezg$h;->ll_fragment_container:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 4801
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 4802
    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {p0, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 4803
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_8

    .line 284
    :cond_28
    sget v1, Lezg$l;->act_create_conversation:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 285
    const-string/jumbo v1, "userType=creategroup"

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->B:Ljava/lang/String;

    goto/16 :goto_9

    .line 286
    :cond_29
    sget v1, Lezg$l;->act_create_conference:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 287
    const-string/jumbo v1, "userType=call"

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->B:Ljava/lang/String;

    goto/16 :goto_9

    .line 288
    :cond_2a
    const-class v1, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 289
    const-string/jumbo v1, "userType=createneworg"

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->B:Ljava/lang/String;

    goto/16 :goto_9

    .line 291
    :cond_2b
    const-string/jumbo v1, "userType=contact"

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->B:Ljava/lang/String;

    goto/16 :goto_9

    .line 297
    :cond_2c
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v2, Lezg$l;->act_title_contact:I

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    goto/16 :goto_a

    .line 304
    :cond_2d
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->W:Z

    if-eqz v1, :cond_2e

    .line 305
    const-string/jumbo v1, "onversationMembersFragment"

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->G:Ljava/lang/String;

    .line 306
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->N:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->C:Ljava/lang/String;

    .line 308
    :cond_2e
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->G:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->C:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->H:J

    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    goto/16 :goto_b

    .line 319
    :cond_2f
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->V:Z

    if-eqz v1, :cond_30

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->P:Z

    if-eqz v1, :cond_30

    .line 320
    const-string/jumbo v1, "GroupConversationFragment"

    sget v2, Lezg$l;->my_group_conversation_new:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 321
    :cond_30
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ag:Z

    if-eqz v1, :cond_32

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->I:J

    cmp-long v1, v2, v10

    if-lez v1, :cond_32

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->H:J

    cmp-long v1, v2, v10

    if-nez v1, :cond_32

    .line 323
    iget-wide v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->I:J

    invoke-static {v2, v3}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(J)Ljava/util/List;

    move-result-object v0

    .line 324
    .local v0, "ownOrgNodeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v7, :cond_e

    .line 325
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 326
    .local v6, "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-eqz v6, :cond_e

    .line 327
    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v1, v2, :cond_31

    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v1, :cond_31

    .line 328
    const-string/jumbo v2, "OrgContactFragment"

    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->I:J

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    goto/16 :goto_c

    .line 329
    :cond_31
    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v1, v2, :cond_e

    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v1, :cond_e

    .line 330
    const-string/jumbo v2, "OrgContactFragment"

    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->I:J

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    goto/16 :goto_c

    .line 334
    .end local v0    # "ownOrgNodeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    .end local v6    # "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_32
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->o()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 335
    const-string/jumbo v1, "FriendsFragment"

    sget v2, Lezg$l;->tab_friends:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1338
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    invoke-static {v1}, Lcms;->a(Landroid/support/v4/app/Fragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1339
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 1366
    :goto_0
    return v1

    .line 15370
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    instance-of v1, v1, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;

    if-eqz v1, :cond_1

    .line 15374
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "intent_key_show_create_team_menu"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1344
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a:Z

    if-nez v1, :cond_2

    .line 1345
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1348
    :cond_2
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    if-ne v4, v1, :cond_3

    .line 1350
    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->F:I

    if-ne v1, v4, :cond_6

    .line 1352
    sget v1, Lezg$l;->more:I

    invoke-interface {p1, v3, v5, v5, v1}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    .line 1353
    .local v0, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    sget v2, Lezg$g;->menu_overflow:I

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1356
    sget v1, Lezg$l;->quit_org:I

    invoke-interface {v0, v3, v4, v3, v1}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1366
    .end local v0    # "subMenu":Landroid/view/SubMenu;
    :cond_3
    :goto_2
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0

    .line 15378
    :cond_4
    const/4 v1, 0x4

    sget v2, Lezg$l;->act_create_org:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 15379
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 15381
    const-string/jumbo v1, "pref_key_create_team_tips_shown"

    invoke-static {p0, v1, v3}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 15385
    const-string/jumbo v1, "pref_key_create_team_tips_shown"

    invoke-static {p0, v1, v5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 15387
    sget v1, Lezg$h;->view_create_team_tips:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->av:Landroid/view/View;

    .line 15389
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->av:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 15393
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->av:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 15394
    const-string/jumbo v1, "pref_key_create_team_tips_shown"

    invoke-static {p0, v1, v5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 15396
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->av:Landroid/view/View;

    sget v2, Lezg$h;->if_close:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 15398
    if-eqz v1, :cond_5

    .line 15399
    new-instance v2, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$24;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$24;-><init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15407
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->av:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$25;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$25;-><init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 1357
    :cond_6
    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->F:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 1359
    sget v1, Lezg$l;->more:I

    invoke-interface {p1, v3, v5, v5, v1}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    .line 1360
    .restart local v0    # "subMenu":Landroid/view/SubMenu;
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    sget v2, Lezg$g;->menu_overflow:I

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1362
    sget v1, Lezg$l;->quit_org_enterprise:I

    invoke-interface {v0, v3, v4, v3, v1}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1538
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ai:Ljava/io/Serializable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ai:Ljava/io/Serializable;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    if-eqz v1, :cond_0

    .line 1539
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->ai:Ljava/io/Serializable;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    .line 1540
    .local v0, "callback":Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;
    invoke-interface {v0}, Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;->onDestroy()V

    .line 1542
    .end local v0    # "callback":Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->j:Lfkn;

    .line 18113
    iget-object v1, v1, Lfkn;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1543
    iput-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->j:Lfkn;

    .line 1544
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->aB:Lcjo$a;

    invoke-interface {v1, v2}, Lfac;->b(Lcjo$a;)V

    .line 1545
    iput-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->aB:Lcjo$a;

    .line 1546
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->aA:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 1547
    iput-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->e:Lcoi;

    .line 1548
    invoke-super {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->onDestroy()V

    .line 1549
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x2

    .line 1417
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    .line 1418
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1420
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a:Z

    if-nez v1, :cond_6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_6

    .line 1421
    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p:I

    if-eq v3, v1, :cond_5

    .line 1422
    const-class v1, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1423
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    instance-of v1, v1, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;

    if-eqz v1, :cond_3

    .line 1424
    const-string/jumbo v1, "contact_create_team_add_member_ding_friend_back_btn_click"

    invoke-static {v1}, Lfxo;->b(Ljava/lang/String;)V

    .line 1429
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->g:Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->getChooseResult()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->getChooseResult()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1430
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t()V

    :goto_1
    move v1, v9

    .line 1460
    :goto_2
    return v1

    .line 1425
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k:Landroid/support/v4/app/Fragment;

    instance-of v1, v1, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;

    if-eqz v1, :cond_1

    .line 1426
    const-string/jumbo v1, "contact_create_team_add_member_mobile_friend_confirm_btn_click"

    invoke-static {v1}, Lfxo;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1432
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->finish()V

    goto :goto_1

    .line 1435
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->finish()V

    goto :goto_1

    .line 1438
    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v3, :cond_a

    .line 1439
    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->F:I

    if-ne v1, v4, :cond_8

    .line 1440
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->m:Lfjl;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->C:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->H:J

    iget-wide v6, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->K:J

    iget v8, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->J:I

    .line 16125
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v10, v2, Lfjl;->a:Landroid/app/Activity;

    invoke-interface {v1, v10}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v10

    const-string/jumbo v11, "https://qr.dingtalk.com/manage_org.html"

    new-instance v1, Lfjl$6;

    invoke-direct/range {v1 .. v8}, Lfjl$6;-><init>(Lfjl;Ljava/lang/String;JJI)V

    invoke-interface {v10, v11, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1442
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "org_management_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1443
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->finish()V

    :cond_7
    :goto_3
    move v1, v9

    .line 1450
    goto :goto_2

    .line 1444
    :cond_8
    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->F:I

    if-ne v1, v3, :cond_9

    .line 16467
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 16468
    sget v2, Lezg$l;->confrim_quit_org:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->sure:I

    new-instance v3, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$27;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$27;-><init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V

    .line 16469
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->cancel:I

    new-instance v3, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$26;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$26;-><init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V

    .line 16501
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 16506
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_3

    .line 1446
    :cond_9
    iget v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->F:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    .line 1447
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->m:Lfjl;

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->H:J

    .line 17139
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v3, v2, Lfjl;->a:Landroid/app/Activity;

    invoke-interface {v1, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v3, "https://qr.dingtalk.com/quit_org.html"

    new-instance v6, Lfjl$7;

    invoke-direct {v6, v2, v4, v5}, Lfjl$7;-><init>(Lfjl;J)V

    invoke-interface {v1, v3, v6}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1448
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->finish()V

    goto :goto_3

    .line 1451
    :cond_a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_b

    .line 1452
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->av:Landroid/view/View;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 1454
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1455
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "intent_key_org_create_promote"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1456
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lfls;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Landroid/os/Bundle;)V

    .line 1460
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_b
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto/16 :goto_2
.end method
