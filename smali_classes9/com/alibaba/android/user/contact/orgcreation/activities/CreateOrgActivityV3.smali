.class public Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "CreateOrgActivityV3.java"

# interfaces
.implements Lfkr$b;
.implements Lfla$a;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field private C:Lfla;

.field private D:Lfkv$a;

.field private E:Ljava/lang/String;

.field private F:I

.field private G:Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;

.field private H:Lcom/alibaba/android/user/model/PositionData;

.field private I:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:I

.field private S:Ljava/lang/String;

.field private T:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field private U:Lcir;

.field private V:Landroid/content/BroadcastReceiver;

.field private W:Landroid/widget/ImageView;

.field private X:Landroid/view/View;

.field private Y:Landroid/view/View;

.field private Z:Lcom/alibaba/android/dingtalkbase/interfaces/ActivityTask;

.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/PositionData;",
            ">;"
        }
    .end annotation
.end field

.field private aa:I

.field private ab:Lfks;

.field private ac:Lfky;

.field private ad:Z

.field private ae:Landroid/support/v7/app/AlertDialog;

.field private af:Lfla$d;

.field private ag:Lfla$c;

.field public b:Lcom/alibaba/android/user/model/PositionData;

.field private d:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

.field private e:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

.field private f:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

.field private g:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:D

.field private k:D

.field private l:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/ListView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/RelativeLayout;

.field private q:Lcom/alibaba/android/user/widget/CreateOrgPromoteDialog;

.field private final r:I

.field private final s:I

.field private final t:I

.field private u:Z

.field private v:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

.field private w:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private x:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

.field private y:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    const-class v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 169
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->i:Ljava/lang/String;

    .line 185
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->r:I

    .line 186
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->s:I

    .line 187
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->t:I

    .line 189
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->u:Z

    .line 203
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->B:Z

    .line 224
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->N:Z

    .line 229
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->O:Z

    .line 233
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->P:Z

    .line 235
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->Q:Z

    .line 238
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->S:Ljava/lang/String;

    .line 1038
    new-instance v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$10;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$10;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->af:Lfla$d;

    .line 1046
    new-instance v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$12;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$12;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->ag:Lfla$c;

    .line 2000
    return-void
.end method

.method static synthetic A(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic B(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->q()V

    return-void
.end method

.method static synthetic C(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->l:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    return-object v0
.end method

.method static synthetic D(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcir;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->U:Lcir;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;D)D
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
    .param p1, "x1"    # D

    .prologue
    .line 132
    iput-wide p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->k:D

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
    .param p1, "x1"    # I

    .prologue
    .line 132
    iput p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->F:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
    .param p1, "x1"    # Landroid/support/v7/app/AlertDialog;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->ae:Landroid/support/v7/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Lcir;)Lcir;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
    .param p1, "x1"    # Lcir;

    .prologue
    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->U:Lcir;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->x:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->l:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Lcom/alibaba/android/user/model/PositionData;)Lcom/alibaba/android/user/model/PositionData;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
    .param p1, "x1"    # Lcom/alibaba/android/user/model/PositionData;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->H:Lcom/alibaba/android/user/model/PositionData;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->E:Ljava/lang/String;

    return-object p1
.end method

.method private static a(Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "createNewOrgInfo"    # Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;

    .prologue
    .line 1536
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1537
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->corpId:Ljava/lang/String;

    .line 1538
    .local v0, "corpId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1539
    const-string/jumbo v0, ""

    .line 1542
    :cond_0
    const-string/jumbo v2, "__CORPID__"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1543
    const-string/jumbo v2, "__ORGID__"

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->orgId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1545
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->orgName:Ljava/lang/String;

    .line 1546
    .local v1, "orgName":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 1547
    const-string/jumbo v1, ""

    .line 1554
    :goto_0
    const-string/jumbo v2, "__ORGNAME__"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1556
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->industryObject:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    if-eqz v2, :cond_1

    .line 1557
    const-string/jumbo v2, "__INDUSTRYCODE__"

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->industryObject:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1561
    .end local v0    # "corpId":Ljava/lang/String;
    .end local v1    # "orgName":Ljava/lang/String;
    :cond_1
    return-object p0

    .line 1550
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

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "detailName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1231
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->d:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->getModel()Lcnk;

    move-result-object v0

    .line 1233
    .local v0, "model":Lcnk;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1234
    invoke-virtual {v0, p2}, Lcnk;->d(Ljava/lang/String;)V

    .line 1239
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->d:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Lcnk;)V

    .line 1241
    sget v2, Lezg$h;->rl_org_type:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 1242
    .local v1, "orgTypeRl":Landroid/widget/RelativeLayout;
    const/16 v2, 0x270f

    if-ne p1, v2, :cond_2

    .line 1243
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->d:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    sget-object v3, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->AlignContent:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    invoke-virtual {v2, v4, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;)V

    .line 1244
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1245
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1246
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v2, p3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1254
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->k()V

    .line 1255
    return-void

    .line 1236
    .end local v1    # "orgTypeRl":Landroid/widget/RelativeLayout;
    :cond_1
    sget v2, Lezg$l;->input_required:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcnk;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 1249
    .restart local v1    # "orgTypeRl":Landroid/widget/RelativeLayout;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->d:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    const/4 v3, 0x4

    sget-object v4, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->AlignContent:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;)V

    .line 1250
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private a(JLjava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;)V
    .locals 7
    .param p1, "orgId"    # J
    .param p3, "corpId"    # Ljava/lang/String;
    .param p4, "createNewOrgInfo"    # Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1515
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->D:Lfkv$a;

    if-eqz v0, :cond_0

    .line 1516
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->D:Lfkv$a;

    invoke-interface {v0}, Lfkv$a;->i()V

    .line 1517
    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->D:Lfkv$a;

    .line 1520
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->u:Z

    if-eqz v0, :cond_2

    .line 1522
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->p()V

    .line 1533
    :cond_1
    :goto_0
    return-void

    .line 1526
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->n()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8874
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8875
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8880
    :goto_1
    invoke-static {v0, p4}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;)Ljava/lang/String;

    move-result-object v0

    .line 8881
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    invoke-virtual {v1, p0, v0, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 9868
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->finish()V

    goto :goto_0

    .line 8877
    :cond_4
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->A:Ljava/lang/String;

    aput-object v1, v0, v4

    const-string/jumbo v1, "&corpId="

    aput-object v1, v0, v5

    aput-object p3, v0, v6

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1528
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->K:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 8886
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->K:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8887
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->K:Ljava/lang/String;

    invoke-static {v0, p4}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->K:Ljava/lang/String;

    .line 8888
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->K:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 8889
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->finish()V

    goto :goto_0

    .line 9860
    :cond_6
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->N:Z

    if-nez v0, :cond_7

    .line 9861
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "finish_activity"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 9864
    :cond_7
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "https://industry-fab.dingtalk.com/orgCreate/guide?corpId="

    aput-object v2, v1, v4

    aput-object p3, v1, v5

    .line 9865
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9864
    invoke-virtual {v0, p0, v1, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10064
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->O:Z

    if-eqz v0, :cond_3

    .line 10065
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "pref_create_org_times"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    .line 10066
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "pref_create_org_times"

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 132
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;IZZZZ)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # I
    .param p5, "x5"    # Z
    .param p6, "x6"    # Z
    .param p7, "x7"    # Z
    .param p8, "x8"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    .line 23087
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    .line 23088
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 23089
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 23091
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 23092
    check-cast p3, Ljava/util/ArrayList;

    .end local p3    # "x3":Ljava/util/List;
    invoke-virtual {v0, p3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->d(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 23095
    :cond_0
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->j(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 23096
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 23097
    sget v1, Lezg$l;->dt_createteam_add_admins_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 23098
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->e(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 23099
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->i(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 23100
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 23101
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->n(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 23102
    if-lez p4, :cond_1

    .line 23103
    invoke-virtual {v0, p4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 23105
    :cond_1
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->p(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 23106
    const-string/jumbo v1, "UsersFragment"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->g(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 23107
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 23108
    const-string/jumbo v2, "intent_key_contact_choose_request"

    .line 24053
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 23108
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 23109
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 132
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Lcfi;Ljava/lang/String;)V
    .locals 13
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
    .param p1, "x1"    # Lcfi;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 132
    .line 25463
    const-string/jumbo v0, "org_create_success"

    const-string/jumbo v1, "member=%d"

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->C:Lfla;

    invoke-virtual {v3}, Lfla;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    .line 26315
    invoke-static {v12, v0, v1, v2}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25465
    iput-boolean v8, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->O:Z

    .line 25467
    const-wide/16 v4, 0x0

    .line 25468
    const-string/jumbo v6, ""

    .line 25471
    new-instance v7, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;-><init>()V

    .line 25472
    if-eqz p1, :cond_0

    .line 25473
    iget-object v0, p1, Lcfi;->a:Ljava/lang/Long;

    .line 27044
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 25474
    iget-object v6, p1, Lcfi;->q:Ljava/lang/String;

    .line 25476
    iput-wide v4, v7, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->orgId:J

    .line 25477
    iput-object v6, v7, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->corpId:Ljava/lang/String;

    .line 25478
    iget-object v0, p1, Lcfi;->b:Ljava/lang/String;

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->orgName:Ljava/lang/String;

    .line 25481
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 25482
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->h:Ljava/lang/String;

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 25483
    if-eqz v0, :cond_1

    array-length v1, v0

    if-ne v1, v11, :cond_1

    .line 25484
    aget-object v1, v0, v9

    iput-object v1, v7, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->province:Ljava/lang/String;

    .line 25485
    aget-object v0, v0, v10

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->city:Ljava/lang/String;

    .line 25489
    :cond_1
    iget v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->F:I

    iput v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->scale:I

    .line 25490
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->x:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->industryObject:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    .line 25491
    new-array v0, v10, [Ljava/lang/String;

    const-string/jumbo v1, "pref_last_create_org_info"

    aput-object v1, v0, v8

    .line 25492
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    .line 25491
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27052
    const/4 v1, -0x1

    invoke-static {v0, v7, v1}, Lcmu;->a(Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 25494
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->dismissLoadingDialog()V

    .line 25495
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->m:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setClickable(Z)V

    .line 25497
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcfi;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 25500
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p1, Lcfi;->w:Ljava/lang/String;

    .line 25501
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->sure:I

    .line 25502
    invoke-virtual {v0, v1, v12}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$20;

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$20;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Ljava/lang/String;JLjava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;)V

    .line 25503
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 25508
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 25509
    :goto_0
    return-void

    .line 25510
    :cond_2
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a(JLjava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Lcom/alibaba/android/user/model/OrgDetailObject;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
    .param p1, "x1"    # Lcom/alibaba/android/user/model/OrgDetailObject;

    .prologue
    .line 132
    .line 22541
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 22542
    sget v1, Lezg$l;->dt_create_org_recovery_tips:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 22543
    sget v1, Lezg$l;->sure:I

    new-instance v2, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$36;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Lcom/alibaba/android/user/model/OrgDetailObject;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 22637
    sget v1, Lezg$l;->cancel:I

    new-instance v2, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$37;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$37;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 22643
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 132
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Lfom;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
    .param p1, "x1"    # Lfom;

    .prologue
    .line 132
    .line 25434
    const-string/jumbo v0, "12115"

    iget-object v1, p1, Lfom;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25435
    iget-object v0, p1, Lfom;->a:Ljava/lang/String;

    iget-object v1, p1, Lfom;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25436
    :goto_0
    return-void

    .line 25438
    :cond_0
    iget-object v0, p1, Lfom;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 25439
    :goto_1
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 25440
    sget v1, Lezg$l;->dt_create_team_repeat_corp_name_title:I

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 25441
    if-eqz v0, :cond_3

    sget v1, Lezg$l;->dt_create_team_repeat_corp_name_apply_message:I

    :goto_2
    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 25442
    if-eqz v0, :cond_4

    sget v1, Lezg$l;->dt_create_team_repeat_corp_name_ignore:I

    :goto_3
    new-instance v3, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$18;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$18;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 25448
    if-eqz v0, :cond_1

    .line 25449
    sget v0, Lezg$l;->dt_group_invite_apply:I

    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$19;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$19;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Lfom;)V

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 25458
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 25459
    const-string/jumbo v0, "org_create_same_name_warning_show"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 25438
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 25441
    :cond_3
    sget v1, Lezg$l;->dt_create_team_repeat_corp_name_admin_message:I

    goto :goto_2

    .line 25442
    :cond_4
    sget v1, Lezg$l;->and_tips_know:I

    goto :goto_3
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Ljava/lang/String;JLjava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;

    .prologue
    .line 132
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a(JLjava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Ljava/lang/String;Z)V
    .locals 12
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 132
    .line 17627
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 17628
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->C:Lfla;

    invoke-virtual {v0}, Lfla;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 17629
    if-eqz v0, :cond_0

    iget-boolean v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdd:Z

    if-eqz v6, :cond_0

    .line 17633
    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->name:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 17634
    const-string/jumbo v0, "org_create_normal_error_click"

    const-string/jumbo v3, "type=%d"

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 18315
    invoke-static {v4, v0, v3, v5}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17636
    sget v0, Lezg$l;->settings_org_member_name_empty:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    move-object v5, v4

    .line 17371
    :goto_1
    if-eqz v5, :cond_4

    .line 19567
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v0, :cond_7

    .line 19568
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;)Lcfi;

    move-result-object v0

    .line 19573
    :goto_2
    iget-boolean v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->N:Z

    if-nez v3, :cond_1

    if-eqz p2, :cond_2

    .line 19574
    :cond_1
    new-instance v3, Lcfj;

    invoke-direct {v3}, Lcfj;-><init>()V

    .line 19575
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v3, Lcfj;->h:Ljava/lang/Boolean;

    .line 19576
    iput-object v3, v0, Lcfi;->l:Lcfj;

    .line 19578
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->D:Lfkv$a;

    if-eqz v3, :cond_8

    .line 19579
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->D:Lfkv$a;

    invoke-interface {v3}, Lfkv$a;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcfi;->x:Ljava/lang/String;

    .line 19583
    :goto_3
    iput-object p1, v0, Lcfi;->b:Ljava/lang/String;

    .line 19584
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->o()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcfi;->s:Ljava/lang/String;

    .line 19585
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->x:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcfi;->m:Ljava/lang/Integer;

    .line 19586
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->x:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    const/16 v6, 0x270f

    if-ne v3, v6, :cond_a

    .line 19587
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 19588
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 19589
    const-string/jumbo v0, "org_create_normal_error_click"

    const-string/jumbo v3, "type=%d"

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 20315
    invoke-static {v4, v0, v3, v6}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19591
    sget v0, Lezg$l;->dt_org_input_industry_hint:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    move-object v3, v4

    .line 17374
    :goto_4
    if-eqz v3, :cond_4

    .line 17376
    iget-object v0, v3, Lcfi;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 17377
    const-string/jumbo v0, "contact_create_team_invite_code_enter"

    invoke-static {v0}, Lfxo;->b(Ljava/lang/String;)V

    .line 17379
    :cond_3
    const-string/jumbo v6, "contact_create_team_close_free_expert_service_btn_click"

    const-string/jumbo v7, "is_new=%d, if_expert_service=%d"

    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/Object;

    .line 17380
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    .line 21487
    iget-boolean v0, v0, Lccr;->b:Z

    .line 17380
    if-eqz v0, :cond_d

    move v0, v1

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v1

    .line 22315
    invoke-static {v4, v6, v7, v8}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17382
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->showLoadingDialog()V

    .line 17383
    new-instance v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$17;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$17;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Ljava/lang/String;Z)V

    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 17430
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    invoke-interface {v1, v3, v5, v4, v0}, Lezt;->b(Lcfi;Ljava/util/List;Lcom/alibaba/android/user/model/OrgAttachObject;Lcma;)V

    .line 132
    :cond_4
    return-void

    .line 17640
    :cond_5
    new-instance v6, Lcfb;

    invoke-direct {v6}, Lcfb;-><init>()V

    .line 17641
    iget-object v7, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->name:Ljava/lang/String;

    iput-object v7, v6, Lcfb;->b:Ljava/lang/String;

    .line 17642
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, Lcfb;->d:Ljava/lang/Long;

    .line 17643
    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 19044
    invoke-static {v7, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v8

    .line 17643
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, Lcfb;->a:Ljava/lang/Long;

    .line 17644
    iget-object v7, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->mobile:Ljava/lang/String;

    iput-object v7, v6, Lcfb;->c:Ljava/lang/String;

    .line 17645
    sget-object v7, Lffp;->a:Ljava/lang/Integer;

    iput-object v7, v6, Lcfb;->e:Ljava/lang/Integer;

    .line 17646
    iget-boolean v7, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdmin:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v6, Lcfb;->h:Ljava/lang/Boolean;

    .line 17647
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->jobDesc:Ljava/lang/String;

    iput-object v0, v6, Lcfb;->i:Ljava/lang/String;

    .line 17648
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 17651
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17652
    new-instance v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;-><init>()V

    .line 17653
    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->fromIDLModelList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->members:Ljava/util/List;

    .line 17654
    const-wide/16 v6, -0x1

    iput-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->id:J

    .line 17655
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v5, v0

    .line 17656
    goto/16 :goto_1

    .line 19570
    :cond_7
    new-instance v0, Lcfi;

    invoke-direct {v0}, Lcfi;-><init>()V

    goto/16 :goto_2

    .line 19581
    :cond_8
    const-string/jumbo v3, "user"

    sget-object v6, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->c:Ljava/lang/String;

    const-string/jumbo v7, "mQrcodePresenter null"

    invoke-static {v3, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 19594
    :cond_9
    iput-object v3, v0, Lcfi;->n:Ljava/lang/String;

    .line 19597
    :cond_a
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->m:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 19600
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->n()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 19602
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->z:Ljava/lang/String;

    iput-object v3, v0, Lcfi;->p:Ljava/lang/String;

    .line 19605
    :cond_b
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->h:Ljava/lang/String;

    iput-object v3, v0, Lcfi;->r:Ljava/lang/String;

    .line 19606
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->i:Ljava/lang/String;

    .line 21109
    invoke-static {v3, v10, v11}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 19606
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcfi;->y:Ljava/lang/Long;

    .line 19608
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "key_create_org_source"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 19609
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "key_create_org_source"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcfi;->t:Ljava/lang/Integer;

    :cond_c
    move-object v3, v0

    .line 19611
    goto/16 :goto_4

    :cond_d
    move v0, v2

    .line 17380
    goto/16 :goto_5
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Ljava/util/List;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v4, 0x1

    .line 132
    .line 25214
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25215
    :cond_0
    :goto_0
    return-void

    .line 25217
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 25218
    if-eqz v0, :cond_2

    .line 25219
    iput-boolean v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isFromQrcode:Z

    .line 25220
    iput-boolean v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdd:Z

    .line 25221
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdmin:Z

    .line 25222
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->applyReason:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string/jumbo v1, ""

    :goto_2
    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->applyReason:Ljava/lang/String;

    .line 25223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lezg$l;->dt_createteam_add_member_from_qrcode_tag:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->applyReason:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->applyReason:Ljava/lang/String;

    goto :goto_1

    .line 25222
    :cond_3
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->applyReason:Ljava/lang/String;

    goto :goto_2

    .line 25226
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->C:Lfla;

    invoke-virtual {v0, p1}, Lfla;->c(Ljava/util/List;)V

    .line 25227
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->C:Lfla;

    invoke-virtual {v0}, Lfla;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->b(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 132
    .line 24122
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 24142
    :cond_0
    :goto_0
    return-void

    .line 24126
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24127
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 24128
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 24129
    if-eqz v0, :cond_2

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 24130
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 24131
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 24133
    :cond_3
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 24138
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_5

    .line 24139
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 24140
    invoke-direct {p0, p1, v2, p2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 24145
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->showLoadingDialog()V

    .line 24656
    sget-object v3, Lfbk$a;->a:Lfbk;

    .line 24146
    new-instance v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$14;

    invoke-direct {v0, p0, v2, p1, p2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$14;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    const-class v2, Lcma;

    invoke-static {v0, v2, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v3, v1, v0}, Lfbk;->a(Ljava/util/List;Lcma;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/Map;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Z)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
    .param p1, "x1"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 132
    .line 16814
    if-eqz p1, :cond_0

    sget v0, Lezg$l;->settings_org_member_count_least_for_quick:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->R:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 16816
    :goto_0
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 16817
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 16818
    sget v0, Lezg$c;->add_org_member:I

    new-instance v2, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$5;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 16828
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 132
    return-void

    .line 16814
    :cond_0
    sget v0, Lezg$l;->settings_org_member_count_least:I

    .line 16815
    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->R:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .locals 9
    .param p3, "identity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "userIdentityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p2, "mobiles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 1173
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 1211
    :cond_0
    :goto_0
    return-void

    .line 1177
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1178
    .local v1, "memberObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1179
    .local v3, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    invoke-static {v6, v7, v4, v3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->addUserIdentityObject(JZLcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    move-result-object v0

    .line 1185
    .local v0, "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    iget v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    const/4 v6, 0x1

    if-eq v4, v6, :cond_2

    .line 1186
    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1187
    .local v2, "mobile":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1188
    iput-object v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->mobile:Ljava/lang/String;

    .line 1193
    .end local v2    # "mobile":Ljava/lang/String;
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->b:Lcom/alibaba/android/user/model/PositionData;

    if-eqz v4, :cond_3

    .line 1194
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->b:Lcom/alibaba/android/user/model/PositionData;

    iget-object v4, v4, Lcom/alibaba/android/user/model/PositionData;->code:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->jobDesc:Ljava/lang/String;

    .line 1195
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->b:Lcom/alibaba/android/user/model/PositionData;

    iget-object v4, v4, Lcom/alibaba/android/user/model/PositionData;->name:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->jobName:Ljava/lang/String;

    .line 1196
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->b:Lcom/alibaba/android/user/model/PositionData;

    iget-boolean v4, v4, Lcom/alibaba/android/user/model/PositionData;->custom:Z

    iput-boolean v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isCustomJobPosition:Z

    .line 1198
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1190
    .restart local v2    # "mobile":Ljava/lang/String;
    :cond_4
    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->mobile:Ljava/lang/String;

    goto :goto_2

    .line 1200
    .end local v0    # "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    .end local v2    # "mobile":Ljava/lang/String;
    .end local v3    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_5
    iput-object v8, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->b:Lcom/alibaba/android/user/model/PositionData;

    .line 1201
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1205
    const-string/jumbo v4, "identity_create_org_add_admin"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "identity_create_org_manual_add_admin"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1206
    :cond_6
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->C:Lfla;

    invoke-virtual {v4, v1}, Lfla;->b(Ljava/util/List;)V

    .line 1210
    :goto_3
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->C:Lfla;

    invoke-virtual {v4}, Lfla;->a()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->b(I)V

    goto/16 :goto_0

    .line 1208
    :cond_7
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->C:Lfla;

    invoke-virtual {v4, v1}, Lfla;->c(Ljava/util/List;)V

    goto :goto_3
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;D)D
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
    .param p1, "x1"    # D

    .prologue
    .line 132
    iput-wide p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->j:D

    return-wide p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/user/model/PositionData;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->H:Lcom/alibaba/android/user/model/PositionData;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Lcom/alibaba/android/user/model/PositionData;)Lcom/alibaba/android/user/model/PositionData;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
    .param p1, "x1"    # Lcom/alibaba/android/user/model/PositionData;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->b:Lcom/alibaba/android/user/model/PositionData;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 132
    .line 22707
    sget v0, Lezg$l;->add_org_member:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 22708
    const-string/jumbo v1, "identity_create_org_manual_add_admin"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22709
    sget v0, Lezg$l;->dt_org_create_add_admin:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 22711
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22712
    const-string/jumbo v2, "activity_identify"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22713
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22714
    const-string/jumbo v0, "intent_key_job_position_code"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->b:Lcom/alibaba/android/user/model/PositionData;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 22715
    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->startActivity(Landroid/content/Intent;)V

    .line 132
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 2050
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2058
    :cond_0
    :goto_0
    return-void

    .line 2054
    :cond_1
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->S:Ljava/lang/String;

    .line 2055
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->C:Lfla;

    if-eqz v0, :cond_0

    .line 2056
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->C:Lfla;

    invoke-virtual {v0}, Lfla;->d()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->x:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 132
    .line 24060
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24061
    sget v0, Lezg$l;->dt_createteam_add_member_qrcode_without_team_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 24062
    :goto_0
    return-void

    .line 24065
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->D:Lfkv$a;

    if-nez v0, :cond_1

    .line 24066
    new-instance v0, Lfkx;

    invoke-direct {v0, p0}, Lfkx;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 24067
    new-instance v1, Lfkw;

    new-instance v2, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$13;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$13;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

    invoke-direct {v1, p0, v0, v2}, Lfkw;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lfkv$b;Lfkw$a;)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->D:Lfkv$a;

    .line 24080
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->D:Lfkv$a;

    invoke-interface {v0, p1}, Lfkv$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 132
    iget v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->F:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->N:Z

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 132
    invoke-static {}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->i()Z

    move-result v0

    return v0
.end method

.method private h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 474
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->ab:Lfks;

    invoke-virtual {v0}, Lfks;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a:Ljava/util/List;

    .line 475
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->ab:Lfks;

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->x:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->x:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lfks;->a(Ljava/lang/String;)V

    .line 476
    return-void

    .line 475
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->B:Z

    return v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lfla;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->C:Lfla;

    return-object v0
.end method

.method private static i()Z
    .locals 1

    .prologue
    .line 723
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 132
    iget v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->R:I

    return v0
.end method

.method private j()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1115
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1117
    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Ljava/lang/String;
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 22531
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 22532
    const-string/jumbo v1, "key_create_org_info"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    .line 22533
    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 22534
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 22536
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    return-object v0
.end method

.method private k()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x6

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1259
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->N:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->B:Z

    if-eqz v1, :cond_2

    .line 1260
    :cond_0
    const/4 v0, 0x1

    .line 1269
    .local v0, "newLeastCount":I
    :goto_0
    iput v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->R:I

    .line 1270
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->B:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->N:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->R:I

    if-gt v1, v5, :cond_5

    .line 1271
    :cond_1
    sget v1, Lezg$l;->dt_user_create_org_tips:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "create_org_limit_member"

    .line 1272
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 1271
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->b(Ljava/lang/String;)V

    .line 1276
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->C:Lfla;

    if-nez v1, :cond_6

    .line 1277
    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->b(I)V

    .line 1281
    :goto_2
    return-void

    .line 1261
    .end local v0    # "newLeastCount":I
    :cond_2
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->B:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->aa:I

    if-lez v1, :cond_3

    .line 1262
    iget v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->aa:I

    .restart local v0    # "newLeastCount":I
    goto :goto_0

    .line 1263
    .end local v0    # "newLeastCount":I
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->G:Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->G:Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;->memberLimit:I

    if-lez v1, :cond_4

    .line 1264
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->G:Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;

    iget v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;->memberLimit:I

    .restart local v0    # "newLeastCount":I
    goto :goto_0

    .line 1266
    .end local v0    # "newLeastCount":I
    :cond_4
    const-string/jumbo v1, "create_org_limit_member"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    .restart local v0    # "newLeastCount":I
    goto :goto_0

    .line 1274
    :cond_5
    sget v1, Lezg$l;->dt_org_create_limit_count_tips:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->R:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 1279
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->C:Lfla;

    invoke-virtual {v1}, Lfla;->a()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->b(I)V

    goto :goto_2
.end method

.method private l()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1284
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->l:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-nez v3, :cond_0

    .line 7305
    sget-object v1, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->c:Ljava/lang/String;

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$15;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$15;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 1301
    :goto_0
    return-void

    .line 1289
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->g:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->getModel()Lcnk;

    move-result-object v0

    .line 1291
    .local v0, "model":Lcnk;
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->h:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1292
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->l:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->h:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils;->a(Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcnk;->d(Ljava/lang/String;)V

    .line 1295
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->g()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->h:Ljava/lang/String;

    .line 8129
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 8133
    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 8134
    if-eqz v3, :cond_1

    array-length v4, v3

    if-nez v4, :cond_4

    :cond_1
    move v3, v1

    .line 1295
    :goto_1
    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->B:Z

    .line 1296
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->k()V

    .line 1300
    :goto_2
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->g:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->a(Lcnk;)V

    goto :goto_0

    .line 8138
    :cond_4
    const-string/jumbo v4, "\u4e2d\u56fd"

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_1

    :cond_5
    move v3, v1

    goto :goto_1

    .line 1298
    :cond_6
    sget v1, Lezg$l;->input_required:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcnk;->d(Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic l(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->m()V

    return-void
.end method

.method static synthetic m(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->e:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    return-object v0
.end method

.method private m()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1331
    const-string/jumbo v0, "pref_key_user_industry_switch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->O:Z

    if-nez v0, :cond_1

    .line 1362
    :cond_0
    :goto_0
    return-void

    .line 1335
    :cond_1
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v1

    new-instance v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$16;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$16;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

    const-class v2, Lcma;

    invoke-static {v0, v2, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v1, v0}, Lfac;->a(Lcma;)V

    goto :goto_0
.end method

.method static synthetic n(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    return-object v0
.end method

.method private n()Z
    .locals 1

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->A:Ljava/lang/String;

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

.method static synthetic o(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lfky;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->ac:Lfky;

    return-object v0
.end method

.method private o()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1615
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1617
    .local v1, "extObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "orgScal"

    iget v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->F:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1618
    const-string/jumbo v2, "longitude"

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->j:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1619
    const-string/jumbo v2, "latitude"

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->k:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1623
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1620
    :catch_0
    move-exception v0

    .line 1621
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "user"

    sget-object v3, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->c:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "json exception "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic p(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->E:Ljava/lang/String;

    return-object v0
.end method

.method private p()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1801
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->dismissLoadingDialog()V

    .line 1802
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->y:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->y:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1803
    .local v0, "mTempMobile":Ljava/lang/String;
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/pwd.html"

    new-instance v3, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$26;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$26;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1810
    return-void
.end method

.method private q()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2153
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->H:Lcom/alibaba/android/user/model/PositionData;

    if-nez v1, :cond_1

    .line 2164
    :cond_0
    :goto_0
    return-void

    .line 2157
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->e:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->H:Lcom/alibaba/android/user/model/PositionData;

    iget-boolean v1, v1, Lcom/alibaba/android/user/model/PositionData;->custom:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->H:Lcom/alibaba/android/user/model/PositionData;

    iget-object v1, v1, Lcom/alibaba/android/user/model/PositionData;->code:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->setContent(Ljava/lang/String;)V

    .line 2158
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->C:Lfla;

    .line 15130
    iget-object v0, v1, Lfla;->d:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 2159
    .local v0, "currentUser":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    if-eqz v0, :cond_0

    .line 2160
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->H:Lcom/alibaba/android/user/model/PositionData;

    iget-object v1, v1, Lcom/alibaba/android/user/model/PositionData;->code:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->jobDesc:Ljava/lang/String;

    .line 2161
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->H:Lcom/alibaba/android/user/model/PositionData;

    iget-object v1, v1, Lcom/alibaba/android/user/model/PositionData;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->jobName:Ljava/lang/String;

    .line 2162
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->H:Lcom/alibaba/android/user/model/PositionData;

    iget-boolean v1, v1, Lcom/alibaba/android/user/model/PositionData;->custom:Z

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isCustomJobPosition:Z

    goto :goto_0

    .line 2157
    .end local v0    # "currentUser":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->H:Lcom/alibaba/android/user/model/PositionData;

    iget-object v1, v1, Lcom/alibaba/android/user/model/PositionData;->name:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic q(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->j()V

    return-void
.end method

.method static synthetic r(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lfks;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->ab:Lfks;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->f:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic u(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/user/model/PositionData;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->b:Lcom/alibaba/android/user/model/PositionData;

    return-object v0
.end method

.method static synthetic v(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->W:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic w(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->h()V

    return-void
.end method

.method static synthetic x(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->l()V

    return-void
.end method

.method static synthetic y(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->S:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic z(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->m:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 1988
    return-void
.end method

.method public final a(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 2030
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->b(I)V

    .line 2031
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 21
    .param p1, "identity"    # Ljava/lang/String;

    .prologue
    .line 647
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->E:Ljava/lang/String;

    .line 648
    const-string/jumbo v3, "identity_create_org_add_member"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->E:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 649
    sget v3, Lezg$l;->dt_createteam_add_member_qrcode_without_team_name:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    .line 704
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->T:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->T:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b()Z

    move-result v3

    if-nez v3, :cond_0

    .line 656
    :cond_2
    const-string/jumbo v3, "identity_create_org_add_member"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 657
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->b:Lcom/alibaba/android/user/model/PositionData;

    .line 660
    :cond_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 661
    .local v10, "selectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->C:Lfla;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->C:Lfla;

    invoke-virtual {v3}, Lfla;->a()I

    move-result v3

    if-lez v3, :cond_5

    .line 662
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->C:Lfla;

    invoke-virtual {v3}, Lfla;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 663
    .local v18, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    if-eqz v18, :cond_4

    .line 666
    invoke-static/range {v18 .. v18}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 670
    .end local v18    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->E:Ljava/lang/String;

    sget-object v3, Lflr;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->O:Z

    move/from16 v16, v0

    new-instance v17, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$2;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Ljava/lang/String;)V

    .line 7170
    const/4 v11, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    .line 7178
    sget v3, Lezg$c;->choose_add_people_mode_items:I

    .line 7179
    invoke-static {}, Lfkw;->c()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 7180
    const-string/jumbo v4, "identity_create_org_add_admin"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 7181
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->C:Lfla;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->C:Lfla;

    invoke-virtual {v4}, Lfla;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 7182
    sget v3, Lezg$c;->choose_add_people_mode_admin_items:I

    move/from16 v19, v3

    .line 7189
    :goto_2
    new-instance v20, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct/range {v20 .. v21}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7190
    sget v3, Lezg$l;->choose_add_people_dlg_title:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 7191
    new-instance v3, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$30;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    invoke-direct/range {v3 .. v17}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$30;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Ljava/lang/String;Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;ZIZZZZLandroid/content/DialogInterface$OnClickListener;)V

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 7217
    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 670
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->T:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    goto/16 :goto_0

    .line 7185
    :cond_6
    sget v3, Lezg$c;->choose_add_people_mode_member_items:I

    move/from16 v19, v3

    goto :goto_2

    :cond_7
    move/from16 v19, v3

    goto :goto_2
.end method

.method public final a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/PositionData;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1900
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/model/PositionData;>;"
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1911
    :cond_0
    :goto_0
    return-void

    .line 1904
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1905
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a:Ljava/util/List;

    .line 1907
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->H:Lcom/alibaba/android/user/model/PositionData;

    if-nez v0, :cond_0

    .line 13914
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v2, "dt_user"

    const-string/jumbo v3, "jobPosition"

    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$27;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

    const-class v4, Lcom/alibaba/wukong/Callback;

    .line 13915
    invoke-static {v1, v4, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    .line 13914
    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 1993
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 1983
    return-void
.end method

.method b(I)V
    .locals 5
    .param p1, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2034
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->o:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 2047
    :goto_0
    return-void

    .line 2038
    :cond_0
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    sget v1, Lezg$l;->title_create_org:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>(Ljava/lang/String;)V

    .line 2039
    .local v0, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    iget v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->R:I

    if-ge p1, v1, :cond_1

    .line 2040
    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2041
    sget v1, Lezg$l;->dt_org_create_team_member_less_tip:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->R:I

    sub-int/2addr v4, p1

    .line 2043
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2041
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2044
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2046
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1973
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;>;"
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 1997
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2115
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/UserBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2116
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2150
    :cond_0
    :goto_0
    return-void

    .line 2119
    :cond_1
    const/16 v3, 0x3e9

    if-ne p1, v3, :cond_4

    .line 2120
    const-string/jumbo v3, "intent_key_team_scale_object"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;

    .line 2121
    .local v2, "teamScaleObject":Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;
    if-eqz v2, :cond_0

    .line 2124
    iput-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->G:Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;

    .line 2125
    iget v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;->id:I

    iput v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->F:I

    .line 2126
    iget-object v1, v2, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;->text:Ljava/lang/String;

    .line 2127
    .local v1, "orgScaleText":Ljava/lang/String;
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->k()V

    .line 2128
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->f:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    if-eqz v3, :cond_0

    .line 2131
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2132
    :cond_2
    sget v3, Lezg$l;->input_optional:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2134
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->f:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    invoke-virtual {v3, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->setContent(Ljava/lang/String;)V

    goto :goto_0

    .line 2135
    .end local v1    # "orgScaleText":Ljava/lang/String;
    .end local v2    # "teamScaleObject":Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;
    :cond_4
    const/16 v3, 0x3ea

    if-ne p1, v3, :cond_5

    .line 2136
    const-string/jumbo v3, "intent_key_selected_position"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/user/model/PositionData;

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->H:Lcom/alibaba/android/user/model/PositionData;

    .line 2137
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->q()V

    goto :goto_0

    .line 2138
    :cond_5
    const/16 v3, 0x3eb

    if-ne p1, v3, :cond_0

    .line 2139
    const-string/jumbo v3, "intent_key_org_member_object"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 2140
    .local v0, "orgMemberObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    if-eqz v0, :cond_0

    .line 2144
    const/16 v3, 0x3e8

    if-ne p2, v3, :cond_6

    .line 2145
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->C:Lfla;

    invoke-virtual {v3, v0}, Lfla;->b(Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)Lfla$b;

    goto :goto_0

    .line 2147
    :cond_6
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->C:Lfla;

    .line 14186
    const/4 v3, 0x0

    .line 14187
    if-eqz v0, :cond_7

    .line 14188
    iget-boolean v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdmin:Z

    if-eqz v3, :cond_8

    .line 14189
    iget-object v3, v4, Lfla;->b:Ljava/util/List;

    invoke-virtual {v4, v3, v0}, Lfla;->a(Ljava/util/List;Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)Z

    move-result v3

    .line 14195
    :cond_7
    :goto_1
    if-eqz v3, :cond_0

    .line 14196
    invoke-virtual {v4}, Lfla;->d()V

    goto :goto_0

    .line 14191
    :cond_8
    iget-object v3, v4, Lfla;->c:Ljava/util/List;

    invoke-virtual {v4, v3, v0}, Lfla;->a(Ljava/util/List;Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)Z

    move-result v3

    goto :goto_1
.end method

.method public onAttachedToWindow()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 480
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onAttachedToWindow()V

    .line 481
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->Q:Z

    if-nez v1, :cond_1

    .line 482
    iput-boolean v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->Q:Z

    .line 6500
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->Z:Lcom/alibaba/android/dingtalkbase/interfaces/ActivityTask;

    if-eqz v1, :cond_5

    .line 6941
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->Z:Lcom/alibaba/android/dingtalkbase/interfaces/ActivityTask;

    if-eqz v1, :cond_0

    .line 6945
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->showLoadingDialog()V

    .line 6946
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->Z:Lcom/alibaba/android/dingtalkbase/interfaces/ActivityTask;

    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$8;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

    const-class v4, Lcom/alibaba/wukong/Callback;

    invoke-static {v1, v4, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    invoke-interface {v3, v1}, Lcom/alibaba/android/dingtalkbase/interfaces/ActivityTask;->run(Lcom/alibaba/wukong/Callback;)V

    .line 6502
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->m()V

    .line 486
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->ad:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "pref_key_create_team_promote_shown"

    .line 487
    invoke-static {p0, v1, v0}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v2

    .line 489
    .local v0, "showCreateOrgPromote":Z
    :cond_2
    if-eqz v0, :cond_4

    .line 490
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->q:Lcom/alibaba/android/user/widget/CreateOrgPromoteDialog;

    if-nez v1, :cond_3

    .line 491
    new-instance v1, Lcom/alibaba/android/user/widget/CreateOrgPromoteDialog;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/widget/CreateOrgPromoteDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->q:Lcom/alibaba/android/user/widget/CreateOrgPromoteDialog;

    .line 493
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->q:Lcom/alibaba/android/user/widget/CreateOrgPromoteDialog;

    invoke-virtual {v1}, Lcom/alibaba/android/user/widget/CreateOrgPromoteDialog;->show()V

    .line 495
    const-string/jumbo v1, "pref_key_create_team_promote_shown"

    invoke-static {p0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 497
    :cond_4
    return-void

    .line 6506
    .end local v0    # "showCreateOrgPromote":Z
    :cond_5
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->N:Z

    if-eqz v1, :cond_6

    .line 6507
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->m()V

    goto :goto_0

    .line 6511
    :cond_6
    const-class v1, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v3, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$35;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$35;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

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

    .line 1797
    .line 11714
    const-string/jumbo v1, "contact_create_team_cancel_btn_click"

    invoke-static {v1}, Lfxo;->b(Ljava/lang/String;)V

    .line 11715
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "experience_team"

    invoke-static {v1, v2}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 11716
    if-eqz v1, :cond_3

    .line 12697
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 12698
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->x:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->B:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->C:Lfla;

    .line 12699
    invoke-virtual {v1}, Lfla;->a()I

    move-result v1

    iget v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->R:I

    if-ge v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->N:Z

    if-nez v1, :cond_2

    .line 12700
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->n()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->F:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->H:Lcom/alibaba/android/user/model/PositionData;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->H:Lcom/alibaba/android/user/model/PositionData;

    iget-object v1, v1, Lcom/alibaba/android/user/model/PositionData;->code:Ljava/lang/String;

    .line 12701
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 12702
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->x:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    const/16 v2, 0x270f

    if-eq v1, v2, :cond_1

    .line 11716
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 11717
    const-string/jumbo v0, "org_create_shortstaff_pop"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 11718
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 11719
    new-instance v1, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;-><init>(Landroid/app/Activity;)V

    .line 11720
    sget v2, Lezg$l;->quit_create_dialog_title:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 13132
    iput-object v2, v1, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->a:Ljava/lang/String;

    .line 11721
    sget v2, Lezg$l;->quit_create_dialog_content:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 13137
    iput-object v2, v1, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->b:Ljava/lang/String;

    .line 11721
    sget v2, Lezg$l;->quit_create_dialog_right:I

    .line 11722
    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$23;

    invoke-direct {v3, p0, v0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$23;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Ljava/lang/String;Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;

    move-result-object v0

    sget v1, Lezg$l;->quit_create_dialog_left:I

    .line 11736
    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$21;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$21;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->b(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;

    move-result-object v0

    .line 11743
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->show()V

    .line 11744
    :goto_1
    return-void

    .line 12705
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 12706
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12710
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 11745
    :cond_3
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 11746
    sget v1, Lezg$l;->settings_org_add_member_quit:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 11747
    sget v1, Lezg$l;->sure:I

    new-instance v2, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$24;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$24;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 11785
    sget v1, Lezg$l;->cancel:I

    new-instance v2, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$25;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$25;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 11791
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
    const/16 v11, 0x8

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 263
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 264
    sget v3, Lezg$j;->activity_create_neworg:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->setContentView(I)V

    .line 3022
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "fromSighUp"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->u:Z

    .line 3023
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "isv_code"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->z:Ljava/lang/String;

    .line 3024
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "isv_authorize_url"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->A:Ljava/lang/String;

    .line 3025
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "is_no_limit"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->B:Z

    .line 3026
    iget-boolean v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->B:Z

    if-nez v3, :cond_0

    .line 3027
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "intent_key_lower_limit"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->aa:I

    .line 3029
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "key_org_source"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->J:Ljava/lang/String;

    .line 3030
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "key_create_org_jump_url"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->K:Ljava/lang/String;

    .line 3031
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->L:Ljava/lang/String;

    .line 3032
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "media_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->M:Ljava/lang/String;

    .line 3033
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "intent_key_activity_task"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/interfaces/ActivityTask;

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->Z:Lcom/alibaba/android/dingtalkbase/interfaces/ActivityTask;

    .line 3034
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "org_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->E:Ljava/lang/String;

    .line 3035
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "intent_key_org_create_promote"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->ad:Z

    .line 267
    new-instance v3, Lfks;

    invoke-direct {v3, p0, p0}, Lfks;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lfkr$b;)V

    .line 269
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->J:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "1"

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->J:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 270
    iput-boolean v8, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->N:Z

    .line 272
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lezg$j;->header_create_org_v3:I

    invoke-virtual {v3, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 273
    .local v0, "contentView":Landroid/view/View;
    sget v3, Lezg$h;->org_member_list:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->n:Landroid/widget/ListView;

    .line 274
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->n:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 276
    sget v3, Lezg$h;->iv_banner:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->W:Landroid/widget/ImageView;

    .line 277
    sget v3, Lezg$h;->ll_create_multi_team_tips:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->X:Landroid/view/View;

    .line 278
    sget v3, Lezg$h;->top_divider:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->Y:Landroid/view/View;

    .line 279
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->M:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 280
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->M:Ljava/lang/String;

    .line 3861
    const-string/jumbo v3, ""

    .line 3864
    :try_start_0
    invoke-static {v4}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v5

    .line 3865
    if-eqz v5, :cond_2

    .line 3866
    invoke-static {v4}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 3872
    :cond_2
    invoke-static {p0}, Lcms;->a(Landroid/content/Context;)I

    move-result v4

    .line 3873
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v6

    if-gt v6, v4, :cond_3

    .line 3874
    invoke-virtual {v5}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v6

    if-le v6, v4, :cond_4

    .line 3875
    :cond_3
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v6

    .line 3876
    invoke-virtual {v6, v3, v4, v4}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    .line 3881
    :cond_4
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->W:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3882
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->Y:Landroid/view/View;

    if-eqz v4, :cond_5

    .line 3883
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->Y:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 3885
    :cond_5
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->W:Landroid/widget/ImageView;

    new-instance v6, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$7;

    invoke-direct {v6, p0, v5, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$7;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Lcom/laiwang/protocol/media/MediaId;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 283
    :cond_6
    :goto_0
    sget v3, Lezg$h;->item_org_region:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->g:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    .line 284
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->g:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    invoke-virtual {v3, v7}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->setVisibility(I)V

    .line 285
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->g:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    new-instance v4, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$1;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->l()V

    .line 4074
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->U:Lcir;

    if-nez v3, :cond_7

    .line 4075
    new-instance v3, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$28;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$28;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->U:Lcir;

    .line 4096
    :cond_7
    new-array v3, v10, [Ljava/lang/String;

    const-string/jumbo v4, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v4, v3, v7

    const-string/jumbo v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v3, v8

    new-instance v4, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$29;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$29;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

    invoke-static {p0, v8, v3, v4}, Lbyy;->a(Landroid/app/Activity;I[Ljava/lang/String;Lbzc;)V

    .line 303
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->h()V

    .line 305
    sget v3, Lezg$h;->et_org_name:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    .line 306
    new-array v2, v8, [Landroid/text/InputFilter;

    .line 307
    .local v2, "inputFilters":[Landroid/text/InputFilter;
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    const-string/jumbo v5, "pref_key_create_org_name_limit"

    const/16 v6, 0x32

    .line 308
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 307
    invoke-static {v4, v5, v6}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v7

    .line 309
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 310
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v3

    const-string/jumbo v4, "f_user_create_org_v3_use_org_search"

    invoke-virtual {v3, v4}, Lchx;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 311
    new-instance v3, Lfky;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-direct {v3, v4, p0}, Lfky;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->ac:Lfky;

    .line 314
    :cond_8
    sget v3, Lezg$h;->ce_org_industry_name:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 315
    sget v3, Lezg$h;->rl_add_member:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->p:Landroid/widget/RelativeLayout;

    .line 316
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->p:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$11;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$11;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    sget v3, Lezg$h;->item_org_type:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->d:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    .line 326
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->d:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    new-instance v4, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$22;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$22;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    sget v3, Lezg$h;->item_my_position:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->e:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    .line 336
    invoke-static {}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->i()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 337
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->e:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    invoke-virtual {v3, v7}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->setVisibility(I)V

    .line 338
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->e:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    new-instance v4, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$32;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$32;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    :goto_1
    sget v3, Lezg$h;->item_org_scale:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->f:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    .line 355
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->f:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    new-instance v4, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$33;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$33;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->k()V

    .line 365
    new-instance v3, Lfla;

    invoke-direct {v3, p0}, Lfla;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->C:Lfla;

    .line 366
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->C:Lfla;

    .line 4427
    iput-object p0, v3, Lfla;->a:Lfla$a;

    .line 368
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->E:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 369
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->j()V

    .line 372
    :cond_9
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->y:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 373
    iget-boolean v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->N:Z

    if-eqz v3, :cond_11

    .line 375
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->E:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 376
    sget v4, Lezg$l;->create_org_name_exp:I

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->y:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->y:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    :goto_2
    aput-object v3, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->E:Ljava/lang/String;

    .line 377
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->j()V

    .line 383
    :cond_a
    :goto_3
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->y:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-eqz v3, :cond_d

    .line 384
    iget-boolean v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->N:Z

    if-eqz v3, :cond_b

    .line 385
    sget v3, Lezg$l;->dt_user_create_org_tips:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    const-string/jumbo v5, "create_org_limit_member"

    const/4 v6, 0x6

    .line 386
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 385
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->b(Ljava/lang/String;)V

    .line 389
    :cond_b
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;-><init>()V

    .line 390
    .local v1, "currentUser":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->y:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->avatarMediaId:Ljava/lang/String;

    .line 391
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->y:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->name:Ljava/lang/String;

    .line 392
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "+"

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->y:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->y:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    aput-object v4, v3, v10

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->mobile:Ljava/lang/String;

    .line 393
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->y:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    iput-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    .line 394
    iput-boolean v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdd:Z

    .line 395
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->C:Lfla;

    invoke-virtual {v3, v1}, Lfla;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)V

    .line 397
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->y:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->y:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 398
    :cond_c
    iput-boolean v8, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->O:Z

    .line 402
    .end local v1    # "currentUser":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    :cond_d
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->n:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->C:Lfla;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 403
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->C:Lfla;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->af:Lfla$d;

    .line 4468
    iput-object v4, v3, Lfla;->e:Lfla$d;

    .line 404
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->C:Lfla;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->ag:Lfla$c;

    .line 4472
    iput-object v4, v3, Lfla;->f:Lfla$c;

    .line 405
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->C:Lfla;

    invoke-virtual {v3}, Lfla;->d()V

    .line 407
    sget v3, Lezg$h;->btn_next:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->m:Landroid/widget/Button;

    .line 408
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->m:Landroid/widget/Button;

    sget v4, Lezg$l;->create_org_immide:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 409
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->m:Landroid/widget/Button;

    new-instance v4, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$34;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$34;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    sget v3, Lezg$h;->tv_member_count:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->o:Landroid/widget/TextView;

    .line 463
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->C:Lfla;

    invoke-virtual {v3}, Lfla;->a()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->b(I)V

    .line 4971
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->V:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_e

    .line 4972
    new-instance v3, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$9;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$9;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->V:Landroid/content/BroadcastReceiver;

    .line 5013
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 5014
    const-string/jumbo v4, "com.workapp.choose.people.from.contact"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5015
    const-string/jumbo v4, "action_key_select_org_type"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5016
    const-string/jumbo v4, "selector_region"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5017
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->V:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 5932
    :cond_e
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->L:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 5933
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->L:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 467
    :goto_4
    invoke-static {}, Lflr;->g()V

    .line 468
    const-string/jumbo v3, "contact_create_team_page_enter"

    invoke-static {v3}, Lfxo;->b(Ljava/lang/String;)V

    .line 6223
    sget v3, Lezg$h;->org_member_list:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$31;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$31;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 471
    return-void

    .line 351
    :cond_f
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->e:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    invoke-virtual {v3, v11}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->setVisibility(I)V

    goto/16 :goto_1

    .line 376
    :cond_10
    const-string/jumbo v3, ""

    goto/16 :goto_2

    .line 380
    :cond_11
    const/4 v3, -0x1

    invoke-direct {p0, v3, v9, v9}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 5935
    :cond_12
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v4, Lezg$l;->dt_contact_createorg_title:I

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    goto :goto_4

    .line 3869
    .end local v2    # "inputFilters":[Landroid/text/InputFilter;
    :catch_0
    move-exception v3

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

    .line 1661
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->u:Z

    if-eqz v1, :cond_1

    .line 1662
    const/4 v1, 0x1

    sget v2, Lezg$l;->jump:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1663
    .local v0, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1672
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 1668
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->n()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1669
    const/4 v1, 0x3

    sget v2, Lezg$l;->dt_create_org_fill_invite_code:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1670
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
    .line 1814
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->V:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1815
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->V:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 1817
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->U:Lcir;

    if-eqz v0, :cond_1

    .line 1818
    invoke-static {p0}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->U:Lcir;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->b(Lcir;)V

    .line 1821
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->D:Lfkv$a;

    if-eqz v0, :cond_2

    .line 1822
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->D:Lfkv$a;

    invoke-interface {v0}, Lfkv$a;->i()V

    .line 1823
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->D:Lfkv$a;

    .line 1825
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->ae:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->ae:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1826
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->ae:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 1829
    :cond_3
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 1830
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

    .line 1677
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 1678
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->onBackPressed()V

    .line 1693
    :goto_0
    return v0

    .line 1680
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 1681
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->u:Z

    if-eqz v1, :cond_1

    .line 1682
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->p()V

    goto :goto_0

    .line 1684
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->finish()V

    goto :goto_0

    .line 1690
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 10833
    const-string/jumbo v1, "contact_create_team_fill_in_invitecode_click"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 10834
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 10835
    sget v2, Lezg$l;->input_optional:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 10836
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->inviteCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 10837
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->inviteCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 10839
    :cond_3
    new-array v2, v3, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v0

    .line 10840
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 10841
    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 10842
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10843
    sget v3, Lezg$l;->dt_create_org_fill_invite_code:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 10844
    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 10845
    sget v3, Lezg$l;->cancel:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 10846
    sget v3, Lezg$l;->sure:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$6;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$6;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 10856
    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 10857
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 1693
    :cond_4
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 132
    check-cast p1, Lfkr$a;

    .line 15977
    check-cast p1, Lfks;

    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->ab:Lfks;

    .line 132
    return-void
.end method
