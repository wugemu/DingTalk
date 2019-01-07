.class public Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "NameCardEditActivity.java"

# interfaces
.implements Lfsw$a;
.implements Lftb$e;


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Lcom/alibaba/android/user/namecard/base/BaseAdapter;

.field private c:Lftc;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfsi;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;)Lftc;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->c:Lftc;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;)Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;)Lcom/alibaba/android/user/namecard/base/BaseAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->b:Lcom/alibaba/android/user/namecard/base/BaseAdapter;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->c:Lftc;

    invoke-virtual {v0, p0}, Lftc;->a(Landroid/app/Activity;)V

    .line 110
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->setResult(I)V

    .line 111
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V
    .locals 17
    .param p1, "nameCard"    # Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .prologue
    .line 115
    if-nez p1, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->d:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 119
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .line 121
    new-instance v8, Lfsk;

    invoke-direct {v8}, Lfsk;-><init>()V

    .line 122
    .local v8, "nameCardEditCardBean":Lfsk;
    move-object/from16 v0, p1

    iput-object v0, v8, Lfsk;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .line 123
    const/4 v14, 0x1

    iput-boolean v14, v8, Lfsk;->b:Z

    .line 124
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->d:Ljava/util/List;

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v10, Lfso;

    invoke-direct {v10}, Lfso;-><init>()V

    .line 2029
    .local v10, "nameCardEditStyleBean":Lfso;
    move-object/from16 v0, p0

    iput-object v0, v10, Lfso;->b:Lftb$e;

    .line 129
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    .line 130
    .local v13, "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;
    if-eqz v13, :cond_3

    .line 131
    iget-object v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardDynamicObject:Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;

    if-eqz v14, :cond_2

    .line 132
    iget-object v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardDynamicObject:Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;

    iget-object v14, v14, Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;->orgThemes:Ljava/util/List;

    .line 2034
    iput-object v14, v10, Lfso;->c:Ljava/util/List;

    .line 134
    :cond_2
    iget-object v3, v13, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardStyleObject:Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;

    .line 135
    .local v3, "cardStyleModel":Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;
    if-eqz v3, :cond_3

    .line 3024
    iput-object v3, v10, Lfso;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;

    .line 139
    .end local v3    # "cardStyleModel":Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->d:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v9, Lfsm;

    invoke-direct {v9}, Lfsm;-><init>()V

    .line 142
    .local v9, "nameCardEditEntryBean":Lfsm;
    sget v14, Lezg$l;->dt_card_info:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 3026
    iput-object v14, v9, Lfsm;->b:Ljava/lang/String;

    .line 142
    sget v14, Lezg$l;->dt_card_edit_card_info:I

    .line 143
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 3031
    iput-object v14, v9, Lfsm;->c:Ljava/lang/String;

    .line 146
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    if-eqz v14, :cond_4

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v14, v14, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardDynamicObject:Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;

    if-eqz v14, :cond_4

    .line 147
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v14, v14, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardDynamicObject:Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;

    iget v5, v14, Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;->completeDegree:I

    .line 148
    .local v5, "degree":I
    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    sget v16, Lezg$l;->dt_card_complete_degree:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string/jumbo v16, "%"

    aput-object v16, v14, v15

    invoke-static {v14}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3036
    .local v4, "content":Ljava/lang/String;
    iput-object v4, v9, Lfsm;->d:Ljava/lang/String;

    .line 150
    const/16 v14, 0x3c

    if-lt v5, v14, :cond_b

    .line 151
    new-instance v14, Lfsm$a;

    sget v15, Lezg$e;->bg_blue:I

    .line 3316
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Ldp;->c(Landroid/content/Context;I)I

    move-result v15

    .line 151
    sget v16, Lezg$e;->ui_common_blue3_color:I

    .line 4316
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Ldp;->c(Landroid/content/Context;I)I

    move-result v16

    .line 151
    invoke-direct/range {v14 .. v16}, Lfsm$a;-><init>(II)V

    .line 5046
    iput-object v14, v9, Lfsm;->e:Lfsm$a;

    .line 157
    .end local v4    # "content":Ljava/lang/String;
    .end local v5    # "degree":I
    :cond_4
    :goto_1
    new-instance v14, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$2;-><init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;)V

    .line 8041
    iput-object v14, v9, Lfsm;->a:Lftb$b;

    .line 167
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->d:Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v7, Lfsm;

    invoke-direct {v7}, Lfsm;-><init>()V

    .line 171
    .local v7, "nameCardCertificateEntryBean":Lfsm;
    sget v14, Lezg$l;->dt_card_title_certification:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 9026
    iput-object v14, v7, Lfsm;->b:Ljava/lang/String;

    .line 171
    sget v14, Lezg$l;->dt_card_certificate_org_and_title:I

    .line 172
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 9031
    iput-object v14, v7, Lfsm;->c:Ljava/lang/String;

    .line 173
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    if-eqz v14, :cond_5

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v14, v14, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardExtensionObject:Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;

    if-eqz v14, :cond_5

    .line 174
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v14, v14, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardExtensionObject:Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;

    iget-boolean v14, v14, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;->titleAuthed:Z

    if-nez v14, :cond_c

    .line 175
    sget v14, Lezg$l;->dt_card_title_not_certified:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 9036
    iput-object v14, v7, Lfsm;->d:Ljava/lang/String;

    .line 175
    new-instance v14, Lfsm$a;

    sget v15, Lezg$e;->name_card_label_red:I

    .line 9316
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Ldp;->c(Landroid/content/Context;I)I

    move-result v15

    .line 176
    sget v16, Lezg$e;->name_card_label_bg:I

    .line 10316
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Ldp;->c(Landroid/content/Context;I)I

    move-result v16

    .line 176
    invoke-direct/range {v14 .. v16}, Lfsm$a;-><init>(II)V

    .line 11046
    iput-object v14, v7, Lfsm;->e:Lfsm$a;

    .line 182
    :cond_5
    :goto_2
    new-instance v14, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3;-><init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V

    .line 15041
    iput-object v14, v7, Lfsm;->a:Lftb$b;

    .line 210
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->d:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v11, Lfsm;

    invoke-direct {v11}, Lfsm;-><init>()V

    .line 214
    .local v11, "nameCardPrivacyEntryBean":Lfsm;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 215
    .local v2, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    if-eqz v14, :cond_a

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v14, v14, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardSettingObject:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    if-eqz v14, :cond_a

    .line 216
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v12, v14, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardSettingObject:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    .line 217
    .local v12, "object":Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;
    iget-boolean v14, v12, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->mobileVisiableForStranger:Z

    if-eqz v14, :cond_6

    .line 218
    sget v14, Lezg$l;->dt_common_mobile_phone:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 219
    const-string/jumbo v14, "\u3001"

    invoke-virtual {v2, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 221
    :cond_6
    iget-boolean v14, v12, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->orgVisiableForStranger:Z

    if-eqz v14, :cond_7

    .line 222
    sget v14, Lezg$l;->dt_external_contact_fields_company:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 223
    const-string/jumbo v14, "\u3001"

    invoke-virtual {v2, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 225
    :cond_7
    iget-boolean v14, v12, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->titleVisiableForStranger:Z

    if-eqz v14, :cond_8

    .line 226
    sget v14, Lezg$l;->edit_staff_position:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 227
    const-string/jumbo v14, "\u3001"

    invoke-virtual {v2, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 229
    :cond_8
    iget-boolean v14, v12, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->emailVisiableForStranger:Z

    if-eqz v14, :cond_9

    .line 230
    sget v14, Lezg$l;->dt_external_contact_fields_mail:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 231
    const-string/jumbo v14, "\u3001"

    invoke-virtual {v2, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 233
    :cond_9
    iget-boolean v14, v12, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->addressVisiableForStranger:Z

    if-eqz v14, :cond_a

    .line 234
    sget v14, Lezg$l;->dt_org_manage_org_address:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 235
    const-string/jumbo v14, "\u3001"

    invoke-virtual {v2, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 239
    .end local v12    # "object":Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;
    :cond_a
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v14

    if-nez v14, :cond_d

    .line 240
    sget v14, Lezg$l;->dt_user_name_card_message_desc:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 241
    .local v6, "desc":Ljava/lang/String;
    sget v14, Lezg$l;->dt_display_not_enough:I

    .line 242
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 16036
    iput-object v14, v11, Lfsm;->d:Ljava/lang/String;

    .line 242
    new-instance v14, Lfsm$a;

    sget v15, Lezg$e;->name_card_label_red:I

    .line 16316
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Ldp;->c(Landroid/content/Context;I)I

    move-result v15

    .line 243
    sget v16, Lezg$e;->name_card_label_bg:I

    .line 17316
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Ldp;->c(Landroid/content/Context;I)I

    move-result v16

    .line 243
    invoke-direct/range {v14 .. v16}, Lfsm$a;-><init>(II)V

    .line 18046
    iput-object v14, v11, Lfsm;->e:Lfsm$a;

    .line 250
    :goto_3
    sget v14, Lezg$l;->dt_user_name_card_message:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 20026
    iput-object v14, v11, Lfsm;->b:Ljava/lang/String;

    .line 20031
    iput-object v6, v11, Lfsm;->c:Ljava/lang/String;

    .line 252
    new-instance v14, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$4;-><init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;)V

    .line 20041
    iput-object v14, v11, Lfsm;->a:Lftb$b;

    .line 264
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->d:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->b:Lcom/alibaba/android/user/namecard/base/BaseAdapter;

    if-eqz v14, :cond_0

    .line 269
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->b:Lcom/alibaba/android/user/namecard/base/BaseAdapter;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->d:Ljava/util/List;

    invoke-virtual {v14, v15}, Lcom/alibaba/android/user/namecard/base/BaseAdapter;->a(Ljava/util/List;)V

    .line 271
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v14

    new-instance v15, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$5;-><init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;)V

    invoke-virtual {v14, v15}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 153
    .end local v2    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v6    # "desc":Ljava/lang/String;
    .end local v7    # "nameCardCertificateEntryBean":Lfsm;
    .end local v11    # "nameCardPrivacyEntryBean":Lfsm;
    .restart local v4    # "content":Ljava/lang/String;
    .restart local v5    # "degree":I
    :cond_b
    new-instance v14, Lfsm$a;

    sget v15, Lezg$e;->name_card_label_red:I

    .line 5316
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Ldp;->c(Landroid/content/Context;I)I

    move-result v15

    .line 153
    sget v16, Lezg$e;->name_card_label_bg:I

    .line 6316
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Ldp;->c(Landroid/content/Context;I)I

    move-result v16

    .line 153
    invoke-direct/range {v14 .. v16}, Lfsm$a;-><init>(II)V

    .line 7046
    iput-object v14, v9, Lfsm;->e:Lfsm$a;

    goto/16 :goto_1

    .line 178
    .end local v4    # "content":Ljava/lang/String;
    .end local v5    # "degree":I
    .restart local v7    # "nameCardCertificateEntryBean":Lfsm;
    :cond_c
    sget v14, Lezg$l;->dt_card_title_certified:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 12036
    iput-object v14, v7, Lfsm;->d:Ljava/lang/String;

    .line 178
    new-instance v14, Lfsm$a;

    sget v15, Lezg$e;->common_theme_green:I

    .line 12316
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Ldp;->c(Landroid/content/Context;I)I

    move-result v15

    .line 179
    sget v16, Lezg$e;->ui_common_green3_color:I

    .line 13316
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Ldp;->c(Landroid/content/Context;I)I

    move-result v16

    .line 179
    invoke-direct/range {v14 .. v16}, Lfsm$a;-><init>(II)V

    .line 14046
    iput-object v14, v7, Lfsm;->e:Lfsm$a;

    goto/16 :goto_2

    .line 245
    .restart local v2    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local v11    # "nameCardPrivacyEntryBean":Lfsm;
    :cond_d
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 246
    .restart local v6    # "desc":Ljava/lang/String;
    const/4 v14, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v6, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 247
    const-string/jumbo v14, ""

    .line 19036
    iput-object v14, v11, Lfsm;->d:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "themeId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 281
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    if-nez v1, :cond_1

    .line 20136
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    if-nez v1, :cond_2

    .line 286
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;-><init>()V

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    .line 288
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardStyleObject:Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;

    .line 289
    .local v0, "styleModel":Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;
    if-nez v0, :cond_3

    .line 290
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;

    .end local v0    # "styleModel":Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;
    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;-><init>()V

    .line 292
    .restart local v0    # "styleModel":Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;
    :cond_3
    iput-object p1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->theme:Ljava/lang/String;

    .line 293
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardStyleObject:Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;

    .line 294
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->c:Lftc;

    .line 20135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 20138
    new-instance v2, Lftc$3;

    invoke-direct {v2, v1, p0}, Lftc$3;-><init>(Lftc;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    const-class v1, Lcma;

    invoke-static {v2, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 20157
    invoke-static {}, Lfug;->a()Lfug;

    move-result-object v2

    .line 20233
    new-instance v3, Lfug$5;

    invoke-direct {v3, v2, v1}, Lfug$5;-><init>(Lfug;Lcma;)V

    .line 20239
    iget-object v1, v2, Lfug;->a:Lcom/alibaba/android/user/namecard/service/CardIService;

    invoke-interface {v1, p1, v3}, Lcom/alibaba/android/user/namecard/service/CardIService;->updateCardStyle2(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, -0x1

    .line 299
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 301
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    const/16 v0, 0x1002

    if-ne p1, v0, :cond_0

    .line 306
    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 307
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->c:Lftc;

    invoke-virtual {v0, p0}, Lftc;->a(Landroid/app/Activity;)V

    .line 308
    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->setResult(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    sget v1, Lezg$j;->activity_name_card_edit:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->setContentView(I)V

    .line 1091
    sget v1, Lezg$h;->name_card_edit_rv_main:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 1092
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 1093
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1094
    new-instance v2, Lcom/alibaba/android/user/namecard/base/BaseAdapter;

    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/android/user/namecard/base/BaseAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->b:Lcom/alibaba/android/user/namecard/base/BaseAdapter;

    .line 1095
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 1096
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->b:Lcom/alibaba/android/user/namecard/base/BaseAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 75
    new-instance v1, Lftc;

    invoke-direct {v1, p0}, Lftc;-><init>(Lfsw$a;)V

    iput-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->c:Lftc;

    .line 79
    new-instance v1, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$1;-><init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;)V

    iput-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->f:Landroid/content/BroadcastReceiver;

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "SET_PROVACY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 88
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 321
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 322
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->c:Lftc;

    .line 21162
    iget-object v1, v0, Lftc;->c:Lfuj$a;

    if-eqz v1, :cond_0

    .line 22047
    sget-object v1, Lfuj$b;->a:Lfuj;

    .line 21163
    iget-object v2, v0, Lftc;->c:Lfuj$a;

    invoke-virtual {v1, v2}, Lfuj;->a(Lfuj$a;)V

    .line 21166
    :cond_0
    iget-object v1, v0, Lftc;->b:Lfuj$a;

    if-eqz v1, :cond_1

    .line 23047
    sget-object v1, Lfuj$b;->a:Lfuj;

    .line 21167
    iget-object v0, v0, Lftc;->b:Lfuj$a;

    invoke-virtual {v1, v0}, Lfuj;->a(Lfuj$a;)V

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->f:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 324
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 326
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 102
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->c:Lftc;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->c:Lftc;

    invoke-virtual {v0, p0}, Lftc;->a(Landroid/app/Activity;)V

    .line 105
    :cond_0
    return-void
.end method
