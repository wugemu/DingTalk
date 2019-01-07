.class public Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "EnterpriseOASettingsActivity.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Landroid/widget/ToggleButton;

.field private d:Landroid/widget/ToggleButton;

.field private e:Lcom/alibaba/wukong/im/Conversation;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->c:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->d:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->g:J

    return-wide v0
.end method

.method static synthetic f(Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->h:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 49
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget v0, Ledz$g;->activity_enterprise_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "conversation"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    .line 52
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->finish()V

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->b:Ljava/lang/String;

    .line 1062
    sget v0, Ledz$f;->conversation_setting_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->c:Landroid/widget/ToggleButton;

    .line 1063
    sget v0, Ledz$f;->conversation_sticky_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->d:Landroid/widget/ToggleButton;

    .line 1065
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->c:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity$1;-><init>(Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1075
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->d:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity$2;-><init>(Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1082
    sget v0, Ledz$f;->oa_entry_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1083
    sget v1, Ledz$f;->oa_entry_icon:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1085
    invoke-static {}, Leel;->f()Leek;

    move-result-object v2

    .line 1086
    invoke-interface {v2}, Leek;->a()Ljava/util/List;

    move-result-object v2

    .line 1087
    if-eqz v2, :cond_3

    .line 1088
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 1089
    iget-object v6, p0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->b:Ljava/lang/String;

    iget-object v7, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgCid:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1090
    iget-object v5, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1091
    iget-object v0, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgIcon:Ljava/lang/String;

    .line 1092
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1094
    :try_start_0
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1099
    :cond_2
    :goto_1
    sget v5, Ledz$e;->org_default_icon:I

    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setDefaultRes(I)V

    .line 1100
    const-string/jumbo v5, ""

    invoke-virtual {v1, v5, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    iget-object v0, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->oaHomePage:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->f:Ljava/lang/String;

    .line 1102
    iget-wide v0, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    iput-wide v0, p0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->g:J

    .line 1103
    iget-object v0, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->corpId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->h:Ljava/lang/String;

    .line 1109
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->d:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getTop()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_4

    move v0, v3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1110
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->c:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->isNotificationEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1112
    sget v0, Ledz$f;->view_message_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity$3;-><init>(Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1127
    sget v0, Ledz$f;->enter_homepage_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity$4;-><init>(Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1095
    :catch_0
    move-exception v5

    .line 1096
    invoke-virtual {v5}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1

    :cond_4
    move v0, v4

    .line 1109
    goto :goto_2

    :cond_5
    move v3, v4

    .line 1110
    goto :goto_3
.end method
