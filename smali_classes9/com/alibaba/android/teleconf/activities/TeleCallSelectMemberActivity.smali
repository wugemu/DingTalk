.class public Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "TeleCallSelectMemberActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/view/View;

.field private C:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/view/View;

.field private G:Landroid/view/View;

.field private H:Landroid/view/View;

.field private I:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/view/View;

.field private M:Leum;

.field private N:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;",
            ">;"
        }
    .end annotation
.end field

.field private O:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;",
            ">;"
        }
    .end annotation
.end field

.field private P:Landroid/content/BroadcastReceiver;

.field private Q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private R:Ljava/lang/String;

.field private S:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

.field private T:I

.field private U:I

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field private X:Z

.field private Y:I

.field private Z:Z

.field private aa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ab:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;",
            ">;"
        }
    .end annotation
.end field

.field private ac:Ljava/lang/String;

.field private ad:Ljava/lang/String;

.field private ae:Ljava/lang/String;

.field private af:I

.field private ag:J

.field private ah:Z

.field private ai:Landroid/view/View$OnClickListener;

.field private b:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Z

.field private t:Landroid/view/View;

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;

.field private w:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const-class v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 170
    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->T:I

    .line 171
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->U:I

    .line 175
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->Y:I

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->aa:Ljava/util/List;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ab:Ljava/util/List;

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ah:Z

    .line 195
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ai:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
    .param p1, "x1"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->Y:I

    return p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    return-object v0
.end method

.method private a(Landroid/view/View;ILjava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "actionReason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1753
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->O:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 1754
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->O:Ljava/util/Map;

    .line 1756
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->O:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;

    .line 1757
    .local v0, "function":Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;
    if-nez v0, :cond_1

    .line 1758
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;

    .end local v0    # "function":Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;-><init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;B)V

    .line 1760
    .restart local v0    # "function":Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;
    :cond_1
    iput p2, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;->a:I

    .line 1761
    iput-object p3, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;->b:Ljava/lang/String;

    .line 1762
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->O:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1763
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;ILjava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 95
    const/4 v0, 0x0

    .line 12885
    if-lez p1, :cond_5

    .line 12890
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 12891
    const-string/jumbo v1, "choose_mode"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12892
    const-string/jumbo v1, "title"

    invoke-virtual {v2, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12893
    const-string/jumbo v1, "count_limit"

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12894
    const-string/jumbo v1, "count_limit_tips"

    invoke-virtual {v2, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12895
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12896
    const-string/jumbo v1, "activity_identify"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12898
    :cond_0
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    invoke-virtual {v0}, Lewh;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12899
    const-string/jumbo v0, "intent_key_support_fix_line"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12902
    :cond_1
    const-string/jumbo v0, "hide_org_external"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12903
    const-string/jumbo v0, "intent_key_show_conference_room"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12904
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 12905
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12906
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 12907
    if-eqz v0, :cond_2

    .line 12910
    iget-object v4, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 12911
    iget-object v0, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 12912
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 12913
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12917
    :cond_3
    const-string/jumbo v3, "key_request_select_user_list"

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 12921
    :cond_4
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 95
    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;JLjava/lang/String;Z)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Z

    .prologue
    .line 95
    const/4 v3, 0x0

    .line 13106
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13107
    :cond_0
    :goto_0
    return-void

    .line 13109
    :cond_1
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 13110
    invoke-virtual {v2, p3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    sget v7, Leuj$l;->conf_txt_send_invite_smsmsg:I

    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$14;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$14;-><init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;ZJ)V

    .line 13111
    invoke-virtual {v6, v7, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Leuj$l;->cancel:I

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$13;

    invoke-direct {v3, p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$13;-><init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 13140
    invoke-virtual {v0, v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 13146
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 95
    .line 14176
    if-eqz p1, :cond_a

    .line 14177
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->X:Z

    if-eqz v0, :cond_9

    .line 14178
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->bizCallNumInfos:Ljava/util/List;

    .line 14179
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 14180
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->aa:Ljava/util/List;

    if-nez v1, :cond_0

    .line 14181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->aa:Ljava/util/List;

    .line 14183
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ab:Ljava/util/List;

    if-nez v1, :cond_1

    .line 14184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ab:Ljava/util/List;

    .line 14186
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;

    .line 14187
    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->numList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 14188
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 14191
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->aa:Ljava/util/List;

    const-string/jumbo v5, "%s(%s)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    iget-object v7, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->contactName:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14193
    new-instance v4, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    invoke-direct {v4}, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;-><init>()V

    .line 14194
    iput-boolean v9, v4, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mBeValid:Z

    .line 14195
    iget-object v5, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->contactName:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mContactName:Ljava/lang/String;

    .line 14196
    iput-object v1, v4, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mNumber:Ljava/lang/String;

    .line 14197
    iget-object v5, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->ispMap:Ljava/util/Map;

    if-eqz v5, :cond_4

    .line 14198
    iget-object v5, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->ispMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v4, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mNumType:I

    .line 14200
    :cond_4
    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->orgId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mOrgId:J

    .line 14201
    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->corpId:Ljava/lang/String;

    iput-object v1, v4, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mCorpId:Ljava/lang/String;

    .line 14202
    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->adminUidList:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 14203
    iget-object v1, v4, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mAdminUids:Ljava/util/List;

    iget-object v5, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;->adminUidList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14205
    :cond_5
    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->Y:I

    iput v1, v4, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mCallType:I

    .line 14207
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ab:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14211
    :cond_6
    iput-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->aa:Ljava/util/List;

    .line 14212
    iput-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ab:Ljava/util/List;

    .line 14223
    :cond_7
    :goto_1
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->X:Z

    if-eqz v0, :cond_8

    .line 14224
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    invoke-virtual {v0}, Lewh;->n()Z

    move-result v0

    .line 14225
    if-nez v0, :cond_8

    .line 14226
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Update biz because cached invalid."

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14227
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    invoke-virtual {v0, v9, v8}, Lewh;->a(ZLcma;)V

    .line 95
    :cond_8
    return-void

    .line 14215
    :cond_9
    iput-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->aa:Ljava/util/List;

    .line 14216
    iput-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ab:Ljava/util/List;

    goto :goto_1

    .line 14219
    :cond_a
    iput-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->aa:Ljava/util/List;

    .line 14220
    iput-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ab:Ljava/util/List;

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .prologue
    const/4 v3, 0x1

    .line 95
    .line 12809
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    .line 12810
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    if-nez p1, :cond_1

    .line 12816
    :cond_0
    :goto_0
    return-void

    .line 12814
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 12815
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 12818
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 12819
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->W:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 12820
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->W:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 12821
    iput v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 12823
    :cond_2
    iget-boolean v2, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->f:Z

    if-eqz v2, :cond_3

    iget-boolean v0, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->g:Z

    if-eqz v0, :cond_5

    .line 12824
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isActive:Z

    .line 12828
    :goto_1
    iget v0, p1, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mCallType:I

    if-gtz v0, :cond_4

    .line 12829
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->Y:I

    iput v0, p1, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mCallType:I

    .line 12831
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->W:Ljava/lang/String;

    invoke-static {p0, v1, v0, p1}, Lewb;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    goto :goto_0

    .line 12826
    :cond_5
    iput-boolean v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isActive:Z

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/CharSequence;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/CharSequence;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
    .param p1, "x1"    # Ljava/lang/Integer;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 95
    .line 7090
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7091
    :cond_0
    :goto_0
    return-void

    .line 7093
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7094
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Leuj$l;->dt_common_i_know:I

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$11;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$11;-><init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 7095
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 7102
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 95
    .line 13992
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;-><init>()V

    .line 13993
    sget-object v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_SUPPORT_CALL_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->b:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 13994
    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->a:Ljava/lang/String;

    .line 13995
    iget-wide v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ag:J

    iput-wide v2, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->d:J

    .line 13996
    const-string/jumbo v1, "permission"

    iput-object v1, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->e:Ljava/lang/String;

    .line 13998
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14003
    .end local p2    # "x2":Ljava/lang/String;
    :goto_0
    iput-object p2, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->f:Ljava/lang/String;

    .line 14004
    invoke-static {}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a()Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a(Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;)V

    .line 95
    return-void

    .line 14001
    .restart local p2    # "x2":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, ","

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 95
    .line 15008
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15009
    :cond_0
    :goto_0
    return-void

    .line 15011
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 15012
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Leuj$l;->dt_common_i_know:I

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$6;

    invoke-direct {v3, p0, v0, p2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$6;-><init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Z)V

    .line 15013
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 15023
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 15024
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 95
    .line 14922
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14923
    :cond_0
    :goto_0
    return-void

    .line 14925
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$4;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$4;-><init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/util/List;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/Runnable;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/util/List;Ljava/util/Map;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/Map;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    .line 14118
    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->X:Z

    .line 14119
    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->Z:Z

    .line 14120
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    .line 14121
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 14122
    :cond_1
    :goto_0
    return-void

    .line 14124
    :cond_2
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 14129
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    move v4, v2

    move v5, v2

    move v6, v2

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 14130
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v9, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_BIZ_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v9}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v9

    if-eq v8, v9, :cond_3

    .line 14131
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v9, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP_TO_PSTN:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v9}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v9

    if-ne v8, v9, :cond_5

    .line 14133
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v8, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_BIZ_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v8}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v8

    if-ne v6, v8, :cond_4

    move v4, v3

    move v6, v3

    .line 14134
    goto :goto_1

    .line 14135
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v6, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP_TO_PSTN:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v6}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v6

    if-ne v0, v6, :cond_10

    move v1, v3

    move v6, v3

    .line 14136
    goto :goto_1

    .line 14138
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v8, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_CONF:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v8}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v8

    if-ne v0, v8, :cond_f

    move v0, v3

    move v5, v6

    :goto_2
    move v6, v5

    move v5, v0

    .line 14141
    goto :goto_1

    .line 14143
    :cond_6
    iput-boolean v6, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->X:Z

    .line 14144
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->X:Z

    if-eqz v0, :cond_7

    .line 14145
    if-eqz v4, :cond_b

    if-eqz v1, :cond_b

    .line 14146
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_BIZ_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->Y:I

    .line 14153
    :cond_7
    :goto_3
    iput-boolean v5, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->Z:Z

    .line 14155
    :cond_8
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->X:Z

    if-nez v0, :cond_e

    if-eqz p2, :cond_e

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 14157
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 14158
    if-eqz v0, :cond_9

    .line 14161
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 14162
    if-eqz v0, :cond_9

    .line 14163
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_BIZ_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v5}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v5

    if-eq v4, v5, :cond_a

    .line 14164
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v4, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP_TO_PSTN:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v4

    if-ne v0, v4, :cond_9

    :cond_a
    move v2, v3

    .line 14165
    goto :goto_4

    .line 14147
    :cond_b
    if-eqz v4, :cond_c

    .line 14148
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_BIZ_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->Y:I

    goto :goto_3

    .line 14149
    :cond_c
    if-eqz v1, :cond_7

    .line 14150
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP_TO_PSTN:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->Y:I

    goto :goto_3

    .line 14170
    :cond_d
    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->X:Z

    .line 14172
    :cond_e
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "hasBizCall "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->X:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; videoconf "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->Z:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    move v0, v5

    move v5, v6

    goto/16 :goto_2

    :cond_10
    move v0, v5

    move v5, v3

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/util/List;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
    .param p1, "x1"    # Ljava/util/Map;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;ZZ)V
    .locals 4
    .param p1, "cause"    # Ljava/lang/CharSequence;
    .param p2, "updateDefault"    # Z
    .param p3, "showIcon"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 647
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->c:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 650
    if-eqz p3, :cond_1

    .line 651
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 655
    :goto_0
    if-eqz p2, :cond_2

    .line 656
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ac:Ljava/lang/String;

    .line 667
    :cond_0
    :goto_1
    return-void

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 658
    :cond_2
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$17;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$17;-><init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private a(Ljava/lang/Integer;)V
    .locals 9
    .param p1, "callType"    # Ljava/lang/Integer;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v8, 0xc9

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 1352
    if-nez p1, :cond_1

    .line 1415
    :cond_0
    :goto_0
    return-void

    .line 1355
    :cond_1
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_BIZ_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1356
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->H:Landroid/view/View;

    sget v4, Leuj$h;->conf_call_bg_drawable:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1357
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->I:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Leuj$f;->txt_color_white_bg_selector:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1358
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->J:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Leuj$f;->txt_color_white_bg_selector:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1359
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->K:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1360
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->G:Landroid/view/View;

    const/16 v4, 0xd1

    invoke-direct {p0, v3, v4, v7}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_0

    .line 1361
    :cond_2
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP_CONF:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 1362
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->B:Landroid/view/View;

    sget v4, Leuj$h;->conf_call_bg_drawable:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1363
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->C:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Leuj$f;->txt_color_white_bg_selector:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1365
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->D:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {}, Lewp;->e()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1366
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->D:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Leuj$f;->txt_color_white_bg_selector:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1367
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1368
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->A:Landroid/view/View;

    const/16 v4, 0xd3

    invoke-direct {p0, v3, v4, v7}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Landroid/view/View;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1369
    :cond_3
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 1370
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->B:Landroid/view/View;

    sget v4, Leuj$h;->conf_call_bg_drawable:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1371
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->C:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Leuj$f;->txt_color_white_bg_selector:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1372
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->D:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {}, Lewp;->d()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1373
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->D:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Leuj$f;->txt_color_white_bg_selector:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1374
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1375
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->A:Landroid/view/View;

    const/16 v4, 0xcb

    invoke-direct {p0, v3, v4, v7}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Landroid/view/View;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1376
    :cond_4
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_CONF_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 1377
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->j:Landroid/view/View;

    sget v4, Leuj$h;->conf_call_bg_drawable:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1378
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Leuj$f;->txt_color_white_bg_selector:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1379
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Leuj$f;->txt_color_white_bg_selector:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1380
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1381
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->i:Landroid/view/View;

    const/16 v4, 0xcd

    invoke-direct {p0, v3, v4, v7}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Landroid/view/View;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1382
    :cond_5
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_CONF:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 1383
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->o:Landroid/view/View;

    sget v4, Leuj$h;->conf_call_bg_drawable:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1384
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->p:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Leuj$f;->txt_color_white_bg_selector:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1385
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Leuj$l;->dt_conference_start_btntitle_videoconf:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1386
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Leuj$f;->txt_color_white_bg_selector:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1387
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1388
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->n:Landroid/view/View;

    invoke-direct {p0, v3, v8, v7}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Landroid/view/View;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1389
    :cond_6
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_P2P:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_8

    .line 1390
    const/4 v1, 0x0

    .line 1391
    .local v1, "confValid":Z
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->O:Ljava/util/Map;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->n:Landroid/view/View;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;

    .line 1392
    .local v2, "function":Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;
    if-eqz v2, :cond_7

    .line 1393
    iget v0, v2, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;->a:I

    .line 1394
    .local v0, "action":I
    if-ne v0, v8, :cond_7

    .line 1395
    const/4 v1, 0x1

    .line 1398
    .end local v0    # "action":I
    :cond_7
    if-nez v1, :cond_0

    .line 1399
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->o:Landroid/view/View;

    sget v4, Leuj$h;->conf_call_bg_drawable:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1400
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->p:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Leuj$f;->txt_color_white_bg_selector:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1401
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Leuj$l;->dt_conference_start_btntitle_video:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1402
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Leuj$f;->txt_color_white_bg_selector:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1403
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1404
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->n:Landroid/view/View;

    const/16 v4, 0xc8

    invoke-direct {p0, v3, v4, v7}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Landroid/view/View;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1406
    .end local v1    # "confValid":Z
    .end local v2    # "function":Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;
    :cond_8
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_PSTN:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 1408
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_SYS:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1409
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->v:Landroid/view/View;

    sget v4, Leuj$h;->conf_call_bg_drawable:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1410
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->w:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Leuj$f;->txt_color_white_bg_selector:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1411
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Leuj$f;->txt_color_white_bg_selector:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1412
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1413
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->u:Landroid/view/View;

    const/16 v4, 0xcf

    invoke-direct {p0, v3, v4, v7}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Landroid/view/View;ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 6
    .param p1, "callType"    # Ljava/lang/Integer;
    .param p2, "cause"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v5, 0xcc

    const/16 v4, 0xca

    const/16 v3, 0x8

    .line 1428
    if-nez p1, :cond_1

    .line 1481
    :cond_0
    :goto_0
    return-void

    .line 1431
    :cond_1
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_BIZ_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1432
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->H:Landroid/view/View;

    sget v1, Leuj$h;->conf_call_disable_bg_drawable:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1433
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->I:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->txt_color_gray_bg_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1434
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->J:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->txt_color_gray_bg_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1435
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->K:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1436
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->G:Landroid/view/View;

    const/16 v1, 0xd2

    invoke-direct {p0, v0, v1, p2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_0

    .line 1437
    :cond_2
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 1438
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->B:Landroid/view/View;

    sget v1, Leuj$h;->conf_call_disable_bg_drawable:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1439
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->C:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->txt_color_gray_bg_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1440
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->D:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lewp;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1441
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->D:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->txt_color_gray_bg_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1442
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1443
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->A:Landroid/view/View;

    invoke-direct {p0, v0, v5, p2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Landroid/view/View;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1444
    :cond_3
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP_CONF:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 1445
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->B:Landroid/view/View;

    sget v1, Leuj$h;->conf_call_disable_bg_drawable:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1446
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->C:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->txt_color_gray_bg_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1448
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->D:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lewp;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1449
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->D:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->txt_color_gray_bg_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1450
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1451
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->A:Landroid/view/View;

    invoke-direct {p0, v0, v5, p2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Landroid/view/View;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1452
    :cond_4
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_CONF_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 1453
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->j:Landroid/view/View;

    sget v1, Leuj$h;->conf_call_disable_bg_drawable:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1454
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->txt_color_gray_bg_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1455
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->txt_color_gray_bg_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1456
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1457
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->i:Landroid/view/View;

    const/16 v1, 0xce

    invoke-direct {p0, v0, v1, p2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Landroid/view/View;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1458
    :cond_5
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_CONF:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 1459
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->o:Landroid/view/View;

    sget v1, Leuj$h;->conf_call_disable_bg_drawable:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1460
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->p:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->txt_color_gray_bg_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1461
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$l;->dt_conference_start_btntitle_videoconf:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1462
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->txt_color_gray_bg_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1463
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1464
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->n:Landroid/view/View;

    invoke-direct {p0, v0, v4, p2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Landroid/view/View;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1465
    :cond_6
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_P2P:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 1466
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->o:Landroid/view/View;

    sget v1, Leuj$h;->conf_call_disable_bg_drawable:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1467
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->p:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->txt_color_gray_bg_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1468
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$l;->dt_conference_start_btntitle_video:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1469
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->txt_color_gray_bg_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1470
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1471
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->n:Landroid/view/View;

    invoke-direct {p0, v0, v4, p2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Landroid/view/View;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1472
    :cond_7
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_PSTN:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1474
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_SYS:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1475
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->v:Landroid/view/View;

    sget v1, Leuj$h;->conf_call_disable_bg_drawable:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1476
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->w:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->txt_color_gray_bg_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1477
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->txt_color_gray_bg_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1478
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1479
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->u:Landroid/view/View;

    const/16 v1, 0xd0

    invoke-direct {p0, v0, v1, p2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Landroid/view/View;ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "jumpTxt"    # Ljava/lang/String;
    .param p2, "jumpUrl"    # Ljava/lang/String;
    .param p3, "notice"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v7, 0x21

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1342
    invoke-direct {p0, p3, v6, v5}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/CharSequence;ZZ)V

    .line 1344
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ac:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ac:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ac:Ljava/lang/String;

    .line 6234
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6236
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6237
    :cond_0
    :goto_0
    return-void

    .line 6240
    :cond_1
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 6241
    invoke-virtual {v0, p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 6242
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    .line 6244
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Leuj$f;->uidic_global_color_c2:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 6245
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v4, v0, v2, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 6246
    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$19;

    invoke-direct {v3, p0, p2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$19;-><init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v0, v2, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 6266
    invoke-direct {p0, v1, v6, v5}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/CharSequence;ZZ)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;>;"
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 941
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 966
    :cond_0
    :goto_0
    return-void

    .line 944
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->M:Leum;

    if-eqz v2, :cond_0

    .line 945
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->M:Leum;

    invoke-virtual {v2, p1}, Leum;->b(Ljava/util/List;)V

    .line 946
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->T:I

    if-ge v2, v3, :cond_3

    .line 947
    iget v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->T:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int v1, v2, v3

    .line 949
    .local v1, "remainNum":I
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Leuj$l;->and_conf_add_member_guide:I

    new-array v4, v6, [Ljava/lang/Object;

    .line 950
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 951
    .local v0, "extName":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v8, :cond_2

    .line 953
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Leuj$l;->and_conf_add_member_guide_for_conf:I

    new-array v4, v6, [Ljava/lang/Object;

    .line 954
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 956
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->M:Leum;

    invoke-virtual {v2, v0, v6}, Leum;->a(Ljava/lang/String;Z)V

    .line 959
    .end local v0    # "extName":Ljava/lang/String;
    .end local v1    # "remainNum":I
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v8, :cond_4

    .line 960
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Leuj$l;->conf_txt_delete_member:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 961
    .restart local v0    # "extName":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->M:Leum;

    invoke-virtual {v2, v0, v6}, Leum;->b(Ljava/lang/String;Z)V

    goto :goto_0

    .line 963
    .end local v0    # "extName":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->M:Leum;

    invoke-virtual {v2, v6}, Leum;->d(Z)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 1
    .param p2, "callbacks"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;>;"
    const/4 v0, 0x0

    .line 1945
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1946
    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 10
    .param p2, "stateCode"    # Ljava/lang/String;
    .param p3, "calleeNumber"    # Ljava/lang/String;
    .param p4, "callbacks"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;>;"
    const/4 v4, 0x1

    .line 1952
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1988
    .end local p3    # "calleeNumber":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1955
    .restart local p3    # "calleeNumber":Ljava/lang/String;
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1956
    const/4 v1, 0x0

    .line 1957
    .local v1, "keyUser":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 1958
    .local v7, "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    if-eqz v7, :cond_2

    iget-object v2, v7, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 1961
    iget-object v6, v7, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1962
    .local v6, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v2, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->c()J

    move-result-wide v8

    cmp-long v2, v2, v8

    if-eqz v2, :cond_2

    .line 1963
    move-object v1, v6

    .line 1967
    .end local v6    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v7    # "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    :cond_3
    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v8, 0x0

    cmp-long v0, v2, v8

    if-gtz v0, :cond_7

    .line 1968
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1971
    .end local p3    # "calleeNumber":Ljava/lang/String;
    :goto_1
    iput-object p3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->W:Ljava/lang/String;

    .line 1973
    :cond_4
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    invoke-virtual {v0, p4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1970
    .restart local p3    # "calleeNumber":Ljava/lang/String;
    :cond_5
    iget v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    if-ne v0, v4, :cond_4

    .line 1971
    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->workMobile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    goto :goto_1

    :cond_6
    iget-object p3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->workMobile:Ljava/lang/String;

    goto :goto_1

    .line 1975
    :cond_7
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v0

    new-instance v5, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$5;

    invoke-direct {v5, p0, p4}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$5;-><init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/Runnable;)V

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lewl;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Ljava/lang/String;ZLewl$c;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;Z)V
    .locals 7
    .param p2, "isRefresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "toUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;>;"
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 619
    const/4 v1, 0x0

    .line 620
    .local v1, "size":I
    if-eqz p1, :cond_0

    .line 621
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 623
    :cond_0
    if-gt v1, v3, :cond_1

    .line 624
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v2

    invoke-virtual {v2}, Lewh;->n()Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->X:Z

    .line 626
    :cond_1
    if-eqz p2, :cond_2

    .line 627
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->c()V

    .line 631
    :cond_2
    if-le v1, v3, :cond_3

    .line 632
    sget v2, Leuj$l;->and_conf_callselect_mode_select_for_multi_tip:I

    new-array v3, v6, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, "notice":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0, v6, v5}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/CharSequence;ZZ)V

    .line 637
    return-void

    .line 634
    .end local v0    # "notice":Ljava/lang/String;
    :cond_3
    sget v2, Leuj$l;->dt_conf_callselect_mode_select_tip:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "notice":Ljava/lang/String;
    goto :goto_0
.end method

.method private a(Ljava/util/Map;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1696
    .local p1, "netStatus":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .local p2, "lowVersions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1741
    :cond_0
    :goto_0
    return-void

    .line 1699
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_0

    .line 1700
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 1701
    .local v4, "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    if-eqz v4, :cond_2

    iget-object v6, v4, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    if-eqz v6, :cond_2

    .line 1704
    const/4 v1, 0x0

    .line 1705
    .local v1, "netState":Ljava/lang/String;
    iget-object v3, v4, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1706
    .local v3, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz p1, :cond_5

    .line 1707
    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "netState":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1708
    .restart local v1    # "netState":Ljava/lang/String;
    iput-object v1, v4, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->e:Ljava/lang/String;

    .line 1713
    :goto_2
    iget-boolean v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isDingSimCard:Z

    iput-boolean v6, v4, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->i:Z

    .line 1715
    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v8

    invoke-virtual {v8}, Lccr;->c()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 1716
    const/4 v0, 0x0

    .line 1717
    .local v0, "beLowVer":Z
    if-eqz p2, :cond_4

    .line 1718
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1719
    .local v2, "uid":Ljava/lang/Long;
    if-eqz v2, :cond_3

    .line 1722
    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    .line 1723
    const/4 v0, 0x1

    .line 1728
    .end local v2    # "uid":Ljava/lang/Long;
    :cond_4
    if-eqz v0, :cond_6

    .line 1729
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->g:Z

    .line 1733
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1734
    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ae:Ljava/lang/String;

    goto :goto_1

    .line 1710
    .end local v0    # "beLowVer":Z
    :cond_5
    const/4 v6, 0x0

    iput-object v6, v4, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->e:Ljava/lang/String;

    goto :goto_2

    .line 1731
    .restart local v0    # "beLowVer":Z
    :cond_6
    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->g:Z

    goto :goto_3

    .line 1739
    .end local v0    # "beLowVer":Z
    .end local v1    # "netState":Ljava/lang/String;
    .end local v3    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v4    # "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    :cond_7
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private a(Z)V
    .locals 4
    .param p1, "isNotify"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 925
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 926
    .local v1, "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 927
    .local v0, "mySelf":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    new-instance v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    sget-object v3, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->NormalType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-direct {v2, v3}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;-><init>(Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;)V

    .line 928
    .local v2, "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    iput-object v0, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    .line 929
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->f:Z

    .line 930
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    if-nez v3, :cond_0

    .line 931
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    .line 933
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 935
    if-eqz p1, :cond_1

    .line 936
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/util/List;)V

    .line 938
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->s:Z

    return p1
.end method

.method private b(Ljava/lang/Integer;)I
    .locals 5
    .param p1, "callType"    # Ljava/lang/Integer;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1484
    const/4 v0, -0x1

    .line 1485
    .local v0, "action":I
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->O:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 1486
    :cond_0
    const/4 v3, -0x1

    .line 1512
    :goto_0
    return v3

    .line 1488
    :cond_1
    const/4 v1, 0x0

    .line 1489
    .local v1, "actionView":Landroid/view/View;
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 1490
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->A:Landroid/view/View;

    .line 1506
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 1507
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->O:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;

    .line 1508
    .local v2, "function":Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;
    if-eqz v2, :cond_3

    .line 1509
    iget v0, v2, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;->a:I

    .end local v2    # "function":Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$a;
    :cond_3
    move v3, v0

    .line 1512
    goto :goto_0

    .line 1491
    :cond_4
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP_CONF:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 1492
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->A:Landroid/view/View;

    goto :goto_1

    .line 1493
    :cond_5
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_CONF_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 1494
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->i:Landroid/view/View;

    goto :goto_1

    .line 1495
    :cond_6
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_CONF:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_7

    .line 1496
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->n:Landroid/view/View;

    goto :goto_1

    .line 1497
    :cond_7
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_P2P:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_8

    .line 1498
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->n:Landroid/view/View;

    goto :goto_1

    .line 1499
    :cond_8
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_PSTN:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 1501
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_SYS:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_9

    .line 1502
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->u:Landroid/view/View;

    goto :goto_1

    .line 1503
    :cond_9
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_BIZ_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1504
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->G:Landroid/view/View;

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->O:Ljava/util/Map;

    return-object v0
.end method

.method private b()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 670
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->Q:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->Q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 671
    :cond_0
    invoke-direct {p0, v9}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Z)V

    .line 673
    invoke-static {p0}, Levl;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 674
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->L:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 699
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/util/List;)V

    .line 700
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    invoke-direct {p0, v2, v9}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/util/List;Z)V

    .line 701
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b(Ljava/util/List;)V

    .line 702
    return-void

    .line 676
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->L:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 679
    :cond_3
    invoke-direct {p0, v8}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Z)V

    .line 680
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->Q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 681
    .local v0, "identityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v0, :cond_4

    .line 684
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    .line 685
    new-instance v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    sget-object v3, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->NormalType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-direct {v1, v3}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;-><init>(Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;)V

    .line 687
    .local v1, "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    iput-object v0, v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    .line 688
    iget-boolean v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isActive:Z

    iput-boolean v3, v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->f:Z

    .line 689
    iget v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_5

    .line 690
    iput-boolean v9, v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->h:Z

    .line 694
    :goto_2
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 692
    :cond_5
    iput-boolean v8, v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->h:Z

    goto :goto_2
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;)V
    .locals 13
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;

    .prologue
    const/16 v12, 0xcc

    const/16 v11, 0xca

    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 95
    .line 15517
    if-nez p1, :cond_1

    .line 15522
    :cond_0
    :goto_0
    return-void

    .line 15520
    :cond_1
    iget-object v6, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->callTypeList:Ljava/util/List;

    .line 15521
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15525
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->causeMap:Ljava/util/Map;

    .line 15526
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 15527
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 15528
    if-eqz v0, :cond_2

    .line 15531
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 15532
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 15533
    invoke-direct {p0, v1, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v1, v2

    move v3, v2

    move v4, v2

    .line 15539
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 15540
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 15541
    if-nez v0, :cond_5

    .line 15539
    :cond_4
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 15545
    :cond_5
    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;)V

    .line 15546
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v8, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_CONF:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v8}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v8

    if-ne v7, v8, :cond_6

    move v4, v5

    .line 15547
    goto :goto_3

    .line 15548
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v7, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP_CONF:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v7}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v7

    if-ne v0, v7, :cond_4

    move v3, v5

    .line 15549
    goto :goto_3

    .line 15553
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 15554
    if-gt v0, v10, :cond_13

    .line 15557
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 15558
    if-eqz v0, :cond_8

    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    if-eqz v1, :cond_8

    .line 15561
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 15562
    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-eqz v1, :cond_8

    .line 15563
    iget-boolean v1, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->g:Z

    if-eqz v1, :cond_2b

    move v1, v2

    .line 15566
    :goto_4
    iget-boolean v0, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->f:Z

    if-nez v0, :cond_2a

    move v0, v2

    .line 15572
    :goto_5
    if-nez v1, :cond_a

    .line 15573
    sget v1, Leuj$l;->dt_conf_callselect_user_low_version_tip:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 15574
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b(Ljava/lang/Integer;)I

    move-result v3

    .line 15575
    if-eq v3, v12, :cond_9

    .line 15576
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 15578
    :cond_9
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_P2P:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b(Ljava/lang/Integer;)I

    move-result v3

    .line 15579
    if-eq v3, v11, :cond_a

    .line 15580
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_P2P:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 15583
    :cond_a
    if-nez v0, :cond_c

    .line 15584
    sget v1, Leuj$l;->dt_conf_callselect_user_no_active_tip:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 15585
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b(Ljava/lang/Integer;)I

    move-result v3

    .line 15586
    if-eq v3, v12, :cond_b

    .line 15587
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 15589
    :cond_b
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_P2P:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b(Ljava/lang/Integer;)I

    move-result v3

    .line 15590
    if-eq v3, v11, :cond_c

    .line 15591
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_P2P:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 15672
    :cond_c
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->W:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 15673
    sget v1, Leuj$l;->dt_conf_callselect_no_number_tip:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 15674
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_SYS:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b(Ljava/lang/Integer;)I

    move-result v3

    .line 15675
    const/16 v4, 0xd0

    if-eq v3, v4, :cond_d

    .line 15676
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_SYS:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 15595
    :cond_d
    :goto_6
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->W:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    if-nez v0, :cond_e

    .line 15597
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->U:I

    add-int/lit8 v0, v0, -0x2

    .line 15598
    if-lez v0, :cond_e

    .line 15599
    sget v1, Leuj$l;->and_conf_callselect_conf_member_remind_tip:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 15600
    invoke-direct {p0, v0, v5, v2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/CharSequence;ZZ)V

    .line 16270
    :cond_e
    :goto_7
    if-nez p1, :cond_17

    .line 16639
    :cond_f
    :goto_8
    if-eqz p1, :cond_29

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->actMap:Ljava/util/Map;

    if-eqz v0, :cond_29

    .line 16640
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->actMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 16641
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v4, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_BIZ_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v4

    if-ne v1, v4, :cond_10

    .line 16642
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActModel;

    .line 16643
    if-eqz v0, :cond_10

    .line 16644
    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActModel;->type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v4, Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;->ACT_JUMP:Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActType;->valueOf()I

    move-result v4

    if-ne v1, v4, :cond_10

    .line 16645
    iput-boolean v5, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->X:Z

    .line 16646
    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_BIZ_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;)V

    .line 16647
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ah:Z

    if-nez v1, :cond_11

    .line 16648
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->K:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16649
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->K:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActModel;->superscript:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16651
    :cond_11
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->H:Landroid/view/View;

    sget v4, Leuj$h;->conf_call_disable_bg_drawable:I

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 16652
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->I:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Leuj$f;->txt_color_gray_bg_selector:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 16654
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->G:Landroid/view/View;

    new-instance v4, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$20;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$20;-><init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Lcom/alibaba/android/teleconf/sdk/idl/model/BtnActModel;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16663
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->jumpText:Ljava/lang/String;

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->jumpUrl:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->recommendText:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v4}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 15679
    :cond_12
    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_SYS:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;)V

    goto/16 :goto_6

    .line 15604
    :cond_13
    sget v0, Leuj$l;->dt_conf_callselect_no_number_muti_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 15605
    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_SYS:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b(Ljava/lang/Integer;)I

    move-result v1

    .line 15606
    const/16 v6, 0xd0

    if-eq v1, v6, :cond_14

    .line 15607
    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_SYS:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 15609
    :cond_14
    if-nez v3, :cond_15

    .line 15611
    invoke-static {}, Lewx;->f()Z

    move-result v0

    if-eqz v0, :cond_16

    sget v0, Leuj$l;->dt_conf_callselect_no_voip_muti_tip_ext:I

    .line 15613
    :goto_a
    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 15614
    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b(Ljava/lang/Integer;)I

    move-result v1

    .line 15615
    if-eq v1, v12, :cond_15

    .line 15616
    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 15619
    :cond_15
    if-nez v4, :cond_e

    .line 15621
    sget v0, Leuj$l;->and_conf_callselect_video_multi_warn_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 15622
    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_P2P:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b(Ljava/lang/Integer;)I

    move-result v1

    .line 15623
    if-eq v1, v11, :cond_e

    .line 15624
    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_P2P:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 15611
    :cond_16
    sget v0, Leuj$l;->dt_conf_callselect_no_voip_muti_tip:I

    goto :goto_a

    .line 16273
    :cond_17
    iget-object v4, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->recommendType:Ljava/lang/Integer;

    .line 16274
    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->recommendText:Ljava/lang/String;

    .line 16275
    iget-object v6, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->jumpText:Ljava/lang/String;

    .line 16276
    iget-object v7, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->jumpUrl:Ljava/lang/String;

    .line 16277
    if-eqz v4, :cond_f

    .line 16278
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 16279
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a:Ljava/lang/String;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "Recommend "

    aput-object v9, v8, v2

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    aput-object v3, v8, v10

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v1, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16283
    :goto_b
    const-string/jumbo v0, ""

    .line 16284
    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v1, v8, :cond_18

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP_CONF:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    .line 16285
    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v1, v8, :cond_1f

    .line 16286
    :cond_18
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ah:Z

    if-nez v0, :cond_19

    .line 16287
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16290
    :cond_19
    invoke-static {}, Lewx;->f()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 16291
    sget v1, Leuj$l;->dt_conf_callselect_invite_member_in_wifi_suggest_tip_ext:I

    .line 16292
    sget v0, Leuj$l;->dt_conf_callselect_invite_member_in_wifi_tip_ext:I

    .line 16297
    :goto_c
    sget-object v8, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v8}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v8, v4, :cond_1e

    .line 16298
    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 16334
    :cond_1a
    :goto_d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    move-object v0, v3

    .line 16337
    :cond_1b
    invoke-direct {p0, v6, v7, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 16281
    :cond_1c
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a:Ljava/lang/String;

    new-array v8, v10, [Ljava/lang/String;

    const-string/jumbo v9, "Recommend "

    aput-object v9, v8, v2

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v1, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 16294
    :cond_1d
    sget v1, Leuj$l;->dt_conf_callselect_invite_member_in_wifi_suggest_tip:I

    .line 16295
    sget v0, Leuj$l;->dt_conf_callselect_invite_member_in_wifi_tip:I

    goto :goto_c

    .line 16300
    :cond_1e
    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 16302
    :cond_1f
    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_SYS:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v1, v8, :cond_21

    .line 16303
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->W:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 16304
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ah:Z

    if-nez v0, :cond_20

    .line 16305
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16308
    :cond_20
    sget v0, Leuj$l;->dt_conference_recommend_syscall:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 16309
    :cond_21
    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_P2P:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v1, v8, :cond_22

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_CONF:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    .line 16310
    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v1, v8, :cond_25

    .line 16311
    :cond_22
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ah:Z

    if-nez v0, :cond_23

    .line 16312
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16318
    :cond_23
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_P2P:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_24

    .line 16319
    sget v0, Leuj$l;->dt_conference_recommend_video_p2p:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 16321
    :cond_24
    sget v0, Leuj$l;->dt_conference_recommend_video_conf:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 16323
    :cond_25
    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_CONF_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v1, v8, :cond_27

    .line 16324
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ah:Z

    if-nez v0, :cond_26

    .line 16325
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16327
    :cond_26
    sget v0, Leuj$l;->dt_conference_recommend_conference:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 16328
    :cond_27
    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_BIZ_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v1, v4, :cond_1a

    .line 16329
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ah:Z

    if-nez v0, :cond_28

    .line 16330
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->K:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16332
    :cond_28
    sget v0, Leuj$l;->dt_conference_recommond_bizcall:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 15631
    :cond_29
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->c()V

    .line 15633
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15634
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "phone_launch_disable_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2a
    move v0, v5

    goto/16 :goto_5

    :cond_2b
    move v1, v5

    goto/16 :goto_4

    :cond_2c
    move v0, v5

    move v1, v5

    goto/16 :goto_5
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 95
    .line 12060
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12061
    :cond_0
    :goto_0
    return-void

    .line 12063
    :cond_1
    sget v0, Leuj$l;->dt_conference_start_syscall_msg_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 12064
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 12065
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 12066
    sget v0, Leuj$l;->dt_conf_callselect_btn_make_call:I

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$9;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$9;-><init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 12079
    sget v0, Leuj$l;->cancel:I

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$10;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$10;-><init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 12086
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Z)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 10028
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10031
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10032
    sget v2, Leuj$l;->dt_conf_callselect_3g_warning_tip:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 10033
    sget v2, Leuj$l;->login_ok:I

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$7;

    invoke-direct {v3, p0, v1, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$7;-><init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Z)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 10047
    sget v2, Leuj$l;->login_cancel:I

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$8;

    invoke-direct {v3, p0, v1, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$8;-><init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Z)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 10056
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 95
    :cond_0
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "toUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;>;"
    const/4 v5, 0x0

    .line 969
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1115
    :cond_0
    :goto_0
    return-void

    .line 972
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->O:Ljava/util/Map;

    if-nez v3, :cond_3

    .line 973
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->O:Ljava/util/Map;

    .line 978
    :goto_1
    iput-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->W:Ljava/lang/String;

    .line 979
    iput-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->V:Ljava/lang/String;

    .line 981
    invoke-static {v5}, Lcms;->e(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 5783
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    if-nez v3, :cond_4

    .line 985
    :goto_2
    new-instance v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;-><init>()V

    .line 986
    .local v1, "reqModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->R:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 987
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->R:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;->cid:Ljava/lang/String;

    .line 991
    :goto_3
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->S:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    if-eqz v3, :cond_b

    .line 992
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->S:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;->preferType:Ljava/lang/Integer;

    .line 996
    :goto_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;->calleeUidList:Ljava/util/List;

    .line 997
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 998
    .local v0, "identityObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    if-eqz v0, :cond_2

    .line 1001
    iget-object v4, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 1002
    iget-object v2, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1003
    .local v2, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 1004
    iget-object v4, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;->calleeUidList:Ljava/util/List;

    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 975
    .end local v0    # "identityObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    .end local v1    # "reqModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;
    .end local v2    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->O:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    goto :goto_1

    .line 5786
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 5787
    const/4 v4, 0x2

    if-le v3, v4, :cond_7

    .line 5788
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_BIZ_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Leuj$l;->dt_conference_start_error_cannotuse_bizcall:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 5789
    invoke-static {}, Lewh;->a()Lewh;

    invoke-static {}, Lewh;->o()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5790
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP_CONF:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;)V

    .line 5797
    :goto_6
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_CONF_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;)V

    .line 5798
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_SYS:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Leuj$l;->dt_conf_callselect_no_number_muti_tip:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 5792
    :cond_5
    invoke-static {}, Lewx;->f()Z

    move-result v3

    if-eqz v3, :cond_6

    sget v3, Leuj$l;->dt_conf_callselect_no_voip_muti_tip_ext:I

    .line 5794
    :goto_7
    sget-object v4, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v3}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_6

    .line 5792
    :cond_6
    sget v3, Leuj$l;->dt_conf_callselect_no_voip_muti_tip:I

    goto :goto_7

    .line 5800
    :cond_7
    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->X:Z

    if-eqz v3, :cond_8

    .line 5801
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_BIZ_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;)V

    .line 5805
    :goto_8
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;)V

    .line 5806
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_CONF_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 5807
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->W:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 5808
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_SYS:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;)V

    .line 5821
    :goto_9
    invoke-direct {p0, v5, v5}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/util/Map;Ljava/util/List;)V

    goto/16 :goto_2

    .line 5803
    :cond_8
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_BIZ_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Leuj$l;->dt_conference_start_error_cannotuse_bizcall:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_8

    .line 5810
    :cond_9
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    new-instance v4, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$21;

    invoke-direct {v4, p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$21;-><init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)V

    invoke-direct {p0, v3, v4}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/util/List;Ljava/lang/Runnable;)V

    goto :goto_9

    .line 989
    .restart local v1    # "reqModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;
    :cond_a
    iput-object v5, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;->cid:Ljava/lang/String;

    goto/16 :goto_3

    .line 994
    :cond_b
    iput-object v5, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;->preferType:Ljava/lang/Integer;

    goto/16 :goto_4

    .line 1008
    :cond_c
    const-string/jumbo v3, "tele_conf"

    sget-object v4, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Get call type with "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;->preferType:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->f:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 1011
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ag:J

    .line 1012
    invoke-static {}, Leyc;->a()Leyc;

    move-result-object v4

    const-string/jumbo v3, "EVENTBUTLER"

    .line 1013
    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;

    invoke-direct {v5, p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;-><init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/util/List;)V

    const-class v6, Leyo$d;

    invoke-interface {v3, v5, v6, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leyo$d;

    .line 1012
    invoke-virtual {v4, v1, v3}, Leyc;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;Leyo$d;)V

    goto/16 :goto_0

    .line 1112
    .end local v1    # "reqModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;
    :cond_d
    const-string/jumbo v3, "tele_conf"

    sget-object v4, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a:Ljava/lang/String;

    const-string/jumbo v5, "Net error"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->f()V

    goto/16 :goto_0
.end method

.method private b(Ljava/util/List;Z)V
    .locals 8
    .param p2, "isVoipConf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 708
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;>;"
    if-eqz p1, :cond_0

    .line 709
    const-string/jumbo v4, "tele_conf"

    sget-object v5, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Goto conf, size "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 712
    .local v0, "extras":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->R:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 713
    const-string/jumbo v4, "conversation_id"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    :goto_0
    const-string/jumbo v4, "conference_from_home"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 718
    if-eqz p2, :cond_1

    .line 719
    const-string/jumbo v4, "conf_type"

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 722
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 723
    .local v1, "identityObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 724
    .local v3, "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    if-eqz v3, :cond_2

    iget-object v5, v3, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    if-eqz v5, :cond_2

    .line 727
    iget-object v2, v3, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 728
    .local v2, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 715
    .end local v1    # "identityObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v2    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v3    # "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    :cond_3
    const-string/jumbo v4, "conversation_id"

    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->R:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 730
    .restart local v1    # "identityObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_4
    if-eqz p2, :cond_5

    .line 731
    invoke-static {p0, v1, v0}, Lewb;->b(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    .line 735
    :goto_2
    return-void

    .line 733
    :cond_5
    invoke-static {p0, v1, v0}, Lewb;->a(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_2
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ad:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ad:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    return-object p1
.end method

.method private c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1418
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 1419
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1420
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1425
    :goto_0
    return-void

    .line 1422
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1423
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->t:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Z)V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->V:Ljava/lang/String;

    return-object p1
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 1745
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->M:Leum;

    if-eqz v0, :cond_0

    .line 1746
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->M:Leum;

    invoke-virtual {v0, v1}, Leum;->d(Z)V

    .line 1747
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->M:Leum;

    invoke-virtual {v0, v1}, Leum;->b(Z)V

    .line 1748
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->M:Leum;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leum;->a(Z)V

    .line 1750
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 95
    .line 7774
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 7775
    :cond_0
    :goto_0
    return-void

    .line 7777
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->d()V

    .line 7779
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 8755
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    if-nez v1, :cond_3

    .line 7781
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->finish()V

    goto :goto_0

    .line 8758
    :cond_3
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 8759
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->W:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8760
    iput-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 8764
    :goto_2
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ae:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->R:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lewb;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 8762
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->W:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    goto :goto_2
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/util/List;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 95
    .line 13684
    if-eqz p1, :cond_1

    .line 13685
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 13686
    if-eqz v0, :cond_0

    .line 13689
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->e:Ljava/lang/String;

    .line 13690
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->i:Z

    goto :goto_0

    .line 95
    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->W:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    .prologue
    .line 95
    .line 9740
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9741
    :cond_0
    :goto_0
    return-void

    .line 9743
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->d()V

    .line 9745
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b(Ljava/util/List;Z)V

    .line 9747
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->finish()V

    goto :goto_0
.end method

.method private e()Z
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v11, 0xcc

    const/16 v10, 0xca

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1766
    sget-object v9, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v9}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b(Ljava/lang/Integer;)I

    move-result v9

    if-ne v9, v11, :cond_0

    move v6, v7

    .line 1767
    .local v6, "voipDisable":Z
    :goto_0
    sget-object v9, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP_CONF:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v9}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b(Ljava/lang/Integer;)I

    move-result v9

    if-ne v9, v11, :cond_1

    move v5, v7

    .line 1768
    .local v5, "voipConfDisable":Z
    :goto_1
    sget-object v9, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_P2P:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v9}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b(Ljava/lang/Integer;)I

    move-result v9

    if-ne v9, v10, :cond_2

    move v4, v7

    .line 1769
    .local v4, "videoDisable":Z
    :goto_2
    sget-object v9, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_CONF:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v9}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b(Ljava/lang/Integer;)I

    move-result v9

    if-ne v9, v10, :cond_3

    move v3, v7

    .line 1770
    .local v3, "videoConfDisable":Z
    :goto_3
    sget-object v9, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_CONF_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v9}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b(Ljava/lang/Integer;)I

    move-result v9

    const/16 v10, 0xce

    if-ne v9, v10, :cond_4

    move v1, v7

    .line 1771
    .local v1, "confDisable":Z
    :goto_4
    sget-object v9, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_SYS:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v9}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b(Ljava/lang/Integer;)I

    move-result v9

    const/16 v10, 0xd0

    if-ne v9, v10, :cond_5

    move v2, v7

    .line 1772
    .local v2, "sysDisable":Z
    :goto_5
    sget-object v9, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_BIZ_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v9}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b(Ljava/lang/Integer;)I

    move-result v9

    const/16 v10, 0xd2

    if-ne v9, v10, :cond_6

    move v0, v7

    .line 1773
    .local v0, "bizDisable":Z
    :goto_6
    if-eqz v6, :cond_7

    if-eqz v5, :cond_7

    if-eqz v4, :cond_7

    if-eqz v3, :cond_7

    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    .line 1778
    :goto_7
    return v7

    .end local v0    # "bizDisable":Z
    .end local v1    # "confDisable":Z
    .end local v2    # "sysDisable":Z
    .end local v3    # "videoConfDisable":Z
    .end local v4    # "videoDisable":Z
    .end local v5    # "voipConfDisable":Z
    .end local v6    # "voipDisable":Z
    :cond_0
    move v6, v8

    .line 1766
    goto :goto_0

    .restart local v6    # "voipDisable":Z
    :cond_1
    move v5, v8

    .line 1767
    goto :goto_1

    .restart local v5    # "voipConfDisable":Z
    :cond_2
    move v4, v8

    .line 1768
    goto :goto_2

    .restart local v4    # "videoDisable":Z
    :cond_3
    move v3, v8

    .line 1769
    goto :goto_3

    .restart local v3    # "videoConfDisable":Z
    :cond_4
    move v1, v8

    .line 1770
    goto :goto_4

    .restart local v1    # "confDisable":Z
    :cond_5
    move v2, v8

    .line 1771
    goto :goto_5

    .restart local v2    # "sysDisable":Z
    :cond_6
    move v0, v8

    .line 1772
    goto :goto_6

    .restart local v0    # "bizDisable":Z
    :cond_7
    move v7, v8

    .line 1778
    goto :goto_7
.end method

.method static synthetic f(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    .prologue
    .line 95
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->T:I

    return v0
.end method

.method private f()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1826
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    if-nez v3, :cond_1

    .line 1869
    :cond_0
    :goto_0
    return-void

    .line 1829
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Leuj$l;->dt_conference_no_network_connected:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1830
    .local v0, "exp":Ljava/lang/String;
    invoke-direct {p0, v0, v6, v5}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/CharSequence;ZZ)V

    .line 1831
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1832
    .local v2, "size":I
    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    .line 1833
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_BIZ_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1834
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1835
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_CONF:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1836
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_CONF_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1837
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_SYS:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Leuj$l;->dt_conf_callselect_no_number_muti_tip:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1866
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1867
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "phone_launch_disable_click"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 1839
    :cond_2
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_BIZ_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1840
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1841
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_P2P:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1842
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_CONF_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1843
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->W:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1844
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_SYS:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;)V

    .line 1845
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Leuj$l;->dt_conf_callselect_syscall_with_net_exp:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1846
    .local v1, "notice":Ljava/lang/String;
    invoke-direct {p0, v1, v6, v5}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/CharSequence;ZZ)V

    .line 1863
    .end local v1    # "notice":Ljava/lang/String;
    :goto_2
    invoke-direct {p0, v7, v7}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/util/Map;Ljava/util/List;)V

    goto :goto_1

    .line 1848
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    new-instance v4, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$2;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$2;-><init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/String;)V

    invoke-direct {p0, v3, v4}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/util/List;Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method static synthetic g(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    .prologue
    .line 95
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->U:I

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->d()V

    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 95
    .line 10872
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->d()V

    .line 10873
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    .line 11839
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10875
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->finish()V

    .line 95
    return-void

    .line 11842
    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 11843
    const-string/jumbo v0, "isFromService"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11844
    const-string/jumbo v0, "message"

    const-string/jumbo v5, "conf_caller"

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11846
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->s:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->Z:Z

    if-eqz v0, :cond_7

    :cond_2
    move v0, v2

    .line 11849
    :goto_1
    if-ne v2, v0, :cond_3

    .line 11850
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->R:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 11851
    const-string/jumbo v5, "conversation_id"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11856
    :cond_3
    :goto_2
    const-string/jumbo v5, "conf_video_to_user_type"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11857
    const-string/jumbo v0, "conf_video_auto"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11858
    const-string/jumbo v0, "conf_video_3g_remind_flag"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11860
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11861
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 11862
    if-eqz v0, :cond_4

    iget-object v3, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    if-eqz v3, :cond_4

    .line 11865
    iget-object v0, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 11866
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 11853
    :cond_5
    const-string/jumbo v5, "conversation_id"

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->R:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 11868
    :cond_6
    invoke-static {p0, v1, v4}, Lewb;->c(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method static synthetic j(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->W:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Z
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    .prologue
    const/4 v7, 0x1

    .line 95
    .line 12788
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 12801
    :cond_0
    :goto_0
    return v7

    .line 12791
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->W:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12795
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 12796
    if-eqz v0, :cond_0

    .line 12799
    iget-object v0, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 12800
    if-eqz v0, :cond_0

    .line 12803
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    .line 12804
    :goto_1
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->V:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->W:Ljava/lang/String;

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lewf;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    goto :goto_0

    .line 12803
    :cond_2
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic l(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->aa:Ljava/util/List;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ab:Ljava/util/List;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->X:Z

    return v0
.end method

.method static synthetic o(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Leum;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->M:Leum;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->L:Landroid/view/View;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    .prologue
    const/4 v3, 0x0

    .line 95
    .line 13872
    invoke-static {v3}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13873
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    if-nez v0, :cond_1

    .line 13916
    :cond_0
    :goto_0
    return-void

    .line 13876
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Leuj$l;->dt_error_lwp_timeout:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 13877
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/CharSequence;ZZ)V

    .line 13878
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 13879
    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    .line 13880
    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_BIZ_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 13881
    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 13882
    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_CONF:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 13884
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_CONF_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;)V

    .line 13885
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_SYS:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Leuj$l;->dt_conf_callselect_no_number_muti_tip:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 13913
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13914
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "phone_launch_disable_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 13887
    :cond_2
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->X:Z

    if-eqz v1, :cond_3

    .line 13888
    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_BIZ_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;)V

    .line 13890
    :cond_3
    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;)V

    .line 13891
    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_P2P:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 13892
    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_CONF_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 13894
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->W:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 13895
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_SYS:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/lang/Integer;)V

    .line 13910
    :goto_2
    invoke-direct {p0, v3, v3}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/util/Map;Ljava/util/List;)V

    goto :goto_1

    .line 13897
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->N:Ljava/util/List;

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$3;-><init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/util/List;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 13917
    :cond_5
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->f()V

    goto/16 :goto_0
.end method

.method static synthetic u(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic v(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    .prologue
    .line 95
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->af:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->af:I

    return v0
.end method

.method static synthetic w(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    .prologue
    .line 95
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->af:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 399
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 400
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Leuj$f;->conf_call_and_video_bg_color:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 401
    sget v0, Leuj$j;->activity_teleconf_select_members_for_call:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->setContentView(I)V

    .line 2425
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2426
    if-eqz v0, :cond_0

    .line 2427
    const-string/jumbo v1, "choose_user_identities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->Q:Ljava/util/List;

    .line 2428
    const-string/jumbo v1, "conf_call_to_user_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->get(I)Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->S:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    .line 2429
    const-string/jumbo v1, "conversation_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->R:Ljava/lang/String;

    .line 3416
    :cond_0
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    invoke-virtual {v0}, Lewh;->d()I

    move-result v0

    .line 3417
    invoke-static {}, Lewq;->a()Lewq;

    invoke-static {}, Lewq;->b()I

    move-result v1

    .line 3418
    if-lt v0, v1, :cond_1

    :goto_0
    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->T:I

    .line 3419
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    invoke-virtual {v0}, Lewh;->e()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->U:I

    .line 3420
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->af:I

    .line 3421
    invoke-static {p0}, Lewp;->f(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ah:Z

    .line 3565
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$16;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$16;-><init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->P:Landroid/content/BroadcastReceiver;

    .line 3612
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3613
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3614
    const-string/jumbo v1, "com.alibaba.dingtalk.telebase.action.CREATE_SYSCALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3615
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->P:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 4434
    sget v0, Leuj$i;->conf_add_member_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->L:Landroid/view/View;

    .line 4436
    sget v0, Leuj$i;->conf_status_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->e:Landroid/view/View;

    .line 4437
    sget v0, Leuj$i;->conf_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->f:Landroid/view/View;

    .line 4438
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->f:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$12;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$12;-><init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4447
    sget v0, Leuj$i;->conf_start_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->g:Landroid/view/View;

    .line 4448
    sget v0, Leuj$i;->conf_notify_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->c:Landroid/widget/TextView;

    .line 4449
    sget v0, Leuj$i;->conf_notify_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->d:Landroid/widget/ImageView;

    .line 4451
    sget v0, Leuj$i;->conf_conf_call:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->h:Landroid/view/View;

    .line 4452
    sget v0, Leuj$i;->conf_start_conf_call:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->i:Landroid/view/View;

    .line 4453
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ai:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4454
    sget v0, Leuj$i;->conf_start_conf_call_icon_bg:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->j:Landroid/view/View;

    .line 4455
    sget v0, Leuj$i;->conf_start_conf_call_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 4456
    sget v0, Leuj$i;->conf_start_conf_call_txt:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->l:Landroid/widget/TextView;

    .line 4457
    sget v0, Leuj$i;->conf_start_conf_call_rmd:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->m:Landroid/widget/TextView;

    .line 4459
    sget v0, Leuj$i;->conf_start_video_call:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->n:Landroid/view/View;

    .line 4460
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->n:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ai:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4461
    sget v0, Leuj$i;->conf_start_video_call_icon_bg:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->o:Landroid/view/View;

    .line 4462
    sget v0, Leuj$i;->conf_start_video_call_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->p:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 4463
    sget v0, Leuj$i;->conf_start_video_call_txt:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->q:Landroid/widget/TextView;

    .line 4464
    sget v0, Leuj$i;->conf_start_video_call_rmd:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->r:Landroid/widget/TextView;

    .line 4466
    sget v0, Leuj$i;->conf_net_call:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->z:Landroid/view/View;

    .line 4467
    sget v0, Leuj$i;->conf_start_net_call:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->A:Landroid/view/View;

    .line 4468
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->A:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ai:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4469
    sget v0, Leuj$i;->conf_start_net_call_icon_bg:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->B:Landroid/view/View;

    .line 4470
    sget v0, Leuj$i;->conf_start_net_call_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->C:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 4471
    sget v0, Leuj$i;->conf_start_net_call_txt:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->D:Landroid/widget/TextView;

    .line 4472
    sget v0, Leuj$i;->conf_start_net_call_rmd:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->E:Landroid/widget/TextView;

    .line 4474
    sget v0, Leuj$i;->rl_biz_call:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->F:Landroid/view/View;

    .line 4475
    sget v0, Leuj$i;->conf_start_biz_call:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->G:Landroid/view/View;

    .line 4476
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->G:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ai:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4477
    sget v0, Leuj$i;->conf_start_biz_call_icon_bg:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->H:Landroid/view/View;

    .line 4478
    sget v0, Leuj$i;->conf_start_biz_call_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->I:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 4479
    sget v0, Leuj$i;->conf_start_biz_call_txt:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->J:Landroid/widget/TextView;

    .line 4480
    sget v0, Leuj$i;->conf_start_biz_call_rmd:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->K:Landroid/widget/TextView;

    .line 4482
    sget v0, Leuj$i;->conf_phone_call:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->t:Landroid/view/View;

    .line 4483
    sget v0, Leuj$i;->conf_start_phone_call:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->u:Landroid/view/View;

    .line 4484
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->u:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->ai:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4485
    sget v0, Leuj$i;->conf_start_phone_call_icon_bg:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->v:Landroid/view/View;

    .line 4486
    sget v0, Leuj$i;->conf_start_phone_call_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->w:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 4487
    sget v0, Leuj$i;->conf_start_phone_call_txt:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->x:Landroid/widget/TextView;

    .line 4488
    sget v0, Leuj$i;->conf_start_phone_call_rmd:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->y:Landroid/widget/TextView;

    .line 4490
    sget v0, Leuj$i;->conf_members_grid:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    .line 4491
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$15;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$15;-><init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4556
    new-instance v0, Leum;

    invoke-direct {v0, p0}, Leum;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->M:Leum;

    .line 4557
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->M:Leum;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Leum;->a(I)V

    .line 4558
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->M:Leum;

    .line 5079
    const/4 v1, 0x1

    iput-boolean v1, v0, Leum;->c:Z

    .line 4559
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->M:Leum;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4561
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->hideToolbar()V

    .line 406
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b()V

    .line 407
    return-void

    :cond_1
    move v0, v1

    .line 3418
    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 411
    .line 5640
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->P:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 5641
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->P:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 5642
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->P:Landroid/content/BroadcastReceiver;

    .line 412
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 413
    return-void
.end method
