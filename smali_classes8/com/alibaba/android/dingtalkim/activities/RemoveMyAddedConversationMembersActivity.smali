.class public Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "RemoveMyAddedConversationMembersActivity.java"


# instance fields
.field private final a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/alibaba/wukong/im/Conversation;

.field private e:Landroid/widget/ListView;

.field private f:Lcww;

.field private g:Z

.field private h:Landroid/view/View;

.field private i:Lcww$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->a:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->c:Ljava/util/ArrayList;

    .line 160
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->i:Lcww$a;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;

    .prologue
    .line 43
    .line 1121
    sget v0, Lctk$f;->lv_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->e:Landroid/widget/ListView;

    .line 1122
    new-instance v0, Lcww;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    sget-object v3, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;->CHAT:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;

    invoke-static {v2, v3}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcww;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->f:Lcww;

    .line 1123
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->f:Lcww;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->i:Lcww$a;

    .line 2095
    iput-object v1, v0, Lcww;->a:Lcww$a;

    .line 1124
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->f:Lcww;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcww;->a(Ljava/util/List;)V

    .line 1125
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->f:Lcww;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2131
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lctk$g;->actbar_textview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->h:Landroid/view/View;

    .line 2132
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->h:Landroid/view/View;

    sget v1, Lctk$f;->tv_ok:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2133
    sget v1, Lctk$i;->dt_im_remove_group_members_page_remove_all:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2134
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1127
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->supportInvalidateOptionsMenu()V

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;J)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;
    .param p1, "x1"    # J

    .prologue
    .line 43
    .line 3168
    new-instance v0, Ldht;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;J)V

    invoke-direct {v0, p0, v1}, Ldht;-><init>(Landroid/app/Activity;Ldht$a;)V

    .line 3184
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v2}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    sget-object v5, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;->CHAT:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;

    .line 3185
    invoke-static {v4, v5}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    move-result-object v6

    move-wide v4, p1

    .line 3184
    invoke-virtual/range {v0 .. v6}, Ldht;->a(Ljava/lang/String;JJLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;)V

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;JLjava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    .line 3189
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3192
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3195
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lctk$i;->dt_remove_select_member:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3201
    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3202
    sget v0, Lctk$i;->dt_commom_remove:I

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$6;

    invoke-direct {v2, p0, p1, p2}, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$6;-><init>(Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;J)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3211
    sget v0, Lctk$i;->dt_common_cancel:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3212
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 43
    :cond_0
    return-void

    .line 3196
    :catch_0
    move-exception v0

    .line 3197
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3198
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lctk$i;->dt_remove_these_members:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;ZLjava/util/List;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    const/4 v6, 0x0

    .line 43
    .line 2216
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2906
    :cond_0
    :goto_0
    return-void

    .line 2219
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->showLoadingDialog()V

    .line 2220
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$7;-><init>(Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;Z)V

    .line 2247
    const-class v1, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/Callback;

    .line 2248
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a()Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    .line 2249
    invoke-static {v0}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v4

    .line 2895
    if-eqz v2, :cond_0

    .line 2898
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2899
    :cond_2
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "removeConversationMembers error, userIdList is null or empty"

    invoke-static {v0, v6, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2900
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v3, Lctk$i;->unknown_error:I

    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2903
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2904
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "removeConversationMembers error, cid is empty"

    invoke-static {v0, v6, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2905
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v3, Lctk$i;->unknown_error:I

    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2909
    :cond_4
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v7

    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7;-><init>(Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;Lcom/alibaba/wukong/Callback;Ljava/lang/String;JLjava/util/List;)V

    invoke-virtual {v7, p2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;

    .prologue
    .line 43
    .line 2147
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2148
    sget v1, Lctk$i;->dt_remove_these_members:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2149
    sget v1, Lctk$i;->dt_commom_remove:I

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2156
    sget v1, Lctk$i;->dt_common_cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2157
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 43
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;)Lcww;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->f:Lcww;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sget v3, Lctk$g;->im_activity_remove_my_added_members:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->setContentView(I)V

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "conversation_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->b:Ljava/lang/String;

    .line 61
    const-string/jumbo v3, "intent_key_uids"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 62
    .local v1, "serializableExtra":Ljava/io/Serializable;
    instance-of v3, v1, Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 63
    check-cast v2, Ljava/util/List;

    .line 64
    .local v2, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 68
    .end local v2    # "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->finish()V

    .line 70
    const-string/jumbo v3, "im"

    const/4 v4, 0x0

    const-string/jumbo v5, "RemoveMyAddedConversationMembersActivity params invalid"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_0
    return-void

    .line 73
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v3, :cond_3

    .line 74
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v4, Lctk$i;->dt_im_remove_group_members_page_title:I

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 1092
    :cond_3
    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;)V

    .line 1117
    const-class v3, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v3}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->b:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 82
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->g:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->h:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 83
    sget v1, Lctk$i;->dt_im_remove_group_members_page_remove_all:I

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 84
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->h:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 85
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 86
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 88
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method
