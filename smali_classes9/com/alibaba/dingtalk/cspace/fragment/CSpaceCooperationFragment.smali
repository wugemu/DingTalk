.class public Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;
.super Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;
.source "CSpaceCooperationFragment.java"

# interfaces
.implements Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$a;
.implements Lgqp;


# static fields
.field private static final T:Ljava/lang/String;


# instance fields
.field private H:Lgdh;

.field private I:Z

.field private final J:I

.field private final K:I

.field private final L:I

.field private final M:I

.field private final N:I

.field private final O:I

.field private final P:I

.field private final Q:I

.field private final R:I

.field private S:I

.field private U:J

.field private V:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private W:Z

.field private final X:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
            ">;"
        }
    .end annotation
.end field

.field private Z:Z

.field public a:I

.field private aa:Z

.field private b:Landroid/widget/ListView;

.field private c:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;

.field private d:I

.field private e:Ldq;

.field private f:Landroid/content/BroadcastReceiver;

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

.field private h:Landroid/view/ViewStub;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

.field private final n:I

.field private final o:I

.field private final p:I

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    const-class v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->T:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;-><init>()V

    .line 87
    iput v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->d:I

    .line 105
    iput v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->n:I

    .line 106
    iput v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->o:I

    .line 107
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->p:I

    .line 108
    iput v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->q:I

    .line 113
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->I:Z

    .line 115
    const/16 v0, 0x64

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->J:I

    .line 116
    const/16 v0, 0x65

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->K:I

    .line 117
    const/16 v0, 0xc8

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->L:I

    .line 118
    const/16 v0, 0xc9

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->M:I

    .line 119
    const/16 v0, 0x12c

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->N:I

    .line 120
    const/16 v0, 0x12d

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->O:I

    .line 121
    const/16 v0, 0x190

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->P:I

    .line 122
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->Q:I

    .line 123
    const/16 v0, 0x258

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->R:I

    .line 126
    iput v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->S:I

    .line 130
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->U:J

    .line 133
    sget v0, Lcom/alibaba/dingtalk/cspace/constants/SpaceConstants;->b:I

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->a:I

    .line 139
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->X:Ljava/util/Map;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->Y:Ljava/util/List;

    .line 142
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->Z:Z

    .line 143
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->aa:Z

    return-void
.end method

.method public static a(I)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;
    .locals 2
    .param p0, "mode"    # I

    .prologue
    const-wide/16 v0, 0x0

    .line 146
    invoke-static {p0, v0, v1, v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->a(IJJ)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    move-result-object v0

    return-object v0
.end method

.method public static a(IJJ)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;
    .locals 3
    .param p0, "mode"    # I
    .param p1, "shareNewConversationId"    # J
    .param p3, "orgId"    # J

    .prologue
    .line 150
    new-instance v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;-><init>()V

    .line 151
    .local v1, "fragment":Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 152
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "space_mode"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 153
    const-string/jumbo v2, "intent_key_share_new_conversation_id"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 154
    const-string/jumbo v2, "space_org_id"

    invoke-virtual {v0, v2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 155
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->setArguments(Landroid/os/Bundle;)V

    .line 156
    return-object v1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)Lgdh;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->H:Lgdh;

    return-object v0
.end method

.method private a(ILandroid/os/Message;)V
    .locals 5
    .param p1, "requestType"    # I
    .param p2, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 994
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 995
    .local v0, "erroBundle":Landroid/os/Bundle;
    const-string/jumbo v1, ""

    .line 996
    .local v1, "errorCode":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 998
    .local v2, "errorMessage":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 999
    const-string/jumbo v3, "space_request_error_code_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1000
    const-string/jumbo v3, "space_request_error_message_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1003
    :cond_0
    const-string/jumbo v3, "404"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1004
    sget v3, Lfzs$h;->network_error:I

    invoke-static {v3}, Lcms;->a(I)V

    .line 1055
    :goto_0
    return-void

    .line 1008
    :cond_1
    sget-object v3, Lggr;->a:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1009
    sget v3, Lfzs$h;->and_lwp_error_408:I

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1013
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 1051
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1016
    :sswitch_0
    const-string/jumbo v3, "13020005"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1018
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "cspace_createfile_fail_click"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1020
    sget v3, Lfzs$h;->dt_cspace_cooperation_no_auth_notify:I

    invoke-static {v3}, Lcms;->a(I)V

    goto :goto_0

    .line 1021
    :cond_3
    const-string/jumbo v3, "13500106"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1023
    sget v3, Lfzs$h;->dt_space_co_folder_create_no_identification:I

    invoke-static {v3}, Lcms;->a(I)V

    goto :goto_0

    .line 1026
    :cond_4
    sget v3, Lfzs$h;->space_share_create_error:I

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1031
    :sswitch_1
    const-string/jumbo v3, "13020005"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1032
    sget v3, Lfzs$h;->dt_cspace_error_no_auth:I

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1035
    :cond_5
    sget v3, Lfzs$h;->space_share_setting_get_fail:I

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1040
    :sswitch_2
    const-string/jumbo v3, "13020005"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1041
    sget v3, Lfzs$h;->dt_cspace_cooperation_folder_quit_admin_failed_notify:I

    invoke-static {v3}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 1042
    :cond_6
    const-string/jumbo v3, "13500104"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1044
    sget v3, Lfzs$h;->dt_csapce_co_folder_not_found:I

    invoke-static {v3}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 1047
    :cond_7
    sget v3, Lfzs$h;->dt_cspace_co_folder_quit_failed:I

    invoke-static {v3}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 1013
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x190 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;I)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;
    .param p1, "x1"    # I

    .prologue
    .line 81
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;Lgit;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;
    .param p1, "x1"    # Lgit;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b(Lgit;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "orgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 810
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 811
    :cond_0
    sget v2, Lfzs$h;->dt_cspace_cooperation_no_auth_notify:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    .line 857
    :cond_1
    :goto_0
    return-void

    .line 815
    :cond_2
    new-instance v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;-><init>(Landroid/content/Context;)V

    .line 12356
    .local v0, "dialog":Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;
    iput-object p1, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->o:Ljava/util/List;

    .line 818
    new-instance v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$6;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$6;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)V

    .line 854
    .local v1, "listener":Lcma;, "Lcma<Lgit;>;"
    const-class v2, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "listener":Lcma;, "Lcma<Lgit;>;"
    check-cast v1, Lcma;

    .line 13352
    .restart local v1    # "listener":Lcma;, "Lcma<Lgit;>;"
    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->n:Lcma;

    .line 14095
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->h:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lfzs$g;->space_cooperation_create_dialog_layout_all:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 14096
    sget v2, Lfzs$f;->view_create_dialog:I

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->i:Landroid/view/View;

    .line 14097
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->i:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 14102
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->i:Landroid/view/View;

    sget v4, Lfzs$f;->et_item1:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->a:Landroid/widget/EditText;

    .line 14103
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->i:Landroid/view/View;

    sget v4, Lfzs$f;->tv_item2_choose:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->b:Landroid/widget/TextView;

    .line 14104
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->i:Landroid/view/View;

    sget v4, Lfzs$f;->clear:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->c:Landroid/view/View;

    .line 14105
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->i:Landroid/view/View;

    sget v4, Lfzs$f;->choose:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->d:Landroid/view/View;

    .line 14106
    sget v2, Lfzs$f;->tv_sure:I

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->g:Landroid/widget/TextView;

    .line 14107
    sget v2, Lfzs$f;->tv_cancel:I

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->f:Landroid/widget/TextView;

    .line 14108
    sget v2, Lfzs$f;->ll_cooperation_create_dialog:I

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->m:Landroid/view/View;

    .line 14111
    sget v2, Lfzs$f;->orgs_view:I

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->j:Landroid/view/View;

    .line 14112
    sget v2, Lfzs$f;->list_view:I

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ListViewHasMaxHeight;

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/ListViewHasMaxHeight;

    .line 14113
    sget v2, Lfzs$f;->ll_back:I

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->l:Landroid/view/View;

    .line 14115
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/ListViewHasMaxHeight;

    const/16 v4, 0x2d1

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListViewHasMaxHeight;->setListViewMaxHeight(I)V

    .line 14320
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v2, :cond_5

    .line 14321
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->b:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15149
    :cond_3
    :goto_1
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->h:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->p:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 15163
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->a:Landroid/widget/EditText;

    new-instance v4, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$3;

    invoke-direct {v4, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$3;-><init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 15184
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->o:Ljava/util/List;

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v11, :cond_a

    .line 15185
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setClickable(Z)V

    .line 15196
    :goto_2
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->d:Landroid/view/View;

    new-instance v4, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$5;

    invoke-direct {v4, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$5;-><init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15203
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->f:Landroid/widget/TextView;

    new-instance v4, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$6;

    invoke-direct {v4, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$6;-><init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15214
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->g:Landroid/widget/TextView;

    new-instance v4, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$7;

    invoke-direct {v4, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$7;-><init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15236
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->c:Landroid/view/View;

    new-instance v4, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$8;

    invoke-direct {v4, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$8;-><init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15245
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->l:Landroid/view/View;

    new-instance v4, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$9;

    invoke-direct {v4, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$9;-><init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15253
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->p:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-eqz v2, :cond_4

    .line 15254
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->p:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    new-instance v4, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$10;

    invoke-direct {v4, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$10;-><init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)V

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 15151
    :cond_4
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->p:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 15153
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "cspace_createfile_createpop_click"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 15156
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->p:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v2, v10}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 14325
    :cond_5
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->o:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 14327
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v11, :cond_7

    .line 14329
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->o:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 14330
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->d:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 14346
    :cond_6
    :goto_3
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->b:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->h:Landroid/content/Context;

    sget v5, Lfzs$h;->dt_space_cf_belong_args:I

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 14333
    :cond_7
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v2

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->h:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/content/Context;)J

    move-result-wide v4

    .line 14334
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 14335
    iget-wide v8, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v7, v8, v4

    if-nez v7, :cond_8

    .line 14336
    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 14341
    :cond_9
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-nez v2, :cond_6

    .line 14342
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->o:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    goto :goto_3

    .line 15187
    :cond_a
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->b:Landroid/widget/TextView;

    new-instance v4, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$4;

    invoke-direct {v4, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$4;-><init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->I:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->c:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;

    return-object v0
.end method

.method private b(Lgit;)V
    .locals 14
    .param p1, "coFolderModel"    # Lgit;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v12, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 238
    if-nez p1, :cond_0

    .line 314
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v7

    const-string/jumbo v8, "f_conf_space_acl_permission_setting_enable"

    .line 5083
    invoke-virtual {v7, v8, v5}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v7

    .line 242
    if-eqz v7, :cond_1

    iget-object v7, p1, Lgit;->n:Ljava/lang/Boolean;

    .line 6022
    invoke-static {v7, v6}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v7

    .line 243
    if-nez v7, :cond_4

    .line 244
    :cond_1
    iget-object v7, p1, Lgit;->k:Ljava/lang/Integer;

    .line 6033
    invoke-static {v7, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 245
    .local v0, "coFolderRole":I
    const/16 v7, 0x65

    if-ne v0, v7, :cond_2

    move v1, v5

    .line 246
    .local v1, "isAdmin":Z
    :goto_1
    if-ne v0, v5, :cond_3

    move v2, v5

    .line 247
    .local v2, "isCreator":Z
    :goto_2
    new-instance v5, Lgmd;

    invoke-direct {v5}, Lgmd;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v5, p1, v1, v2, v6}, Lgmd;->a(Lgit;ZZLandroid/content/Context;)V

    goto :goto_0

    .end local v1    # "isAdmin":Z
    .end local v2    # "isCreator":Z
    :cond_2
    move v1, v6

    .line 245
    goto :goto_1

    .restart local v1    # "isAdmin":Z
    :cond_3
    move v2, v6

    .line 246
    goto :goto_2

    .line 251
    .end local v0    # "coFolderRole":I
    .end local v1    # "isAdmin":Z
    :cond_4
    iget-object v7, p1, Lgit;->h:Ljava/lang/Long;

    .line 6044
    invoke-static {v7, v12, v13}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v8

    .line 252
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->b()Lchy;

    move-result-object v7

    invoke-virtual {v7}, Lchy;->getCurrentUid()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_5

    move v2, v5

    .line 254
    .restart local v2    # "isCreator":Z
    :goto_3
    iget-object v7, p1, Lgit;->a:Ljava/lang/Long;

    .line 7044
    invoke-static {v7, v12, v13}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v8

    .line 254
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 255
    .local v4, "spaceIdString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 256
    const-string/jumbo v7, "CSpace"

    sget-object v8, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->T:Ljava/lang/String;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const-string/jumbo v10, "CSpaceCooperationFragment.showOperationMenu ERROR! coFolderModel.spaceId: "

    aput-object v10, v9, v6

    iget-object v6, p1, Lgit;->a:Ljava/lang/Long;

    .line 258
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v5

    .line 256
    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v8, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "isCreator":Z
    .end local v4    # "spaceIdString":Ljava/lang/String;
    :cond_5
    move v2, v6

    .line 252
    goto :goto_3

    .line 262
    .restart local v2    # "isCreator":Z
    .restart local v4    # "spaceIdString":Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->X:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 263
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v6

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->X:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lgqd;->c(Ljava/lang/String;)Z

    move-result v1

    .line 264
    .restart local v1    # "isAdmin":Z
    new-instance v5, Lgmd;

    invoke-direct {v5}, Lgmd;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v5, p1, v1, v2, v6}, Lgmd;->a(Lgit;ZZLandroid/content/Context;)V

    goto/16 :goto_0

    .line 268
    .end local v1    # "isAdmin":Z
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lgpr;->c(Landroid/content/Context;)V

    .line 8043
    new-instance v3, Lgah$a;

    invoke-direct {v3}, Lgah$a;-><init>()V

    .line 8056
    iput-object v4, v3, Lgah$a;->a:Ljava/lang/String;

    .line 8065
    iput-boolean v6, v3, Lgah$a;->b:Z

    .line 8074
    iput-boolean v6, v3, Lgah$a;->c:Z

    .line 8083
    iput-boolean v6, v3, Lgah$a;->d:Z

    .line 275
    .local v3, "request":Lgah$a;
    new-instance v5, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$9;

    invoke-direct {v5, p0, v4, p1, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$9;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;Ljava/lang/String;Lgit;Z)V

    invoke-static {v3, v5}, Lgah;->a(Lgah$a;Lcma;)V

    goto/16 :goto_0
.end method

.method private b(Z)V
    .locals 3
    .param p1, "noAnyOrg"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 794
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 795
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    if-eqz p1, :cond_0

    sget v1, Lfzs$h;->dt_cspace_no_any_org_tip_when_create_co_folder:I

    :goto_0
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 798
    sget v1, Lfzs$h;->dt_common_confirm:I

    new-instance v2, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$5;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$5;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 806
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 807
    return-void

    .line 795
    :cond_0
    sget v1, Lfzs$h;->dt_cspace_no_org_for_create_co_folder_tip:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->Z:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->U:J

    return-wide v0
.end method

.method private c(I)V
    .locals 10
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 365
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->q:I

    .line 9864
    if-nez p1, :cond_1

    .line 9865
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->h:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 9866
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->h:Landroid/view/ViewStub;

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 367
    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->I:Z

    .line 369
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcms;->d(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 370
    iput-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->I:Z

    .line 371
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 372
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0x258

    iput v2, v1, Landroid/os/Message;->what:I

    .line 373
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    invoke-virtual {v2, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->sendMessage(Landroid/os/Message;)Z

    .line 428
    .end local v1    # "message":Landroid/os/Message;
    :goto_1
    return-void

    .line 9867
    :cond_1
    if-ne p1, v4, :cond_2

    .line 9868
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 10514
    iget-boolean v2, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a:Z

    .line 9868
    if-nez v2, :cond_0

    .line 9869
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    goto :goto_0

    .line 9871
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 11101
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->V:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-nez v2, :cond_3

    .line 11102
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->V:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 11103
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->V:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    sget v5, Lfzs$h;->dt_mail_please_wait:I

    invoke-virtual {p0, v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 11106
    :cond_3
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->V:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    goto :goto_0

    .line 377
    :cond_4
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    new-instance v5, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$10;

    invoke-direct {v5, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$10;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)V

    const-class v6, Lcma;

    .line 425
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 377
    invoke-interface {v2, v5, v6, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 427
    .local v0, "listListener":Lcma;, "Lcma<Lgip;>;"
    iget-wide v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->U:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-nez v2, :cond_5

    const/4 v2, 0x0

    :goto_2
    iget v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->d:I

    if-ne v5, v4, :cond_6

    .line 11175
    :goto_3
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v4

    new-instance v5, Lgop$15;

    invoke-direct {v5, v2, v3, v0}, Lgop$15;-><init>(Ljava/lang/Long;ILcma;)V

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 427
    :cond_5
    iget-wide v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->U:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_2

    :cond_6
    move v3, v4

    goto :goto_3
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->aa:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    .prologue
    .line 81
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->S:I

    return v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->T:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b(Z)V

    return-void
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->X:Ljava/util/Map;

    return-object v0
.end method

.method private e()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 726
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->aa:Z

    if-eqz v2, :cond_3

    .line 727
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->Z:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->Y:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 728
    :cond_0
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->Z:Z

    invoke-direct {p0, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b(Z)V

    .line 12156
    :cond_1
    :goto_0
    return-void

    .line 730
    :cond_2
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->Y:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->a(Ljava/util/List;)V

    goto :goto_0

    .line 735
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->K_()Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    move-result-object v1

    .line 736
    .local v1, "spaceBaseActivity":Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;
    if-eqz v1, :cond_4

    .line 737
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->showLoadingDialogDelay(J)V

    .line 739
    :cond_4
    new-instance v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$4;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$4;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)V

    .line 789
    .local v0, "listener":Lcma;, "Lcma<Lgnz;>;"
    const-class v2, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Lgnz;>;"
    check-cast v0, Lcma;

    .line 790
    .restart local v0    # "listener":Lcma;, "Lcma<Lgnz;>;"
    invoke-static {}, Lgpz;->a()Lgpz;

    move-result-object v3

    .line 12145
    if-eqz v0, :cond_1

    .line 12148
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v4

    .line 12149
    if-nez v4, :cond_5

    .line 12150
    const-string/jumbo v2, ""

    const-string/jumbo v3, "can\'t get user profile"

    invoke-static {v2, v3, v0}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 12153
    :cond_5
    new-instance v2, Lgnz;

    invoke-direct {v2}, Lgnz;-><init>()V

    .line 12154
    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v5, :cond_6

    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 12155
    :cond_6
    invoke-static {v2, v0}, Lgpr;->a(Ljava/lang/Object;Lcma;)V

    goto :goto_0

    .line 12158
    :cond_7
    const-string/jumbo v2, "THREAD"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 12159
    new-instance v5, Lgpz$1;

    invoke-direct {v5, v3, v4, v0}, Lgpz$1;-><init>(Lgpz;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Lcma;)V

    invoke-interface {v2, v5}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method private f()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 978
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->c:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->c:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 980
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setVisibility(I)V

    .line 981
    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->j(Z)V

    .line 18905
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    if-nez v0, :cond_2

    .line 19895
    :cond_1
    :goto_0
    return-void

    .line 18908
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0

    .line 984
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 985
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setVisibility(I)V

    .line 986
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->c:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_4

    .line 987
    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->j(Z)V

    .line 19894
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 19897
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    if-nez v0, :cond_5

    .line 19898
    new-instance v0, Lcom/alibaba/dingtalk/cspace/widget/CsListFooterView;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/CsListFooterView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    .line 19899
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->a(I)V

    .line 19901
    :cond_5
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->I:Z

    return v0
.end method

.method static synthetic h(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->e()V

    return-void
.end method

.method static synthetic i(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->Y:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->Z:Z

    return v0
.end method

.method static synthetic k(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->f()V

    return-void
.end method


# virtual methods
.method protected final E_()V
    .locals 1

    .prologue
    .line 336
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->E_()V

    .line 338
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->W:Z

    if-nez v0, :cond_0

    .line 343
    :goto_0
    return-void

    .line 342
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->c(I)V

    goto :goto_0
.end method

.method protected final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 499
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->a()V

    .line 500
    sget v0, Lfzs$h;->and_org_share:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->c(Z)V

    .line 502
    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->e(Z)V

    .line 503
    new-instance v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$14;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$14;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b(Landroid/view/View$OnClickListener;)V

    .line 510
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    invoke-virtual {v0, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->a(Z)V

    .line 511
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    invoke-virtual {v0, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->b(Z)V

    .line 512
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    invoke-virtual {v0, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->c(Z)V

    .line 513
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->setDefaultSort(I)V

    .line 515
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    invoke-virtual {v0, p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->setToolBarItemSelectListener(Lgqp;)V

    .line 516
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->S:I

    if-ne v0, v1, :cond_1

    .line 517
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    invoke-virtual {v0, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->setVisibility(I)V

    .line 521
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 513
    goto :goto_0

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final a(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 913
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->a(Landroid/os/Message;)V

    .line 16051
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    .line 914
    if-nez v3, :cond_1

    .line 972
    :cond_0
    :goto_0
    return-void

    .line 917
    :cond_1
    iget v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->q:I

    .line 16880
    if-nez v3, :cond_4

    .line 16881
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->h:Landroid/view/ViewStub;

    if-eqz v3, :cond_2

    .line 16882
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->h:Landroid/view/ViewStub;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 918
    :cond_2
    :goto_1
    if-eqz p1, :cond_0

    .line 922
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 971
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->f()V

    goto :goto_0

    .line 16884
    :cond_4
    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 16885
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 17514
    iget-boolean v3, v3, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a:Z

    .line 16885
    if-eqz v3, :cond_2

    .line 16886
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    goto :goto_1

    .line 16888
    :cond_5
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 18111
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->V:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->V:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 18112
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->V:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    goto :goto_1

    .line 924
    :sswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_3

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lgip;

    if-eqz v3, :cond_3

    .line 925
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b:Landroid/widget/ListView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->c:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;

    if-eqz v3, :cond_3

    .line 926
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lgip;

    .line 927
    .local v2, "dpCoFolderListResultModel":Lgip;
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->c:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;

    iget-object v4, v2, Lgip;->d:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->a(Ljava/util/List;)V

    .line 928
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_2

    .line 933
    .end local v2    # "dpCoFolderListResultModel":Lgip;
    :sswitch_1
    const/16 v3, 0xc8

    invoke-direct {p0, v3, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->a(ILandroid/os/Message;)V

    goto :goto_2

    .line 936
    :sswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_3

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lgit;

    if-eqz v3, :cond_3

    .line 937
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b:Landroid/widget/ListView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->c:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;

    if-eqz v3, :cond_3

    .line 938
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lgit;

    .line 939
    .local v1, "coFolderModel":Lgit;
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->c:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;

    invoke-virtual {v3, v1}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->a(Lgit;)V

    .line 940
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_2

    .line 945
    .end local v1    # "coFolderModel":Lgit;
    :sswitch_3
    const/16 v3, 0x64

    invoke-direct {p0, v3, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->a(ILandroid/os/Message;)V

    goto/16 :goto_2

    .line 948
    :sswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_3

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 949
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->c:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;

    if-eqz v3, :cond_3

    .line 950
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 951
    .local v0, "cid":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->c:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;

    invoke-virtual {v3, v0}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 956
    .end local v0    # "cid":Ljava/lang/String;
    :sswitch_5
    const/16 v3, 0x190

    invoke-direct {p0, v3, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->a(ILandroid/os/Message;)V

    goto/16 :goto_2

    .line 959
    :sswitch_6
    sget v3, Lfzs$h;->space_share_setting_get_fail:I

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 962
    :sswitch_7
    sget v3, Lfzs$h;->dt_cspace_co_folder_quit_failed:I

    invoke-static {v3}, Lcms;->a(I)V

    goto/16 :goto_2

    .line 965
    :sswitch_8
    sget v3, Lfzs$h;->network_no_connection:I

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 922
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_3
        0x12c -> :sswitch_4
        0x12d -> :sswitch_5
        0x190 -> :sswitch_6
        0x1f4 -> :sswitch_7
        0x258 -> :sswitch_8
    .end sparse-switch
.end method

.method public final a(Lgit;)V
    .locals 0
    .param p1, "dpCoFolderModel"    # Lgit;

    .prologue
    .line 570
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b(Lgit;)V

    .line 571
    return-void
.end method

.method public final b_(I)V
    .locals 3
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 660
    sparse-switch p1, :sswitch_data_0

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 662
    :sswitch_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->c()V

    goto :goto_0

    .line 665
    :sswitch_1
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->d:I

    if-eq v0, v1, :cond_0

    .line 666
    iput v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->d:I

    .line 667
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lgpr;->b(Landroid/content/Context;I)V

    .line 668
    invoke-direct {p0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->c(I)V

    goto :goto_0

    .line 672
    :sswitch_2
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->d:I

    if-eq v0, v2, :cond_0

    .line 673
    iput v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->d:I

    .line 674
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lgpr;->b(Landroid/content/Context;I)V

    .line 675
    invoke-direct {p0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->c(I)V

    goto :goto_0

    .line 660
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public final c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 685
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "cspace_createfile_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 687
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 688
    .local v0, "app":Landroid/content/Context;
    const-string/jumbo v1, "first_create_cooperation_folder"

    invoke-static {v0, v1, v4}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 689
    const-string/jumbo v1, "first_create_cooperation_folder"

    invoke-static {v0, v1, v5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 11701
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 11702
    sget v2, Lfzs$h;->dt_cspace_cf_create_first_alert_title:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 11703
    sget v2, Lfzs$h;->dt_cspace_cf_create_first_alert_msg:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 11704
    sget v2, Lfzs$h;->dt_cspace_cf_continue_create:I

    new-instance v3, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$2;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$2;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 11710
    sget v2, Lfzs$h;->dt_cspace_cf_view_agreement:I

    new-instance v3, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$3;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$3;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 11717
    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 11718
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 695
    :goto_0
    return-void

    .line 693
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->e()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 318
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 9061
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->e:Ldq;

    .line 9062
    new-instance v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$7;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$7;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->f:Landroid/content/BroadcastReceiver;

    .line 9093
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 9094
    const-string/jumbo v1, "com.alibaba.dingtalk.space.cooperation.folder.delete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9095
    const-string/jumbo v1, "com.alibaba.dingtalk.space.cooperation.folder.rename"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9096
    const-string/jumbo v1, "com.alibaba.dingtalk.space.cooperation.folder.quit"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9097
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->e:Ldq;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 321
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->t:Z

    if-nez v0, :cond_0

    .line 322
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->c(I)V

    .line 324
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 328
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->onAttach(Landroid/app/Activity;)V

    .line 329
    if-eqz p1, :cond_0

    instance-of v0, p1, Lgdh;

    if-eqz v0, :cond_0

    .line 330
    check-cast p1, Lgdh;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->H:Lgdh;

    .line 332
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->onCreate(Landroid/os/Bundle;)V

    .line 162
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 163
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 164
    const-string/jumbo v1, "space_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->S:I

    .line 165
    const-string/jumbo v1, "space_org_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->U:J

    .line 167
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 171
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lfzs$g;->space_folder_layout:I

    invoke-virtual {v1, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 172
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->S:I

    invoke-static {v1, v2}, Lgpr;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->d:I

    .line 1434
    sget v1, Lfzs$f;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b:Landroid/widget/ListView;

    .line 1435
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->a()V

    .line 1436
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->F:Landroid/view/View;

    invoke-virtual {v1, v2, v8, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1437
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b:Landroid/widget/ListView;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$11;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$11;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1450
    sget v1, Lfzs$f;->swipe_layout_folders_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 1451
    sget v1, Lfzs$f;->loading_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->h:Landroid/view/ViewStub;

    .line 1454
    sget v1, Lfzs$f;->plus_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->G:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1455
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->G:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$12;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$12;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1461
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->a:I

    sget v2, Lcom/alibaba/dingtalk/cspace/constants/SpaceConstants;->b:I

    if-ne v1, v2, :cond_6

    .line 1462
    invoke-static {}, Lgpz;->b()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1463
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->G:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 1471
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v2, 0x4

    new-array v2, v2, [I

    sget v3, Lfzs$c;->swipe_refresh_color1:I

    aput v3, v2, v6

    sget v3, Lfzs$c;->swipe_refresh_color2:I

    aput v3, v2, v5

    const/4 v3, 0x2

    sget v4, Lfzs$c;->swipe_refresh_color1:I

    aput v4, v2, v3

    sget v3, Lfzs$c;->swipe_refresh_color2:I

    aput v3, v2, v9

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setColorScheme([I)V

    .line 1475
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->c:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;

    if-nez v1, :cond_1

    .line 1476
    new-instance v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->c:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;

    .line 1477
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->c:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;

    .line 2269
    iput-object p0, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->a:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$a;

    .line 1478
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->c:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->S:I

    .line 2273
    iput v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;->b:I

    .line 1479
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->c:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1482
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$13;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$13;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;)V

    .line 2524
    sget v1, Lfzs$f;->list_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->i:Landroid/view/View;

    .line 2525
    sget v1, Lfzs$f;->iftv_empty_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 2526
    sget v1, Lfzs$f;->tv_empty_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->l:Landroid/widget/TextView;

    .line 2527
    sget v1, Lfzs$f;->ll_good_case:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->j:Landroid/view/View;

    .line 2529
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->S:I

    if-eq v1, v5, :cond_8

    .line 2530
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v2, Lfzs$h;->icon_cspace_fill:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 2531
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->S:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    .line 2532
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->l:Landroid/widget/TextView;

    sget v2, Lfzs$h;->dt_cspace_co_folder_picker_empty_tip:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2536
    :goto_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->j:Landroid/view/View;

    invoke-static {v1, v7}, Lgpk;->a(Landroid/view/View;I)V

    .line 1494
    :cond_2
    :goto_2
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->S:I

    .line 3346
    iput v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->S:I

    .line 3347
    if-eq v1, v9, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    const/4 v2, 0x7

    if-ne v1, v2, :cond_a

    .line 3348
    :cond_3
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b:Landroid/widget/ListView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 3349
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->F:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 3351
    :cond_4
    invoke-virtual {p0, v6}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->i(Z)V

    .line 4182
    :goto_3
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b:Landroid/widget/ListView;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$1;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$1;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4220
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b:Landroid/widget/ListView;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$8;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$8;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 176
    iput-boolean v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->W:Z

    .line 178
    return-object v0

    .line 1465
    :cond_5
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->G:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v7}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1467
    :cond_6
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->a:I

    sget v2, Lcom/alibaba/dingtalk/cspace/constants/SpaceConstants;->c:I

    if-ne v1, v2, :cond_0

    .line 1468
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->G:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v7}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2534
    :cond_7
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->l:Landroid/widget/TextView;

    sget v2, Lfzs$h;->cspace_no_file:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 2537
    :cond_8
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->j:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 2538
    invoke-static {}, Lcms;->k()Z

    move-result v1

    if-nez v1, :cond_9

    .line 2540
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->j:Landroid/view/View;

    invoke-static {v1, v7}, Lgpk;->a(Landroid/view/View;I)V

    .line 2541
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->j:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 2543
    :cond_9
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->j:Landroid/view/View;

    invoke-static {v1, v6}, Lgpk;->a(Landroid/view/View;I)V

    .line 2544
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->j:Landroid/view/View;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$15;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$15;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 3353
    :cond_a
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b:Landroid/widget/ListView;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-nez v1, :cond_b

    .line 3354
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->F:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 3356
    :cond_b
    invoke-virtual {p0, v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->i(Z)V

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 557
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->e:Ldq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->f:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->e:Ldq;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 560
    :cond_0
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->onDestroy()V

    .line 561
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 565
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->onResume()V

    .line 566
    return-void
.end method
