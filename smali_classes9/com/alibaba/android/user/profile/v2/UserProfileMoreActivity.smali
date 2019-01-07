.class public Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "UserProfileMoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private A:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field private B:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

.field private C:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;

.field private D:Landroid/content/BroadcastReceiver;

.field private E:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

.field private F:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

.field private G:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

.field private H:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

.field private I:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

.field private J:Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;

.field private K:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

.field a:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

.field private c:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

.field private d:J

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-class v0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->l:I

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->s:Ljava/util/Map;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->t:Ljava/util/Map;

    return-void
.end method

.method static synthetic A(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->i:Z

    return v0
.end method

.method static synthetic B(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 86
    iget v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->l:I

    return v0
.end method

.method static synthetic C(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->K:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;)Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->B:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;)Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->J:Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->y:Ljava/util/List;

    return-object p1
.end method

.method private static a(Landroid/content/Context;JLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgId"    # J
    .param p3, "fillData"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .param p4, "requestCode"    # I

    .prologue
    .line 1615
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1616
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "activity_identify"

    sget-object v2, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1617
    const-string/jumbo v1, "org_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1618
    const-string/jumbo v1, "employee_info"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1619
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1620
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0, v0, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1622
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Landroid/content/Context;JLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;I)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # J
    .param p4, "x3"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .param p5, "x4"    # I

    .prologue
    .line 86
    const/4 v0, 0x1

    invoke-static {p1, p2, p3, p4, v0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->a(Landroid/content/Context;JLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Z)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    .line 12052
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$13;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$13;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Z)V

    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 12075
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->d:J

    invoke-interface {v1, v2, v3, p1, v0}, Lezv;->b(JZLcma;)V

    .line 86
    return-void
.end method

.method private static a(J)Z
    .locals 6
    .param p0, "uid"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 335
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gtz v2, :cond_0

    .line 336
    sget-object v2, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "error uid: %d"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lfxo;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->z:Ljava/util/List;

    return-object p1
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 561
    sget v1, Lezg$h;->tv_delete_friend:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 562
    .local v0, "deleteFriendView":Landroid/widget/TextView;
    sget v1, Lezg$e;->ui_common_level1_text_color:I

    invoke-static {p0, v1}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 564
    iget-boolean v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->j:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->B:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->ACCEPTED:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    if-ne v1, v2, :cond_0

    .line 565
    sget v1, Lezg$l;->menu_to_accepted:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 566
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 567
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    :goto_0
    return-void

    .line 569
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->K:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->K:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->friendStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 570
    sget v1, Lezg$l;->dt_bizcard_delete_card:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 572
    new-instance v1, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$3;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 579
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->b()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;

    .prologue
    .line 86
    .line 10374
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->J:Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;

    .line 10375
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->J:Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;

    if-eqz v0, :cond_0

    .line 10379
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->H:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->J:Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;->isHide:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setToggleChecked(Z)V

    .line 10380
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->I:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->J:Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;->isShield:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setToggleChecked(Z)V

    .line 10381
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    if-eqz v0, :cond_0

    .line 10382
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->J:Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;->isShowMobile:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setToggleChecked(Z)V

    .line 86
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->r:Z

    return p1
.end method

.method private c()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 584
    sget v7, Lezg$h;->profile_cell_edit_my_org:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    .line 585
    .local v4, "editMyOrgCell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;
    sget v7, Lezg$h;->profile_cell_add_my_org:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    .line 587
    .local v1, "addMyOrgCell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;
    const/4 v2, 0x0

    .line 588
    .local v2, "canEditMyOrgCell":Z
    iget-object v7, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->s:Ljava/util/Map;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->s:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-nez v7, :cond_5

    .line 590
    :cond_0
    invoke-virtual {v1, v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setVisibility(I)V

    .line 591
    invoke-virtual {v4, v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setVisibility(I)V

    .line 607
    :goto_0
    sget v7, Lezg$h;->profile_cell_add_my_external:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    .line 608
    .local v0, "addMyExternalCell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;
    sget v7, Lezg$h;->profile_cell_edit_my_external:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    .line 609
    .local v3, "editMyExternalCell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;
    iget-boolean v7, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->h:Z

    if-eqz v7, :cond_9

    .line 610
    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setVisibility(I)V

    .line 611
    iget-object v7, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->x:Ljava/util/Map;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->x:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 612
    invoke-virtual {v3, v10}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setVisibility(I)V

    .line 613
    invoke-virtual {v3, p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    if-eqz v2, :cond_1

    .line 616
    invoke-virtual {v3, v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setVisibility(I)V

    .line 643
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->getVisibility()I

    move-result v7

    if-ne v7, v9, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->getVisibility()I

    move-result v7

    if-ne v7, v9, :cond_2

    .line 644
    sget v7, Lezg$h;->ll_add_my_org:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 647
    :cond_2
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->getVisibility()I

    move-result v7

    if-ne v7, v9, :cond_3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->getVisibility()I

    move-result v7

    if-ne v7, v9, :cond_3

    .line 648
    sget v7, Lezg$h;->ll_edit_my_org:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 651
    :cond_3
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->getVisibility()I

    move-result v7

    if-ne v7, v9, :cond_4

    .line 652
    sget v7, Lezg$h;->profile_cell_edit_my_external_tip:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 654
    :cond_4
    return-void

    .line 592
    .end local v0    # "addMyExternalCell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;
    .end local v3    # "editMyExternalCell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;
    :cond_5
    iget-object v7, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->u:Ljava/util/Map;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->u:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-nez v7, :cond_7

    .line 594
    :cond_6
    invoke-virtual {v4, v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setVisibility(I)V

    .line 596
    invoke-virtual {v1, v10}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setVisibility(I)V

    .line 597
    invoke-virtual {v1, p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 600
    :cond_7
    invoke-virtual {v4, v10}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setVisibility(I)V

    .line 601
    invoke-virtual {v4, p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    const/4 v2, 0x1

    .line 604
    invoke-virtual {v1, v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setVisibility(I)V

    goto/16 :goto_0

    .line 619
    .restart local v0    # "addMyExternalCell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;
    .restart local v3    # "editMyExternalCell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;
    :cond_8
    invoke-virtual {v3, v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setVisibility(I)V

    goto :goto_1

    .line 622
    :cond_9
    invoke-virtual {v3, v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setVisibility(I)V

    .line 623
    const/4 v5, 0x0

    .line 624
    .local v5, "myOrgSize":I
    iget-object v7, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->t:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 625
    .local v6, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    invoke-static {v6}, Lfls;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 626
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 629
    .end local v6    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_b
    iget-object v7, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->w:Ljava/util/Map;

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->w:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-ge v7, v5, :cond_d

    .line 630
    :cond_c
    invoke-virtual {v0, v10}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setVisibility(I)V

    .line 631
    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    if-eqz v2, :cond_1

    .line 638
    :cond_d
    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method static synthetic c(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 86
    .line 10532
    const-string/jumbo v0, "profile_special_focus_click"

    const-string/jumbo v1, "userType=profile"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 11315
    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10533
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v0, :cond_0

    .line 10537
    invoke-static {}, Lfln;->a()Lfln;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$29;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$29;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V

    const-class v4, Lcma;

    .line 10538
    invoke-static {v0, v4, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 10537
    invoke-virtual {v1, v2, v3, v0}, Lfln;->a(JLcma;)V

    .line 86
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->h:Z

    return v0
.end method

.method private d()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 1274
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->u:Ljava/util/Map;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->u:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-nez v5, :cond_1

    .line 1329
    :cond_0
    :goto_0
    return-void

    .line 1278
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1279
    .local v3, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1280
    .local v4, "oids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->u:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1281
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1282
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1284
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v2, v5, [Ljava/lang/String;

    .line 1286
    .local v2, "nameArr":[Ljava/lang/String;
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1287
    .local v0, "clickedItem":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1289
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 1290
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v5

    const-string/jumbo v6, "https://qr.dingtalk.com/contact/manage_staff.html"

    new-instance v7, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$19;

    invoke-direct {v7, p0, v4, v0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$19;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v5, v6, v7}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 1302
    :cond_3
    new-instance v5, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v6, Lezg$l;->choose_from_enterprise:I

    .line 1303
    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    .line 1304
    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    new-instance v7, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$21;

    invoke-direct {v7, p0, v0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$21;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v6, v5, v8, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    sget v6, Lezg$l;->cancel:I

    const/4 v7, 0x0

    .line 1310
    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    sget v6, Lezg$l;->sure:I

    new-instance v7, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$20;

    invoke-direct {v7, p0, v4, v0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$20;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 1311
    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    .line 1328
    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 86
    .line 11575
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v0, :cond_0

    .line 11579
    invoke-static {}, Lfln;->a()Lfln;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    const-string/jumbo v0, "EVENTBUTLER"

    .line 11580
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$30;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$30;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V

    const-class v5, Lcma;

    invoke-interface {v0, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 11579
    invoke-virtual {v1, v2, v3, v0}, Lfln;->b(JLcma;)V

    .line 86
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->f:Z

    return p1
.end method

.method private e()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 1332
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->s:Ljava/util/Map;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->s:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-nez v4, :cond_1

    .line 1407
    :cond_0
    :goto_0
    return-void

    .line 1337
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1338
    .local v1, "addOrgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1339
    .local v0, "addOrgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->s:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1340
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->u:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1341
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1342
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1345
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1350
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1351
    .local v2, "clickedItem":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 1352
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v4

    const-string/jumbo v5, "https://qr.dingtalk.com/contact/manage_staff.html"

    new-instance v6, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$22;

    invoke-direct {v6, p0, v0, v2, v1}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$22;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;)V

    invoke-interface {v4, v5, v6}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 1373
    :cond_4
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lezg$l;->choose_from_enterprise:I

    .line 1374
    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    .line 1375
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    new-instance v6, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$24;

    invoke-direct {v6, p0, v2}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$24;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v5, v4, v7, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lezg$l;->cancel:I

    const/4 v6, 0x0

    .line 1382
    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lezg$l;->sure:I

    new-instance v6, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$23;

    invoke-direct {v6, p0, v0, v2, v1}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$23;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;)V

    .line 1383
    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    .line 1405
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 86
    .line 12169
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 12170
    sget v1, Lezg$l;->ok:I

    new-instance v2, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$16;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$16;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->cancel:I

    new-instance v3, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$15;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$15;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V

    .line 12176
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 12186
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->y:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 12187
    :cond_0
    sget v1, Lezg$l;->black_list_desc2:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 12194
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 86
    return-void

    .line 12189
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 12190
    sget v2, Lezg$l;->black_list_desc1:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->o:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    sget v3, Lezg$l;->black_list_desc2:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 12191
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private f()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1410
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->t:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-nez v0, :cond_1

    .line 1455
    :cond_0
    :goto_0
    return-void

    .line 1415
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1416
    .local v7, "addOrgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1417
    .local v6, "addOrgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 1418
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-static {v0}, Lfls;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->w:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->w:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1419
    :cond_3
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1420
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1421
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1425
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 9458
    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;-><init>()V

    .line 9459
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->m:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    .line 9460
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->g:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 9461
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->n:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgNickName:Ljava/lang/String;

    .line 9468
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "org_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9469
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 9470
    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->companyName:Ljava/lang/String;

    .line 1430
    .local v4, "external":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_8

    .line 1431
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;JLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;I)V

    goto/16 :goto_0

    .line 9462
    .end local v4    # "external":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 9463
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgNickName:Ljava/lang/String;

    goto :goto_2

    .line 9465
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->realName:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgNickName:Ljava/lang/String;

    goto :goto_2

    .line 1433
    .restart local v4    # "external":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_8
    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v9, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1434
    .local v9, "clickedItem":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v11, v0, [Ljava/lang/String;

    .line 1435
    .local v11, "nameArr":[Ljava/lang/String;
    invoke-interface {v7, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1437
    new-instance v8, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v8, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1438
    .local v8, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v0, Lezg$l;->choose_from_enterprise:I

    invoke-virtual {v8, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1439
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$25;

    invoke-direct {v0, p0, v9}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$25;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v8, v11, v3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1445
    sget v0, Lezg$l;->cancel:I

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1446
    sget v0, Lezg$l;->sure:I

    new-instance v1, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$26;

    invoke-direct {v1, p0, v6, v9, v4}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$26;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1453
    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0
.end method

.method static synthetic f(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->r:Z

    return v0
.end method

.method private g()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v14, 0x1

    const/4 v12, 0x0

    .line 1477
    iget-object v10, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->x:Ljava/util/Map;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->x:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->z:Ljava/util/List;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->z:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1529
    :cond_0
    :goto_0
    return-void

    .line 1481
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1482
    .local v4, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1483
    .local v7, "oids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v10, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->x:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1484
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1485
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1488
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v14, :cond_5

    .line 1489
    const/4 v6, 0x0

    .line 1490
    .local v6, "oe":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1491
    .local v8, "oid":J
    iget-object v10, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->z:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1492
    .local v5, "o":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v5, :cond_3

    iget-wide v12, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v11, v12, v8

    if-nez v11, :cond_3

    .line 1493
    move-object v6, v5

    goto :goto_2

    .line 1496
    .end local v5    # "o":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_4
    if-eqz v6, :cond_0

    .line 1497
    invoke-static {p0, v8, v9, v6, v14}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->a(Landroid/content/Context;JLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;I)V

    goto :goto_0

    .line 1499
    .end local v6    # "oe":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v8    # "oid":J
    :cond_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v14, :cond_0

    .line 1500
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v12}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1501
    .local v1, "clickedItem":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    new-array v3, v10, [Ljava/lang/String;

    .line 1502
    .local v3, "nameArr":[Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1504
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1505
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v10, Lezg$l;->choose_from_enterprise:I

    invoke-virtual {v0, v10}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1506
    new-instance v10, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$27;

    invoke-direct {v10, p0, v1}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$27;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v0, v3, v12, v10}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1512
    sget v10, Lezg$l;->cancel:I

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1513
    sget v10, Lezg$l;->sure:I

    new-instance v11, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$28;

    invoke-direct {v11, p0, v7, v1}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$28;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v0, v10, v11}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1527
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0
.end method

.method static synthetic g(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 86
    .line 12239
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v0, :cond_0

    .line 12243
    invoke-static {}, Lfwv;->a()Lfwv;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$18;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$18;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V

    const-class v4, Lcma;

    invoke-static {v0, v4, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v2, v3, v0}, Lfwv;->b(JLcma;)V

    .line 12270
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->showLoadingDialog()V

    .line 86
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 86
    .line 12958
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 12959
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->dt_bizcard_delete_card_tips_AT:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->o:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->sure:I

    new-instance v2, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$8;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$8;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V

    .line 12960
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->cancel:I

    new-instance v2, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$7;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$7;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V

    .line 12967
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 12972
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 86
    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->c:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->z:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->y:Ljava/util/List;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->t:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->v:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->s:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->u:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->c()V

    return-void
.end method

.method static synthetic q(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->w:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->x:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->d:J

    return-wide v0
.end method

.method static synthetic t(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 86
    .line 12976
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12977
    sget v0, Lezg$l;->network_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 12978
    :goto_0
    return-void

    .line 12980
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->showLoadingDialog()V

    .line 12981
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v4, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$9;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$9;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V

    const-class v5, Lcma;

    invoke-interface {v0, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v1, v2, v3, v0}, Lezv;->a(JLcma;)V

    goto :goto_0
.end method

.method static synthetic u(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 86
    .line 13006
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13007
    sget v0, Lezg$l;->network_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 13008
    :goto_0
    return-void

    .line 13010
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->showLoadingDialog()V

    .line 13011
    invoke-static {}, Lfug;->a()Lfug;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v4, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$11;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$11;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V

    const-class v5, Lcma;

    invoke-interface {v0, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 13222
    new-instance v4, Lfug$4;

    invoke-direct {v4, v1, v0}, Lfug$4;-><init>(Lfug;Lcma;)V

    .line 13228
    iget-object v0, v1, Lfug;->a:Lcom/alibaba/android/user/namecard/service/CardIService;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Lcom/alibaba/android/user/namecard/service/CardIService;->discardRel(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method static synthetic v(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->g:Z

    return v0
.end method

.method static synthetic w(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic x(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->J:Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;

    return-object v0
.end method

.method static synthetic y(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->E:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    return-object v0
.end method

.method static synthetic z(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 86
    .line 14199
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v0, :cond_0

    .line 14203
    invoke-static {}, Lfwv;->a()Lfwv;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    const-string/jumbo v0, "EVENTBUTLER"

    .line 14204
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$17;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$17;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V

    const-class v5, Lcma;

    invoke-interface {v0, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 14203
    invoke-virtual {v1, v2, v3, v0}, Lfwv;->a(JLcma;)V

    .line 14235
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->showLoadingDialog()V

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 717
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    .line 718
    .local v6, "id":I
    sget v0, Lezg$h;->profile_cell_alias:I

    if-ne v6, v0, :cond_1

    .line 7032
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/set_alias.html"

    new-instance v2, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$12;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$12;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    sget v0, Lezg$h;->profile_cell_send_card:I

    if-ne v6, v0, :cond_3

    .line 7853
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7854
    new-instance v1, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;-><init>()V

    .line 7855
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v2, :cond_2

    .line 7856
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->avatarMediaId:Ljava/lang/String;

    .line 7857
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->name:Ljava/lang/String;

    .line 7858
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iput-wide v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->uid:J

    .line 7860
    :cond_2
    const-string/jumbo v2, "person_name_card"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7861
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1, p0, v5, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 722
    :cond_3
    sget v0, Lezg$h;->profile_cell_add_my_org:I

    if-ne v6, v0, :cond_4

    .line 723
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->e()V

    goto :goto_0

    .line 724
    :cond_4
    sget v0, Lezg$h;->profile_cell_edit_my_org:I

    if-ne v6, v0, :cond_5

    .line 725
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->d()V

    goto :goto_0

    .line 726
    :cond_5
    sget v0, Lezg$h;->profile_cell_add_my_external:I

    if-ne v6, v0, :cond_6

    .line 727
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->f()V

    goto :goto_0

    .line 728
    :cond_6
    sget v0, Lezg$h;->profile_cell_edit_my_external:I

    if-ne v6, v0, :cond_7

    .line 729
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->g()V

    goto :goto_0

    .line 730
    :cond_7
    sget v0, Lezg$h;->tv_short_cut:I

    if-ne v6, v0, :cond_c

    .line 8084
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v9, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 8152
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 8153
    const-string/jumbo v1, "content://com.android.launcher2.settings/favorites?notify=true"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 8154
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "title"

    aput-object v3, v2, v8

    const-string/jumbo v3, "iconResource"

    aput-object v3, v2, v7

    const-string/jumbo v3, "title=?"

    new-array v4, v7, [Ljava/lang/String;

    aput-object v9, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 8155
    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_9

    .line 8156
    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_8

    .line 8157
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8
    move v0, v7

    .line 8084
    :goto_1
    if-eqz v0, :cond_b

    .line 8085
    sget v0, Lezg$l;->contact_is_friend:I

    invoke-static {v0}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 8161
    :cond_9
    if-eqz v0, :cond_a

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_a

    .line 8162
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_a
    move v0, v8

    .line 8164
    goto :goto_1

    .line 8087
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$14;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$14;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V

    invoke-static {v0, v1, v2}, Lflo;->a(Ljava/lang/String;Ljava/lang/String;Lflo$a;)V

    goto/16 :goto_0

    .line 732
    :cond_c
    sget v0, Lezg$h;->tv_delete_friend:I

    if-ne v6, v0, :cond_d

    .line 8940
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8941
    sget v1, Lezg$l;->remove_friend_confirm:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->sure:I

    new-instance v2, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$6;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V

    .line 8942
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->cancel:I

    new-instance v2, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$5;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V

    .line 8949
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 8954
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 735
    :cond_d
    sget v0, Lezg$h;->tv_report:I

    if-ne v6, v0, :cond_0

    .line 736
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->d:J

    invoke-virtual {v0, p0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->i(Landroid/content/Context;J)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 137
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    sget v0, Lezg$j;->activity_user_profile_more:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->setContentView(I)V

    .line 2151
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 2152
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 2153
    if-eqz v5, :cond_0

    .line 2154
    const-string/jumbo v0, "user"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 2155
    const-string/jumbo v0, "key_orgs"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->y:Ljava/util/List;

    .line 2156
    const-string/jumbo v0, "intent_key_my_ext_org_id_map"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->z:Ljava/util/List;

    .line 2159
    :cond_0
    if-eqz v5, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-nez v0, :cond_3

    :cond_1
    move v0, v1

    .line 140
    :goto_0
    if-nez v0, :cond_c

    .line 141
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->finish()V

    .line 148
    :cond_2
    :goto_1
    return-void

    .line 2163
    :cond_3
    const-string/jumbo v0, "user_id"

    invoke-virtual {v4, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->d:J

    .line 2164
    const-string/jumbo v0, "friend_request_status"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2165
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->fromValue(I)Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->B:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    .line 2166
    const-string/jumbo v0, "local_contact"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->n:Ljava/lang/String;

    .line 2167
    const-string/jumbo v0, "show_local_contact"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->g:Z

    .line 2169
    const-string/jumbo v0, "intent_key_is_external_contact"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->h:Z

    .line 2170
    const-string/jumbo v0, "intent_key_share_mobile"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->f:Z

    .line 2171
    const-string/jumbo v0, "com.workapp.msg.send"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->e:Z

    .line 2172
    const-string/jumbo v0, "intent_key_send_friend_request"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->j:Z

    .line 2173
    const-string/jumbo v0, "intent_key_full_name"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->o:Ljava/lang/String;

    .line 2175
    const-string/jumbo v0, "friend_request_position"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->p:I

    .line 2176
    const-string/jumbo v0, "fr_source"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2177
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->fromValue(I)Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->C:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;

    .line 2178
    const-string/jumbo v0, "fr_source_title"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->q:Ljava/lang/String;

    .line 2180
    const-string/jumbo v0, "user_mobile"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->m:Ljava/lang/String;

    .line 2181
    const-string/jumbo v0, "key_from_black_list"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->i:Z

    .line 2182
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->i:Z

    if-eqz v0, :cond_4

    .line 2183
    const-string/jumbo v0, "list_view_position"

    const/4 v5, -0x1

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->l:I

    .line 2186
    :cond_4
    const-string/jumbo v0, "medal_visible"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->k:Z

    .line 2193
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 2194
    if-eqz v0, :cond_6

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v4, :cond_6

    .line 2195
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 2196
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->t:Ljava/util/Map;

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2197
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-boolean v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->managePermission:Z

    if-eqz v5, :cond_5

    .line 2198
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->s:Ljava/util/Map;

    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2203
    :cond_6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->v:Ljava/util/Map;

    .line 2204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->u:Ljava/util/Map;

    .line 2205
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->y:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2206
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 2208
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->t:Ljava/util/Map;

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2209
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->v:Ljava/util/Map;

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2211
    :cond_8
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->s:Ljava/util/Map;

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2212
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->u:Ljava/util/Map;

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2217
    :cond_9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->w:Ljava/util/Map;

    .line 2218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->x:Ljava/util/Map;

    .line 2219
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->z:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2220
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 2222
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->w:Ljava/util/Map;

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2223
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    if-eqz v5, :cond_a

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    iget-boolean v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->canEdit:Z

    if-eqz v5, :cond_a

    .line 2224
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->x:Ljava/util/Map;

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_b
    move v0, v3

    .line 2189
    goto/16 :goto_0

    .line 2462
    :cond_c
    sget v0, Lezg$h;->profile_cell_alias:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->c:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    .line 2463
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->c:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setContent(Ljava/lang/String;)V

    .line 2464
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->c:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2467
    sget v0, Lezg$h;->profile_cell_send_card:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    .line 2468
    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2471
    sget v0, Lezg$h;->profile_cell_concern:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    .line 2472
    invoke-static {}, Lflm;->a()Lflm;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v4, v6, v7}, Lflm;->a(J)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2473
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setToggleChecked(Z)V

    .line 2477
    :goto_5
    new-instance v4, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$33;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$33;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2489
    sget v0, Lezg$h;->profile_cell_share_phone:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    .line 2490
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->B:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    sget-object v4, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->ACCEPTED:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    if-ne v0, v4, :cond_12

    .line 2491
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setVisibility(I)V

    .line 2492
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->f:Z

    if-eqz v0, :cond_11

    .line 2493
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setToggleChecked(Z)V

    .line 2497
    :goto_6
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    new-instance v4, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$34;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$34;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2508
    :goto_7
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->c()V

    .line 3264
    sget v0, Lezg$h;->ll_cycle_privacy_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 3265
    sget v0, Lezg$h;->profile_cell_cycle_visible_to_him:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->H:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    .line 3266
    sget v0, Lezg$h;->profile_cell_cycle_visible_to_me:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->I:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    .line 3269
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    .line 3270
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4233
    sget v0, Lezg$h;->profile_cell_labels:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->F:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    .line 4234
    sget v0, Lezg$h;->profile_cell_medal:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->G:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    .line 4235
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->G:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->k:Z

    if-eqz v0, :cond_13

    move v0, v1

    :goto_8
    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setVisibility(I)V

    .line 4237
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->k:Z

    if-nez v0, :cond_d

    .line 4238
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->F:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    sget-object v4, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignContent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    invoke-virtual {v0, v2, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    .line 4241
    :cond_d
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->F:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    new-instance v4, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$1;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4247
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->F:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setVisibility(I)V

    .line 4249
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->G:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    new-instance v4, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$10;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$10;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2513
    sget v0, Lezg$h;->profile_cell_black_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->E:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    .line 2514
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v0, v4, v8

    if-lez v0, :cond_15

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->y:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2515
    :cond_e
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->E:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setVisibility(I)V

    .line 2516
    invoke-static {}, Lfwv;->a()Lfwv;

    move-result-object v0

    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v0, v4, v5}, Lfwv;->a(J)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2517
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->E:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setToggleChecked(Z)V

    .line 2522
    :goto_9
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->E:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    new-instance v3, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$2;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2541
    :goto_a
    sget v0, Lezg$h;->tv_short_cut:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2542
    iget-boolean v3, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->e:Z

    if-eqz v3, :cond_16

    .line 2543
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2544
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2549
    :goto_b
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->b()V

    .line 2551
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d()Z

    move-result v0

    .line 2552
    if-eqz v0, :cond_17

    .line 2553
    sget v0, Lezg$h;->tv_report:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4749
    :goto_c
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$4;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->D:Landroid/content/BroadcastReceiver;

    .line 4842
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4843
    const-string/jumbo v1, "com.workapp.alias_change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4844
    const-string/jumbo v1, "com.workapp.org.external.delete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4845
    const-string/jumbo v1, "com.workapp.org.external.update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4846
    const-string/jumbo v1, "com.workapp.org.external.added"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4847
    const-string/jumbo v1, "com.workapp.org.employee.add"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4848
    const-string/jumbo v1, "action_friend_request_status_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4849
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->D:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 146
    iget-wide v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->d:J

    .line 5387
    invoke-static {v2, v3}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->a(J)Z

    move-result v0

    if-nez v0, :cond_f

    .line 5391
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$32;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$32;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V

    const-class v4, Lcma;

    invoke-interface {v0, v1, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 5414
    invoke-static {}, Lfug;->a()Lfug;

    move-result-object v1

    .line 6143
    new-instance v4, Lfug$11;

    invoke-direct {v4, v1, v0}, Lfug$11;-><init>(Lfug;Lcma;)V

    .line 6150
    iget-object v0, v1, Lfug;->a:Lcom/alibaba/android/user/namecard/service/CardIService;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Lcom/alibaba/android/user/namecard/service/CardIService;->getCardDetail(Ljava/lang/Long;Liyv;)V

    .line 147
    :cond_f
    iget-wide v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->d:J

    .line 6343
    invoke-static {v2, v3}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->a(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6346
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$31;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$31;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V

    const-class v4, Lcma;

    invoke-interface {v0, v1, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 6370
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v1

    invoke-interface {v1, v2, v3, v0}, Lezv;->c(JLcma;)V

    goto/16 :goto_1

    .line 2475
    :cond_10
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setToggleChecked(Z)V

    goto/16 :goto_5

    .line 2495
    :cond_11
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setToggleChecked(Z)V

    goto/16 :goto_6

    .line 2504
    :cond_12
    sget v0, Lezg$h;->tv_share_photo_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2505
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setVisibility(I)V

    goto/16 :goto_7

    :cond_13
    move v0, v2

    .line 4235
    goto/16 :goto_8

    .line 2519
    :cond_14
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->E:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setToggleChecked(Z)V

    goto/16 :goto_9

    .line 2536
    :cond_15
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->E:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setVisibility(I)V

    goto/16 :goto_a

    .line 2546
    :cond_16
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b

    .line 2555
    :cond_17
    sget v0, Lezg$h;->tv_report:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 742
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->D:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->D:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 745
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 746
    return-void
.end method
