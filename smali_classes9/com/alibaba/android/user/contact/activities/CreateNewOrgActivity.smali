.class public Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "CreateNewOrgActivity.java"

# interfaces
.implements Lfgi$a;


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# instance fields
.field private A:Landroid/os/Handler;

.field private B:Lfgi;

.field private C:Ljava/lang/String;

.field private D:I

.field private E:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;

.field private O:Landroid/widget/TextView;

.field private P:I

.field private Q:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field private R:Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;

.field private S:Lcir;

.field private T:Landroid/content/BroadcastReceiver;

.field private U:Landroid/widget/ImageView;

.field private V:Landroid/view/View;

.field private W:Landroid/view/View;

.field private X:Lcom/alibaba/android/dingtalkbase/interfaces/ActivityTask;

.field private Y:[I

.field private Z:I

.field private aa:Landroid/widget/TextView;

.field private ab:I

.field private ac:Z

.field private ad:Lcom/alibaba/android/user/widget/CreateOrgPromoteDialog;

.field private ae:Landroid/support/v7/app/AlertDialog;

.field private c:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

.field private d:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

.field private e:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

.field private f:Ljava/lang/String;

.field private g:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/ListView;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/RelativeLayout;

.field private final n:I

.field private final o:I

.field private final p:I

.field private q:Z

.field private r:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private s:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private t:Z

.field private u:J

.field private v:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

.field private w:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 115
    const-class v0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->b:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":MANUAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 148
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->n:I

    .line 149
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->o:I

    .line 150
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->p:I

    .line 152
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->q:Z

    .line 158
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->t:Z

    .line 170
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->z:Z

    .line 172
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->A:Landroid/os/Handler;

    .line 188
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->J:Z

    .line 191
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->K:Z

    .line 193
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->L:Z

    .line 195
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->M:Z

    .line 1590
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;
    .param p1, "x1"    # Landroid/support/v7/app/AlertDialog;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->ae:Landroid/support/v7/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Lcir;)Lcir;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;
    .param p1, "x1"    # Lcir;

    .prologue
    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->S:Lcir;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->v:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->E:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->g:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;)Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;
    .param p1, "x1"    # Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->R:Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->C:Ljava/lang/String;

    return-object p1
.end method

.method private static a(Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "createNewOrgInfo"    # Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;

    .prologue
    .line 1183
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1184
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->corpId:Ljava/lang/String;

    .line 1185
    .local v0, "corpId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1186
    const-string/jumbo v0, ""

    .line 1189
    :cond_0
    const-string/jumbo v2, "__CORPID__"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1190
    const-string/jumbo v2, "__ORGID__"

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->orgId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1192
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->orgName:Ljava/lang/String;

    .line 1193
    .local v1, "orgName":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 1194
    const-string/jumbo v1, ""

    .line 1201
    :goto_0
    const-string/jumbo v2, "__ORGNAME__"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1203
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->industryObject:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    if-eqz v2, :cond_1

    .line 1204
    const-string/jumbo v2, "__INDUSTRYCODE__"

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->industryObject:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1208
    .end local v0    # "corpId":Ljava/lang/String;
    .end local v1    # "orgName":Ljava/lang/String;
    :cond_1
    return-object p0

    .line 1197
    .restart local v0    # "corpId":Ljava/lang/String;
    .restart local v1    # "orgName":Ljava/lang/String;
    :cond_2
    :try_start_0
    const-string/jumbo v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->j:Ljava/util/List;

    return-object p1
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "code"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "detailName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 905
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->c:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->getModel()Lcnk;

    move-result-object v0

    .line 907
    .local v0, "model":Lcnk;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 908
    invoke-virtual {v0, p2}, Lcnk;->d(Ljava/lang/String;)V

    .line 913
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->c:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Lcnk;)V

    .line 915
    sget v2, Lezg$h;->rl_org_type:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 916
    .local v1, "orgTypeRl":Landroid/widget/RelativeLayout;
    const/16 v2, 0x270f

    if-ne p1, v2, :cond_2

    .line 917
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->c:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    sget-object v3, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->AlignContent:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    invoke-virtual {v2, v7, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;)V

    .line 918
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 919
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 920
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v2, p3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 928
    :cond_0
    :goto_1
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->c(I)V

    .line 929
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->B:Lfgi;

    if-nez v2, :cond_3

    .line 930
    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->b(I)V

    .line 935
    :goto_2
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->aa:Landroid/widget/TextView;

    if-nez v2, :cond_4

    .line 943
    :goto_3
    return-void

    .line 910
    .end local v1    # "orgTypeRl":Landroid/widget/RelativeLayout;
    :cond_1
    sget v2, Lezg$l;->dt_select_required:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcnk;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 923
    .restart local v1    # "orgTypeRl":Landroid/widget/RelativeLayout;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->c:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    sget-object v3, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    invoke-virtual {v2, v7, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;)V

    .line 924
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 932
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->B:Lfgi;

    invoke-virtual {v2}, Lfgi;->getCount()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->b(I)V

    goto :goto_2

    .line 938
    :cond_4
    iget-boolean v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->z:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->t:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->J:Z

    if-nez v2, :cond_5

    iget v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->P:I

    if-gt v2, v4, :cond_6

    .line 939
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->aa:Landroid/widget/TextView;

    sget v3, Lezg$l;->dt_user_create_org_tips:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "create_org_limit_member"

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 941
    :cond_6
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->aa:Landroid/widget/TextView;

    sget v3, Lezg$l;->create_org_limit_count_tips:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->P:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Lcom/alibaba/android/user/model/OrgDetailObject;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;
    .param p1, "x1"    # Lcom/alibaba/android/user/model/OrgDetailObject;

    .prologue
    .line 111
    .line 16495
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 16496
    sget v1, Lezg$l;->dt_create_org_recovery_tips:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 16497
    sget v1, Lezg$l;->sure:I

    new-instance v2, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$26;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$26;-><init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Lcom/alibaba/android/user/model/OrgDetailObject;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 16541
    sget v1, Lezg$l;->cancel:I

    new-instance v2, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$27;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$27;-><init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 16547
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 111
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Ljava/lang/String;JLjava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 111
    .line 18161
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->t:Z

    if-eqz v0, :cond_1

    .line 18501
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 18502
    const-string/jumbo v1, "to_page"

    const-string/jumbo v2, "to_contact"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18503
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 18504
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->finish()V

    .line 18176
    :cond_0
    :goto_0
    return-void

    .line 18164
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->q:Z

    if-eqz v0, :cond_2

    .line 18166
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->i()V

    goto :goto_0

    .line 18170
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->L:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 18548
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->J:Z

    if-nez v0, :cond_3

    .line 18549
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "finish_activity"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 18552
    :cond_3
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 18553
    const-string/jumbo v1, "https://reservation.dingtalk.com/door?"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 18554
    const-string/jumbo v1, "orgId="

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 18555
    const-string/jumbo v1, "&source=cjtd"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 18557
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->f:Ljava/lang/String;

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 18558
    array-length v2, v1

    if-ne v2, v7, :cond_4

    .line 18559
    const-string/jumbo v2, "&province="

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 18560
    const-string/jumbo v2, "&city="

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    aget-object v1, v1, v4

    invoke-virtual {v2, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 18562
    :cond_4
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0, v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 18564
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->j()V

    .line 18565
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->finish()V

    goto :goto_0

    .line 18173
    :cond_5
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 18571
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18572
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, p4}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18577
    :goto_1
    invoke-static {v0, p5}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;)Ljava/lang/String;

    move-result-object v0

    .line 18578
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    invoke-virtual {v1, p0, v0, v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 18579
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->finish()V

    goto/16 :goto_0

    .line 18574
    :cond_6
    new-array v0, v7, [Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->y:Ljava/lang/String;

    aput-object v1, v0, v6

    const-string/jumbo v1, "&corpId="

    aput-object v1, v0, v3

    aput-object p4, v0, v4

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 18175
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 18583
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18584
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->G:Ljava/lang/String;

    invoke-static {v0, p5}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->G:Ljava/lang/String;

    .line 18585
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->G:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 18586
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->finish()V

    goto/16 :goto_0

    .line 19532
    :cond_8
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->J:Z

    if-nez v0, :cond_9

    .line 19533
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "finish_activity"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 19536
    :cond_9
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "https://industry-fab.dingtalk.com/custom/guide?corpId="

    aput-object v2, v1, v6

    aput-object p4, v1, v3

    .line 19537
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19536
    invoke-virtual {v0, p0, v1, v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 19539
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->j()V

    .line 19540
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->finish()V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Ljava/lang/String;Z)V
    .locals 12
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    .line 14263
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 14264
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->B:Lfgi;

    invoke-virtual {v0}, Lfgi;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 14265
    if-eqz v0, :cond_0

    iget-boolean v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdd:Z

    if-eqz v6, :cond_0

    .line 14269
    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->name:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 14273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14274
    const-string/jumbo v3, "type"

    const-string/jumbo v5, "5"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14275
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v5, "org_create_normal_error_click"

    invoke-interface {v3, v5, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 14277
    sget v0, Lezg$l;->settings_org_member_name_empty:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    move-object v5, v4

    .line 14059
    :goto_1
    if-eqz v5, :cond_5

    .line 15214
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->E:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v0, :cond_8

    .line 15215
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->E:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;)Lcfi;

    move-result-object v0

    .line 15220
    :goto_2
    iget-boolean v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->J:Z

    if-nez v3, :cond_1

    if-eqz p2, :cond_2

    .line 15221
    :cond_1
    new-instance v3, Lcfj;

    invoke-direct {v3}, Lcfj;-><init>()V

    .line 15222
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v3, Lcfj;->h:Ljava/lang/Boolean;

    .line 15223
    iput-object v3, v0, Lcfi;->l:Lcfj;

    .line 15226
    :cond_2
    iget-wide v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->u:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcfi;->a:Ljava/lang/Long;

    .line 15227
    iput-object p1, v0, Lcfi;->b:Ljava/lang/String;

    .line 15228
    const-string/jumbo v3, "{\"orgScal\":%d}"

    new-array v6, v1, [Ljava/lang/Object;

    iget v7, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->D:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcfi;->s:Ljava/lang/String;

    .line 15229
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->v:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcfi;->m:Ljava/lang/Integer;

    .line 15230
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->v:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    const/16 v6, 0x270f

    if-ne v3, v6, :cond_a

    .line 15231
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 15232
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 15236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15237
    const-string/jumbo v3, "type"

    const-string/jumbo v6, "3"

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15238
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v6, "org_create_normal_error_click"

    invoke-interface {v3, v6, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 15240
    sget v0, Lezg$l;->dt_org_input_industry_hint:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    move-object v3, v4

    .line 14062
    :goto_3
    if-eqz v3, :cond_5

    .line 14064
    iget-object v0, v3, Lcfi;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 14065
    const-string/jumbo v0, "contact_create_team_invite_code_enter"

    invoke-static {v0}, Lfxo;->b(Ljava/lang/String;)V

    .line 14067
    :cond_3
    const-string/jumbo v6, "contact_create_team_close_free_expert_service_btn_click"

    const-string/jumbo v7, "is_new=%d, if_expert_service=%d"

    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/Object;

    .line 14068
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    .line 15487
    iget-boolean v0, v0, Lccr;->b:Z

    .line 14068
    if-eqz v0, :cond_d

    move v0, v1

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v2

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->L:Z

    if-eqz v0, :cond_4

    move v2, v1

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v1

    .line 16315
    invoke-static {v4, v6, v7, v8}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14070
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->showLoadingDialog()V

    .line 14071
    new-instance v0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;-><init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Ljava/lang/String;Z)V

    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 14157
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    invoke-interface {v1, v3, v5, v4, v0}, Lezt;->a(Lcfi;Ljava/util/List;Lcom/alibaba/android/user/model/OrgAttachObject;Lcma;)V

    .line 111
    :cond_5
    return-void

    .line 14281
    :cond_6
    new-instance v6, Lcfb;

    invoke-direct {v6}, Lcfb;-><init>()V

    .line 14282
    iget-object v7, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->name:Ljava/lang/String;

    iput-object v7, v6, Lcfb;->b:Ljava/lang/String;

    .line 14283
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, Lcfb;->d:Ljava/lang/Long;

    .line 14284
    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 15044
    invoke-static {v7, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v8

    .line 14284
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, Lcfb;->a:Ljava/lang/Long;

    .line 14285
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->mobile:Ljava/lang/String;

    iput-object v0, v6, Lcfb;->c:Ljava/lang/String;

    .line 14286
    sget-object v0, Lffp;->a:Ljava/lang/Integer;

    iput-object v0, v6, Lcfb;->e:Ljava/lang/Integer;

    .line 14287
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 14290
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14291
    new-instance v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;-><init>()V

    .line 14292
    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->fromIDLModelList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->members:Ljava/util/List;

    .line 14293
    const-wide/16 v6, -0x1

    iput-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->id:J

    .line 14294
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v5, v0

    .line 14295
    goto/16 :goto_1

    .line 15217
    :cond_8
    new-instance v0, Lcfi;

    invoke-direct {v0}, Lcfi;-><init>()V

    goto/16 :goto_2

    .line 15243
    :cond_9
    iput-object v3, v0, Lcfi;->n:Ljava/lang/String;

    .line 15246
    :cond_a
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->h:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 15249
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->h()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 15251
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->x:Ljava/lang/String;

    iput-object v3, v0, Lcfi;->p:Ljava/lang/String;

    .line 15254
    :cond_b
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->f:Ljava/lang/String;

    iput-object v3, v0, Lcfi;->r:Ljava/lang/String;

    .line 15256
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "key_create_org_source"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 15257
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "key_create_org_source"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcfi;->t:Ljava/lang/Integer;

    :cond_c
    move-object v3, v0

    .line 15259
    goto/16 :goto_3

    :cond_d
    move v0, v2

    .line 14068
    goto/16 :goto_4
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Ljava/util/List;Ljava/util/Map;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/Map;

    .prologue
    .line 111
    .line 17875
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 17876
    :cond_0
    :goto_0
    return-void

    .line 17879
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17880
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 17882
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-direct {p0, v4, v5}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a(J)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->B:Lfgi;

    invoke-virtual {v1}, Lfgi;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 17886
    :cond_3
    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    invoke-static {v4, v5, v1, v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->addUserIdentityObject(JZLcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    move-result-object v4

    .line 17887
    iget v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    const/4 v5, 0x1

    if-eq v1, v5, :cond_4

    .line 17888
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 17889
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 17890
    const/4 v0, 0x0

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->mobile:Ljava/lang/String;

    .line 17895
    :cond_4
    :goto_2
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17892
    :cond_5
    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->mobile:Ljava/lang/String;

    goto :goto_2

    .line 17897
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 17900
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->B:Lfgi;

    invoke-virtual {v0, v2}, Lfgi;->e(Ljava/util/List;)V

    .line 17901
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->B:Lfgi;

    invoke-virtual {v0}, Lfgi;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->b(I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 9
    .param p1, "industrySetting"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1776
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1801
    :cond_0
    :goto_0
    return-void

    .line 1780
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1784
    .local v3, "industryObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "lowerLimit"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->Z:I

    .line 1785
    const-string/jumbo v6, "industry"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1786
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 1789
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->Y:[I

    .line 1791
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    .local v4, "n":I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 1792
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1793
    .local v5, "temp":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    .line 1794
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->Y:[I

    check-cast v5, Ljava/lang/Integer;

    .end local v5    # "temp":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v6, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1791
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1797
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "industryObject":Lorg/json/JSONObject;
    .end local v4    # "n":I
    :catch_0
    move-exception v1

    .line 1798
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1799
    const-string/jumbo v6, "user"

    const-string/jumbo v7, "CreateNewOrgActivity"

    const-string/jumbo v8, "industry limit json exception."

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 4
    .param p1, "hasOpenService"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 1721
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->L:Z

    .line 1723
    if-eqz p1, :cond_0

    .line 1724
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->N:Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->setVisibility(I)V

    .line 1725
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->O:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1727
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->N:Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->getModel()Lcnk;

    move-result-object v0

    .line 1728
    .local v0, "model":Lcnk;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcnk;->a(Z)V

    .line 1729
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->N:Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a(Lcnk;)V

    .line 1731
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->e:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    sget-object v2, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->AlignContent:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;)V

    .line 1737
    .end local v0    # "model":Lcnk;
    :goto_0
    return-void

    .line 1733
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->N:Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->setVisibility(I)V

    .line 1734
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->O:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1735
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->e:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    sget-object v2, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;)V

    goto :goto_0
.end method

.method private a(J)Z
    .locals 7
    .param p1, "uid"    # J

    .prologue
    const/4 v1, 0x1

    .line 1000
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->B:Lfgi;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->B:Lfgi;

    invoke-virtual {v2}, Lfgi;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1001
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->B:Lfgi;

    invoke-virtual {v2}, Lfgi;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 1002
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 1014
    .end local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    :goto_0
    return v1

    .line 1007
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->j:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 1008
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 1009
    .restart local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_2

    goto :goto_0

    .line 1014
    .end local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->L:Z

    return p1
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V
    .locals 11
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    .prologue
    const/4 v4, 0x1

    .line 111
    .line 13552
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->Q:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->Q:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 13556
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13557
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->B:Lfgi;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->B:Lfgi;

    invoke-virtual {v0}, Lfgi;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 13558
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->B:Lfgi;

    invoke-virtual {v0}, Lfgi;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 13559
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13563
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->C:Ljava/lang/String;

    sget-object v3, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->b:Ljava/lang/String;

    sget-object v0, Lflr;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v8, 0x0

    iget-boolean v9, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->K:Z

    new-instance v10, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$2;

    invoke-direct {v10, p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$2;-><init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V

    move-object v0, p0

    move v6, v4

    move v7, v4

    invoke-static/range {v0 .. v10}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZIZZZZLandroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->Q:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 111
    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Ljava/util/List;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 111
    .line 16838
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 16839
    :cond_0
    :goto_0
    return-void

    .line 16842
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16843
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 16844
    if-eqz v0, :cond_2

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 16845
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16849
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 16853
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->showLoadingDialog()V

    .line 17656
    sget-object v2, Lfbk$a;->a:Lfbk;

    .line 16854
    new-instance v0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$8;-><init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Ljava/util/List;)V

    const-class v3, Lcma;

    invoke-static {v0, v3, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v2, v1, v0}, Lfbk;->a(Ljava/util/List;Lcma;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Z)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;
    .param p1, "x1"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 111
    .line 13577
    if-eqz p1, :cond_0

    sget v0, Lezg$l;->settings_org_member_count_least_for_quick:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->P:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 13579
    :goto_0
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 13580
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 13581
    sget v0, Lezg$c;->add_org_member:I

    new-instance v2, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$3;-><init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 13591
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 111
    return-void

    .line 13577
    :cond_0
    sget v0, Lezg$l;->settings_org_member_count_least:I

    .line 13578
    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->P:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    .prologue
    .line 111
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->D:I

    return v0
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 831
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 834
    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 4
    .param p1, "code"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 946
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->J:Z

    if-eqz v0, :cond_0

    .line 947
    iput v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->P:I

    .line 959
    :goto_0
    return-void

    .line 950
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->z:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->ab:I

    if-lez v0, :cond_1

    .line 951
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->ab:I

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->P:I

    goto :goto_0

    .line 954
    :cond_1
    if-ltz p1, :cond_5

    .line 8764
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->Y:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->Y:[I

    array-length v0, v0

    if-nez v0, :cond_3

    .line 954
    :cond_2
    :goto_1
    if-eqz v1, :cond_5

    .line 955
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->Z:I

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->P:I

    goto :goto_0

    :cond_3
    move v0, v1

    .line 8767
    :goto_2
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->Y:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 8768
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->Y:[I

    aget v3, v3, v0

    if-ne p1, v3, :cond_4

    move v1, v2

    .line 8769
    goto :goto_1

    .line 8767
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 958
    :cond_5
    const-string/jumbo v0, "create_org_limit_member"

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->P:I

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->K:Z

    return v0
.end method

.method private d()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 962
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->g:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-nez v1, :cond_0

    .line 8981
    sget-object v1, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->b:Ljava/lang/String;

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$9;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$9;-><init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 977
    :goto_0
    return-void

    .line 967
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->e:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->getModel()Lcnk;

    move-result-object v0

    .line 968
    .local v0, "model":Lcnk;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 969
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9690
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->f:Ljava/lang/String;

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 9691
    array-length v1, v2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    .line 9692
    sget-object v1, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->b:Ljava/lang/String;

    const-string/jumbo v2, "cityService:%s not support order service"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->f:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9693
    invoke-direct {p0, v5}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a(Z)V

    .line 972
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->g:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils;->a(Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcnk;->d(Ljava/lang/String;)V

    .line 976
    :goto_2
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->e:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Lcnk;)V

    goto :goto_0

    .line 9697
    :cond_2
    new-instance v1, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$20;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$20;-><init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V

    const-class v3, Lcma;

    invoke-static {v1, v3, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 10037
    sget-object v3, Lfbc;->a:Lfbc;

    if-nez v3, :cond_3

    .line 10038
    new-instance v3, Lfbc;

    invoke-direct {v3}, Lfbc;-><init>()V

    sput-object v3, Lfbc;->a:Lfbc;

    .line 10040
    :cond_3
    sget-object v3, Lfbc;->a:Lfbc;

    .line 9716
    aget-object v4, v2, v4

    const/4 v5, 0x2

    aget-object v2, v2, v5

    .line 10045
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 10046
    :cond_4
    if-eqz v1, :cond_1

    .line 10047
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "Bad param of state or city."

    invoke-interface {v1, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 10052
    :cond_5
    new-instance v5, Lfbc$1;

    invoke-direct {v5, v3, v1}, Lfbc$1;-><init>(Lfbc;Lcma;)V

    .line 10059
    const-class v1, Lcom/alibaba/android/user/idl/services/IDLReservationService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/IDLReservationService;

    .line 10060
    invoke-interface {v1, v4, v2, v5}, Lcom/alibaba/android/user/idl/services/IDLReservationService;->cityCanService(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    goto :goto_1

    .line 974
    :cond_6
    sget v1, Lezg$l;->input_optional:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcnk;->d(Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a(Z)V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->J:Z

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->v:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    return-object v0
.end method

.method private g()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1019
    const-string/jumbo v0, "pref_key_user_industry_switch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->K:Z

    if-nez v0, :cond_1

    .line 1050
    :cond_0
    :goto_0
    return-void

    .line 1023
    :cond_1
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v1

    new-instance v0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$10;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$10;-><init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V

    const-class v2, Lcma;

    invoke-static {v0, v2, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v1, v0}, Lfac;->a(Lcma;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->z:Z

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lfgi;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->B:Lfgi;

    return-object v0
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->y:Ljava/lang/String;

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

.method static synthetic i(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    .prologue
    .line 111
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->P:I

    return v0
.end method

.method private i()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1474
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->dismissLoadingDialog()V

    .line 1475
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->w:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->w:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1476
    .local v0, "mTempMobile":Ljava/lang/String;
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/pwd.html"

    new-instance v3, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$18;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$18;-><init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1483
    return-void
.end method

.method private j()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1642
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->K:Z

    if-eqz v1, :cond_0

    .line 1643
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "pref_create_org_times"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    .line 1644
    .local v0, "times":I
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "pref_create_org_times"

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1646
    .end local v0    # "times":I
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->g()V

    return-void
.end method

.method static synthetic k(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->E:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    return-object v0
.end method

.method private k()Z
    .locals 1

    .prologue
    .line 1654
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->t:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->J:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic l(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->c()V

    return-void
.end method

.method static synthetic m(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->R:Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->U:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->d()V

    return-void
.end method

.method static synthetic p(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->t:Z

    return v0
.end method

.method static synthetic q(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->h:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->g:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 1619
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->b(I)V

    .line 1620
    return-void
.end method

.method b(I)V
    .locals 6
    .param p1, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1623
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->l:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1636
    :cond_0
    :goto_0
    return-void

    .line 1626
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->k:Landroid/widget/TextView;

    sget v1, Lezg$l;->add_org_member_count:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    .line 1627
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 1626
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1628
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->P:I

    if-ge p1, v0, :cond_2

    .line 1629
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1630
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->l:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_contact_create_team_member_less_tip:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->P:I

    sub-int/2addr v3, p1

    .line 1632
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 1630
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1634
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->l:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1741
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/UserBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1742
    const/16 v2, 0x3e9

    if-ne p1, v2, :cond_0

    if-nez p3, :cond_1

    .line 1761
    :cond_0
    :goto_0
    return-void

    .line 1746
    :cond_1
    const-string/jumbo v2, "intent_key_team_scale_object"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;

    if-eqz v2, :cond_4

    .line 1747
    const-string/jumbo v2, "intent_key_team_scale_object"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;

    .line 1748
    .local v1, "teamScaleObject":Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;
    iget v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;->id:I

    iput v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->D:I

    .line 1749
    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;->text:Ljava/lang/String;

    .line 1754
    .end local v1    # "teamScaleObject":Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;
    .local v0, "orgScaleText":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->d:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    if-eqz v2, :cond_0

    .line 1757
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1758
    :cond_2
    sget v2, Lezg$l;->input_optional:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1760
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->d:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->setContent(Ljava/lang/String;)V

    goto :goto_0

    .line 1751
    .end local v0    # "orgScaleText":Ljava/lang/String;
    :cond_4
    const-string/jumbo v2, "anchor_id"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->D:I

    .line 1752
    const-string/jumbo v2, "user_alias"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "orgScaleText":Ljava/lang/String;
    goto :goto_1
.end method

.method public onAttachedToWindow()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 437
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onAttachedToWindow()V

    .line 438
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->M:Z

    if-nez v1, :cond_0

    .line 439
    iput-boolean v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->M:Z

    .line 7458
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->t:Z

    if-eqz v1, :cond_4

    .line 8300
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v3

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->u:J

    new-instance v1, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$13;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$13;-><init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V

    const-class v6, Lcma;

    invoke-static {v1, v6, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-interface {v3, v4, v5, v1}, Lezt;->c(JLcma;)V

    .line 443
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->ac:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "pref_key_create_team_promote_shown"

    .line 444
    invoke-static {p0, v1, v0}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v2

    .line 446
    .local v0, "showCreateOrgPromote":Z
    :cond_1
    if-eqz v0, :cond_3

    .line 447
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->ad:Lcom/alibaba/android/user/widget/CreateOrgPromoteDialog;

    if-nez v1, :cond_2

    .line 448
    new-instance v1, Lcom/alibaba/android/user/widget/CreateOrgPromoteDialog;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/widget/CreateOrgPromoteDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->ad:Lcom/alibaba/android/user/widget/CreateOrgPromoteDialog;

    .line 450
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->ad:Lcom/alibaba/android/user/widget/CreateOrgPromoteDialog;

    invoke-virtual {v1}, Lcom/alibaba/android/user/widget/CreateOrgPromoteDialog;->show()V

    .line 452
    const-string/jumbo v1, "pref_key_create_team_promote_shown"

    invoke-static {p0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 454
    :cond_3
    return-void

    .line 7463
    .end local v0    # "showCreateOrgPromote":Z
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->X:Lcom/alibaba/android/dingtalkbase/interfaces/ActivityTask;

    if-eqz v1, :cond_6

    .line 8708
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->X:Lcom/alibaba/android/dingtalkbase/interfaces/ActivityTask;

    if-eqz v1, :cond_5

    .line 8712
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->showLoadingDialog()V

    .line 8713
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->X:Lcom/alibaba/android/dingtalkbase/interfaces/ActivityTask;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$6;-><init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V

    const-class v4, Lcom/alibaba/wukong/Callback;

    invoke-static {v1, v4, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    invoke-interface {v3, v1}, Lcom/alibaba/android/dingtalkbase/interfaces/ActivityTask;->run(Lcom/alibaba/wukong/Callback;)V

    .line 7465
    :cond_5
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->g()V

    goto :goto_0

    .line 7469
    :cond_6
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->J:Z

    if-eqz v1, :cond_7

    .line 7470
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->g()V

    goto :goto_0

    .line 7474
    :cond_7
    const-class v1, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v3, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$25;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$25;-><init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V

    invoke-interface {v1, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 1470
    .line 11393
    const-string/jumbo v1, "contact_create_team_cancel_btn_click"

    invoke-static {v1}, Lfxo;->b(Ljava/lang/String;)V

    .line 11394
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "experience_team"

    invoke-static {v1, v2}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 11395
    if-eqz v1, :cond_3

    .line 12376
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 12377
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->v:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->z:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->B:Lfgi;

    .line 12378
    invoke-virtual {v1}, Lfgi;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->P:I

    if-ge v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->J:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->t:Z

    if-nez v1, :cond_2

    .line 12379
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->h()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->D:I

    if-lez v1, :cond_2

    .line 12381
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->v:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    const/16 v2, 0x270f

    if-eq v1, v2, :cond_1

    .line 11395
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 11396
    const-string/jumbo v0, "org_create_shortstaff_pop"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 11397
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 11398
    new-instance v1, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;-><init>(Landroid/app/Activity;)V

    .line 11399
    sget v2, Lezg$l;->quit_create_dialog_title:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 13132
    iput-object v2, v1, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->a:Ljava/lang/String;

    .line 11400
    sget v2, Lezg$l;->quit_create_dialog_content:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 13137
    iput-object v2, v1, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->b:Ljava/lang/String;

    .line 11400
    sget v2, Lezg$l;->quit_create_dialog_right:I

    .line 11401
    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$15;

    invoke-direct {v3, p0, v0, v1}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$15;-><init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Ljava/lang/String;Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;

    move-result-object v0

    sget v1, Lezg$l;->quit_create_dialog_left:I

    .line 11414
    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$14;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$14;-><init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->b(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;

    move-result-object v0

    .line 11421
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->show()V

    .line 11422
    :goto_1
    return-void

    .line 12384
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 12385
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12389
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 11423
    :cond_3
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 11424
    sget v1, Lezg$l;->settings_org_add_member_quit:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 11425
    sget v1, Lezg$l;->sure:I

    new-instance v2, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$16;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$16;-><init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 11458
    sget v1, Lezg$l;->cancel:I

    new-instance v2, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$17;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$17;-><init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 11464
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 224
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 225
    sget v6, Lezg$j;->activity_create_neworg:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->setContentView(I)V

    .line 1814
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "display_enterprise_oid"

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->u:J

    .line 1815
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "fromSighUp"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->q:Z

    .line 1816
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "isv_code"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->x:Ljava/lang/String;

    .line 1817
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "isv_authorize_url"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->y:Ljava/lang/String;

    .line 1818
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "is_no_limit"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->z:Z

    .line 1819
    iget-boolean v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->z:Z

    if-nez v6, :cond_0

    .line 1820
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "intent_key_lower_limit"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->ab:I

    .line 1822
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "key_org_source"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->F:Ljava/lang/String;

    .line 1823
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "key_create_org_jump_url"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->G:Ljava/lang/String;

    .line 1824
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "title"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->H:Ljava/lang/String;

    .line 1825
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "media_id"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->I:Ljava/lang/String;

    .line 1826
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "intent_key_activity_task"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalkbase/interfaces/ActivityTask;

    iput-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->X:Lcom/alibaba/android/dingtalkbase/interfaces/ActivityTask;

    .line 1827
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "intent_key_org_create_promote"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->ac:Z

    .line 228
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->F:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "1"

    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->F:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 229
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->J:Z

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lezg$j;->header_create_org:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 232
    .local v0, "contentView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lezg$j;->footer_create_org:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 233
    .local v2, "footerView":Landroid/view/View;
    sget v6, Lezg$h;->org_member_list:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->i:Landroid/widget/ListView;

    .line 234
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 235
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v6, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 237
    sget v6, Lezg$h;->iv_banner:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->U:Landroid/widget/ImageView;

    .line 238
    sget v6, Lezg$h;->ll_create_multi_team_tips:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->V:Landroid/view/View;

    .line 239
    sget v6, Lezg$h;->top_divider:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->W:Landroid/view/View;

    .line 240
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->I:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 241
    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->I:Ljava/lang/String;

    .line 2624
    const-string/jumbo v6, ""

    .line 2627
    :try_start_0
    invoke-static {v7}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v8

    .line 2628
    if-eqz v8, :cond_2

    .line 2629
    invoke-static {v7}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 2635
    :cond_2
    invoke-static {p0}, Lcms;->a(Landroid/content/Context;)I

    move-result v7

    .line 2636
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v9

    if-gt v9, v7, :cond_3

    .line 2637
    invoke-virtual {v8}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v9

    if-le v9, v7, :cond_4

    .line 2638
    :cond_3
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v9

    .line 2639
    invoke-virtual {v9, v6, v7, v7}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 2644
    :cond_4
    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->U:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2645
    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->W:Landroid/view/View;

    if-eqz v7, :cond_5

    .line 2646
    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->W:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2648
    :cond_5
    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->U:Landroid/widget/ImageView;

    new-instance v9, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$5;

    invoke-direct {v9, p0, v8, v6}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$5;-><init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Lcom/laiwang/protocol/media/MediaId;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 245
    :cond_6
    :goto_0
    sget v6, Lezg$h;->deploy_toggle:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;

    iput-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->N:Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;

    .line 246
    sget v6, Lezg$h;->deploy_toggle_tip:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->O:Landroid/widget/TextView;

    .line 247
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->N:Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;

    new-instance v7, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$1;

    invoke-direct {v7, p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 256
    sget v6, Lezg$h;->item_org_region:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    iput-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->e:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    .line 257
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->e:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->setVisibility(I)V

    .line 258
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->e:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    new-instance v7, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$11;

    invoke-direct {v7, p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$11;-><init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->d()V

    .line 3661
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->S:Lcir;

    if-nez v6, :cond_7

    .line 3662
    new-instance v6, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$19;

    invoke-direct {v6, p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$19;-><init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V

    iput-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->S:Lcir;

    .line 3680
    :cond_7
    invoke-static {p0}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->S:Lcir;

    .line 4284
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->b(Lcir;ZZ)V

    .line 276
    sget v6, Lezg$h;->et_org_name:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 277
    sget v6, Lezg$h;->ce_org_industry_name:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 278
    sget v6, Lezg$h;->rl_add_member:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->m:Landroid/widget/RelativeLayout;

    .line 279
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->m:Landroid/widget/RelativeLayout;

    new-instance v7, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$21;

    invoke-direct {v7, p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$21;-><init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    sget v6, Lezg$h;->item_org_type:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    iput-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->c:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    .line 289
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->c:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    new-instance v7, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$22;

    invoke-direct {v7, p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$22;-><init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    const/4 v6, -0x1

    invoke-direct {p0, v6}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->c(I)V

    .line 298
    sget v6, Lezg$h;->item_org_scale:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    iput-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->d:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    .line 299
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->d:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    new-instance v7, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$23;

    invoke-direct {v7, p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$23;-><init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    sget v6, Lezg$h;->tv_member_limit:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->aa:Landroid/widget/TextView;

    .line 309
    iget-boolean v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->z:Z

    if-eqz v6, :cond_11

    .line 310
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->aa:Landroid/widget/TextView;

    sget v7, Lezg$l;->dt_user_create_org_tips:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "create_org_limit_member"

    const/4 v11, 0x6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {p0, v10, v11}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    :goto_1
    new-instance v6, Lfgi;

    invoke-direct {v6, p0}, Lfgi;-><init>(Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->B:Lfgi;

    .line 316
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->B:Lfgi;

    .line 5171
    iput-object p0, v6, Lfgi;->a:Lfgi$a;

    .line 318
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->w:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 319
    iget-boolean v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->J:Z

    if-eqz v6, :cond_13

    .line 321
    sget v7, Lezg$l;->create_org_name_exp:I

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->w:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->w:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    :goto_2
    aput-object v6, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->C:Ljava/lang/String;

    .line 322
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->c()V

    .line 325
    new-instance v6, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    invoke-direct {v6}, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;-><init>()V

    iput-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->v:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    .line 326
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->v:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    const/16 v7, 0x270f

    iput v7, v6, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    .line 327
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->v:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    sget v7, Lezg$l;->dt_contact_create_organization_custom_industry:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->name:Ljava/lang/String;

    .line 328
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->v:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    iget v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->v:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->name:Ljava/lang/String;

    sget v8, Lezg$l;->create_org_type_exp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->v:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    iget-object v9, v9, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->mediaId:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    invoke-direct {p0, v6, v7, v8}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 333
    :goto_3
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->w:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-eqz v6, :cond_f

    .line 334
    iget-wide v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->u:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_a

    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->w:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v6, :cond_a

    .line 335
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->w:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 336
    .local v5, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v5, :cond_8

    iget-wide v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-wide v10, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->u:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_8

    .line 337
    iget-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    iput-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->C:Ljava/lang/String;

    .line 338
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->c()V

    .line 342
    .end local v5    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_9
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->t:Z

    .line 344
    :cond_a
    iget-boolean v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->t:Z

    if-nez v6, :cond_b

    iget-boolean v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->J:Z

    if-eqz v6, :cond_c

    .line 345
    :cond_b
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->aa:Landroid/widget/TextView;

    sget v7, Lezg$l;->dt_user_create_org_tips:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "create_org_limit_member"

    const/4 v11, 0x6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {p0, v10, v11}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    :cond_c
    iget-boolean v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->t:Z

    if-nez v6, :cond_d

    .line 349
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;-><init>()V

    .line 350
    .local v1, "currentUser":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->w:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    iput-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->avatarMediaId:Ljava/lang/String;

    .line 351
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->w:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    iput-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->name:Ljava/lang/String;

    .line 352
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "+"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->w:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->w:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->mobile:Ljava/lang/String;

    .line 354
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->w:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    iput-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    .line 355
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdd:Z

    .line 356
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;>;"
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->B:Lfgi;

    invoke-virtual {v6, v4}, Lfgi;->a(Ljava/util/List;)V

    .line 361
    .end local v1    # "currentUser":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;>;"
    :cond_d
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->w:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->w:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 362
    :cond_e
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->K:Z

    .line 366
    :cond_f
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->i:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->B:Lfgi;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 368
    sget v6, Lezg$h;->btn_next:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->h:Landroid/widget/Button;

    .line 369
    iget-boolean v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->t:Z

    if-eqz v6, :cond_14

    .line 370
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->h:Landroid/widget/Button;

    sget v7, Lezg$l;->save:I

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 374
    :goto_4
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->h:Landroid/widget/Button;

    new-instance v7, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$24;

    invoke-direct {v7, p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$24;-><init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    sget v6, Lezg$h;->tv_member_count:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->k:Landroid/widget/TextView;

    .line 423
    sget v6, Lezg$h;->tv_member_count_tip:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->l:Landroid/widget/TextView;

    .line 424
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->B:Lfgi;

    invoke-virtual {v6}, Lfgi;->getCount()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->b(I)V

    .line 5738
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->T:Landroid/content/BroadcastReceiver;

    if-nez v6, :cond_10

    .line 5739
    new-instance v6, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$7;

    invoke-direct {v6, p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$7;-><init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V

    iput-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->T:Landroid/content/BroadcastReceiver;

    .line 5805
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 5806
    const-string/jumbo v7, "com.workapp.choose.people.from.contact"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5807
    const-string/jumbo v7, "action_key_select_org_type"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5808
    const-string/jumbo v7, "selector_region"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5809
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->T:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v6}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 6695
    :cond_10
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->H:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 6696
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->H:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 6703
    :goto_5
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v6}, Landroid/support/v7/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 428
    invoke-static {}, Lflr;->g()V

    .line 430
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    const-string/jumbo v7, "create_org_industry_limit_member"

    invoke-static {v6, v7}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 431
    .local v3, "industryString":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a(Ljava/lang/String;)V

    .line 432
    const-string/jumbo v6, "contact_create_team_page_enter"

    invoke-static {v6}, Lfxo;->b(Ljava/lang/String;)V

    .line 433
    return-void

    .line 312
    .end local v3    # "industryString":Ljava/lang/String;
    :cond_11
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->aa:Landroid/widget/TextView;

    sget v7, Lezg$l;->create_org_limit_count_tips:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->P:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 321
    :cond_12
    const-string/jumbo v6, ""

    goto/16 :goto_2

    .line 330
    :cond_13
    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 372
    :cond_14
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->h:Landroid/widget/Button;

    sget v7, Lezg$l;->create_org_immide:I

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_4

    .line 6697
    :cond_15
    iget-boolean v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->t:Z

    if-eqz v6, :cond_16

    .line 6698
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v7, Lezg$l;->title_create_org:I

    invoke-virtual {v6, v7}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    goto :goto_5

    .line 6700
    :cond_16
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v7, Lezg$l;->dt_contact_createorg_title:I

    invoke-virtual {v6, v7}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    goto :goto_5

    .line 2632
    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1340
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->q:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->t:Z

    if-nez v1, :cond_1

    .line 1341
    const/4 v1, 0x1

    sget v2, Lezg$l;->jump:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1342
    .local v0, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1351
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 1347
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->h()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->t:Z

    if-nez v1, :cond_0

    .line 1348
    const/4 v1, 0x3

    sget v2, Lezg$l;->dt_create_org_fill_invite_code:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1349
    .restart local v0    # "menuItem":Landroid/view/MenuItem;
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->T:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1488
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->T:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 1490
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->S:Lcir;

    if-eqz v0, :cond_1

    .line 1491
    invoke-static {p0}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->S:Lcir;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->b(Lcir;)V

    .line 1493
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->ae:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->ae:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1494
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->ae:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 1497
    :cond_2
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 1498
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 1356
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 1357
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->onBackPressed()V

    .line 1372
    :goto_0
    return v0

    .line 1359
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 1360
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->q:Z

    if-eqz v1, :cond_1

    .line 1361
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->i()V

    goto :goto_0

    .line 1363
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->finish()V

    goto :goto_0

    .line 1369
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 10596
    const-string/jumbo v1, "contact_create_team_fill_in_invitecode_click"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 10597
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 10598
    sget v2, Lezg$l;->input_optional:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 10599
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->E:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->E:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->inviteCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 10600
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->E:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->inviteCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 10602
    :cond_3
    new-array v2, v3, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v0

    .line 10603
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 10604
    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 10605
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10606
    sget v3, Lezg$l;->dt_create_org_fill_invite_code:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 10607
    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 10608
    sget v3, Lezg$l;->cancel:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 10609
    sget v3, Lezg$l;->sure:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$4;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$4;-><init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 10619
    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 10620
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 1372
    :cond_4
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto/16 :goto_0
.end method
