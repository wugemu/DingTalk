.class public Lewn;
.super Ljava/lang/Object;
.source "TeleConfQuickStartCallHelper.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static d:Lewn;


# instance fields
.field public b:Lewj;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lewn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lewn;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Landroid/os/Bundle;Ljava/lang/String;)Landroid/content/DialogInterface$OnClickListener;
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "toUser"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p3, "telBizNumInfo"    # Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;
    .param p4, "startSource"    # Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "agentId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 237
    new-instance v0, Lewn$11;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p5

    move-object v4, p1

    move-object v5, p3

    move-object v6, p6

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lewn$11;-><init>(Lewn;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/os/Bundle;Landroid/app/Activity;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V

    return-object v0
.end method

.method private a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Z)Landroid/content/DialogInterface$OnClickListener;
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "toUser"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p3, "startSource"    # Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;
    .param p4, "grayConfig"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 448
    new-instance v0, Lewn$21;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lewn$21;-><init>(Lewn;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/app/Activity;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Z)V

    return-object v0
.end method

.method private a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;ZLandroid/os/Bundle;)Landroid/content/DialogInterface$OnClickListener;
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "toUser"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p3, "startSource"    # Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;
    .param p4, "grayConfig"    # Z
    .param p5, "extras"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 395
    new-instance v0, Lewn$20;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p5

    move-object v4, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lewn$20;-><init>(Lewn;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/os/Bundle;Landroid/app/Activity;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Z)V

    return-object v0
.end method

.method static synthetic a(Lewn;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Landroid/os/Bundle;)Landroid/content/DialogInterface$OnClickListener;
    .locals 7
    .param p0, "x0"    # Lewn;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p3, "x3"    # Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;
    .param p4, "x4"    # Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;
    .param p5, "x5"    # Landroid/os/Bundle;

    .prologue
    .line 71
    .line 15226
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lewn;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Landroid/os/Bundle;Ljava/lang/String;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    .line 71
    return-object v0
.end method

.method static synthetic a(Lewn;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Landroid/os/Bundle;Ljava/lang/String;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lewn;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p3, "x3"    # Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;
    .param p4, "x4"    # Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;
    .param p5, "x5"    # Landroid/os/Bundle;
    .param p6, "x6"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct/range {p0 .. p6}, Lewn;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Landroid/os/Bundle;Ljava/lang/String;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Leuw;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)Lcma;
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uid"    # Ljava/lang/Long;
    .param p3, "phoneNumber"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "content"    # Ljava/lang/String;
    .param p6, "agentId"    # Ljava/lang/String;
    .param p7, "corpId"    # Ljava/lang/String;
    .param p8, "dataCenter"    # Leuw;
    .param p9, "source"    # Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Leuw;",
            "Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;",
            ")",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1223
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v0, Lewn$13;

    move-object v1, p0

    move-object/from16 v2, p8

    move-object v3, p3

    move-object v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p9

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lewn$13;-><init>(Lewn;Leuw;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Ljava/lang/Long;)V

    const-class v1, Lcma;

    invoke-interface {v11, v0, v1, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    return-object v0
.end method

.method static synthetic a(Lewn;)Lewj;
    .locals 1
    .param p0, "x0"    # Lewn;

    .prologue
    .line 71
    iget-object v0, p0, Lewn;->b:Lewj;

    return-object v0
.end method

.method public static a()Lewn;
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lewn;->d:Lewn;

    if-nez v0, :cond_1

    .line 81
    const-class v1, Lewn;

    monitor-enter v1

    .line 82
    :try_start_0
    sget-object v0, Lewn;->d:Lewn;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lewn;

    invoke-direct {v0}, Lewn;-><init>()V

    sput-object v0, Lewn;->d:Lewn;

    .line 85
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_1
    sget-object v0, Lewn;->d:Lewn;

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/app/Activity;ILjava/lang/String;I)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "maxNumber"    # I
    .param p2, "identify"    # Ljava/lang/String;
    .param p3, "titleRes"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1039
    if-lez p1, :cond_0

    if-nez p0, :cond_1

    .line 1068
    :cond_0
    :goto_0
    return-void

    .line 1049
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1052
    .local v1, "title":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1053
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "choose_mode"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1054
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    const-string/jumbo v2, "count_limit"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1056
    const-string/jumbo v2, "count_limit_tips"

    sget v3, Leuj$l;->choose_limit:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1057
    const-string/jumbo v2, "activity_identify"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v2

    invoke-virtual {v2}, Lewh;->l()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1059
    const-string/jumbo v2, "intent_key_support_fix_line"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1061
    :cond_2
    const-string/jumbo v2, "hide_org_external"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1063
    const-string/jumbo v2, "CONF_RECORD_ACTIVITY_CREATE_VIDEO_CALL"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1064
    const-string/jumbo v2, "intent_key_show_conference_room"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1067
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "toUser"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p4, "startSource"    # Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;",
            ">;",
            "Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 895
    .local p3, "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lewn;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Z)V

    .line 896
    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Z)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "toUser"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p4, "startSource"    # Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;
    .param p5, "grayConfig"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;",
            ">;",
            "Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;",
            "Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p3, "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;>;"
    const/4 v7, 0x1

    .line 849
    if-nez p3, :cond_0

    .line 892
    :goto_0
    return-void

    .line 7213
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    const-string/jumbo v4, "conf_short_phone_number_enable"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v3

    .line 853
    if-eqz v3, :cond_2

    .line 854
    iget-object v3, p0, Lewn;->b:Lewj;

    .line 855
    invoke-direct {p0, p1, p2, p4, p5}, Lewn;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Z)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    .line 7485
    new-instance v4, Lewn$22;

    invoke-direct {v4, p0, p2, p1, p4}, Lewn$22;-><init>(Lewn;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/app/Activity;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V

    .line 8213
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Leuj$l;->dt_conf_call_list_short_number_title:I

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 8214
    invoke-static {p2, v3, v7, v5, v4}, Lewj;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/content/DialogInterface$OnClickListener;ZLjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v1

    .line 857
    .local v1, "mobileCallMenu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    .line 858
    .local v2, "position":I
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/QueryShortDialingCodeModel;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/QueryShortDialingCodeModel;-><init>()V

    .line 859
    .local v0, "codeModel":Lcom/alibaba/android/teleconf/sdk/idl/model/QueryShortDialingCodeModel;
    iget-wide v4, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/QueryShortDialingCodeModel;->callee:Ljava/lang/Long;

    .line 860
    invoke-static {}, Leyd;->a()Leyd;

    move-result-object v5

    new-instance v3, Lewn$4;

    invoke-direct {v3, p0, v0, v2}, Lewn$4;-><init>(Lewn;Lcom/alibaba/android/teleconf/sdk/idl/model/QueryShortDialingCodeModel;I)V

    const-class v4, Leyo$d;

    .line 861
    invoke-static {v3, v4, p1}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leyo$d;

    .line 8434
    const-class v4, Lcom/alibaba/android/teleconf/sdk/idl/service/ShortDialingMgrIService;

    invoke-static {v4}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/teleconf/sdk/idl/service/ShortDialingMgrIService;

    .line 8435
    if-nez v4, :cond_1

    .line 891
    .end local v0    # "codeModel":Lcom/alibaba/android/teleconf/sdk/idl/model/QueryShortDialingCodeModel;
    .end local v2    # "position":I
    :goto_1
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8438
    .restart local v0    # "codeModel":Lcom/alibaba/android/teleconf/sdk/idl/model/QueryShortDialingCodeModel;
    .restart local v2    # "position":I
    :cond_1
    new-instance v6, Leyd$4;

    invoke-direct {v6, v5, v3}, Leyd$4;-><init>(Leyd;Leyo$d;)V

    invoke-interface {v4, v0, v6}, Lcom/alibaba/android/teleconf/sdk/idl/service/ShortDialingMgrIService;->queryShortDialingCodeByCommonOrg(Lcom/alibaba/android/teleconf/sdk/idl/model/QueryShortDialingCodeModel;Liyv;)V

    goto :goto_1

    .line 888
    .end local v0    # "codeModel":Lcom/alibaba/android/teleconf/sdk/idl/model/QueryShortDialingCodeModel;
    .end local v1    # "mobileCallMenu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    .end local v2    # "position":I
    :cond_2
    iget-object v3, p0, Lewn;->b:Lewj;

    invoke-direct {p0, p1, p2, p4, p5}, Lewn;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Z)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Lewj;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v1

    .restart local v1    # "mobileCallMenu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    goto :goto_1
.end method

.method private a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;ZZZLandroid/os/Bundle;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "toUser"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p4, "startSource"    # Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;
    .param p5, "userActive"    # Z
    .param p6, "beWithBizCall"    # Z
    .param p7, "recommendVoip"    # Z
    .param p8, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;",
            ">;",
            "Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;",
            "ZZZ",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 827
    .local p3, "quickMenus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;>;"
    if-nez p3, :cond_0

    .line 828
    new-instance p3, Ljava/util/ArrayList;

    .end local p3    # "quickMenus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;>;"
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .restart local p3    # "quickMenus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;>;"
    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p7

    .line 831
    invoke-direct/range {v0 .. v5}, Lewn;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Z)V

    .line 832
    if-eqz p5, :cond_1

    .line 833
    iget-object v7, p0, Lewn;->b:Lewj;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p7

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lewn;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;ZLandroid/os/Bundle;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    if-nez p6, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v7, v1, v0}, Lewj;->a(Landroid/content/DialogInterface$OnClickListener;Z)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v6

    .line 834
    .local v6, "voipCallMenu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    .end local v6    # "voipCallMenu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    :cond_1
    if-nez p6, :cond_2

    .line 5377
    invoke-direct {p0, p1, p2, p4}, Lewn;->b(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-static {v0}, Lewj;->c(Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5760
    :cond_2
    iget-wide v0, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 6349
    new-instance v0, Lewn$19;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lewn$19;-><init>(Lewn;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Z)V

    .line 5761
    invoke-static {v0}, Lewj;->b(Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v0

    .line 5762
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    :cond_3
    invoke-direct {p0, p2, p3}, Lewn;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;)V

    .line 842
    return-void

    .line 833
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;)V
    .locals 2
    .param p1, "toUser"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 899
    .local p2, "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 906
    :cond_0
    :goto_0
    return-void

    .line 902
    :cond_1
    iget-boolean v0, p0, Lewn;->c:Z

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lewn;->b:Lewj;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lewj;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;Z)V

    .line 904
    const/4 v0, 0x0

    iput-boolean v0, p0, Lewn;->c:Z

    goto :goto_0
.end method

.method static synthetic a(Lewn;Landroid/app/Activity;ILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lewn;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    .line 71
    invoke-static {p1, p2, p3, p4}, Lewn;->a(Landroid/app/Activity;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lewn;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 0
    .param p0, "x0"    # Lewn;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lewn;->b(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    return-void
.end method

.method static synthetic a(Lewn;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Leuw;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V
    .locals 13
    .param p0, "x0"    # Lewn;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Leuw;
    .param p8, "x8"    # Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    .prologue
    .line 71
    .line 16277
    if-nez p2, :cond_0

    .line 16297
    :goto_0
    return-void

    .line 16280
    :cond_0
    new-instance v2, Lewn$14;

    move-object/from16 v0, p7

    invoke-direct {v2, p0, v0}, Lewn$14;-><init>(Lewn;Leuw;)V

    iget-wide v4, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 16288
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 16280
    invoke-virtual {p0, p1, v2, v3}, Lewn;->a(Landroid/app/Activity;Lewj$b;Ljava/lang/String;)V

    .line 16290
    if-eqz p7, :cond_2

    move-object/from16 v0, p7

    iget-boolean v2, v0, Leuw;->g:Z

    if-eqz v2, :cond_2

    .line 16315
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lewn$15;

    const/4 v8, 0x0

    move-object v3, p0

    move-object/from16 v4, p7

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p8

    move-object/from16 v9, p5

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v2 .. v11}, Lewn$15;-><init>(Lewn;Leuw;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-class v3, Lcma;

    invoke-interface {v12, v2, v3, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    .line 16292
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 16293
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0, v2}, Lewh;->a(Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 16295
    :cond_1
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lewh;->a(ZLcma;)V

    goto :goto_0

    .line 16298
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 16299
    invoke-direct/range {v2 .. v9}, Lewn;->a(Ljava/util/List;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Ljava/lang/String;Leuw;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V

    .line 16300
    const/4 v2, 0x0

    iput-boolean v2, p0, Lewn;->c:Z

    goto :goto_0
.end method

.method static synthetic a(Lewn;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V
    .locals 0
    .param p0, "x0"    # Lewn;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lewn;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V

    return-void
.end method

.method static synthetic a(Lewn;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;ZZLandroid/os/Bundle;)V
    .locals 18
    .param p0, "x0"    # Lewn;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;
    .param p5, "x5"    # Z
    .param p6, "x6"    # Z
    .param p7, "x7"    # Landroid/os/Bundle;

    .prologue
    .line 71
    .line 15773
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 15774
    if-eqz p3, :cond_0

    .line 15775
    move-object/from16 v0, p3

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15778
    :cond_0
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isActive:Z

    if-eqz v2, :cond_1

    .line 15779
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lewn;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;ZZZLandroid/os/Bundle;)V

    .line 15782
    :goto_0
    return-void

    .line 15780
    :cond_1
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_3

    sget-object v2, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->SEARCH:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    move-object/from16 v0, p4

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->CALL_SEARCH:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    move-object/from16 v0, p4

    if-ne v0, v2, :cond_3

    .line 15782
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    move-wide/from16 v16, v0

    const-string/jumbo v2, "EVENTBUTLER"

    .line 15783
    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v6, Lewn$3;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object v10, v5

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v14, p7

    invoke-direct/range {v6 .. v14}, Lewn$3;-><init>(Lewn;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;ZZLandroid/os/Bundle;)V

    const-class v4, Lcma;

    move-object/from16 v0, p1

    invoke-interface {v2, v6, v4, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    .line 15782
    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0

    .line 15806
    :cond_3
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lewn;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;ZZZLandroid/os/Bundle;)V

    goto :goto_0
.end method

.method static synthetic a(Lewn;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;ZZZLandroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lewn;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;
    .param p5, "x5"    # Z
    .param p6, "x6"    # Z
    .param p7, "x7"    # Z
    .param p8, "x8"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-direct/range {p0 .. p8}, Lewn;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;ZZZLandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lewn;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p0, "x0"    # Lewn;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    .line 15909
    if-nez p2, :cond_1

    .line 15910
    :cond_0
    :goto_0
    return-void

    .line 15912
    :cond_1
    iget-boolean v0, p0, Lewn;->c:Z

    if-eqz v0, :cond_0

    .line 15913
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->dt_conf_callselect_btn_make_call:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string/jumbo v1, " "

    aput-object v1, v0, v4

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15914
    iget-object v1, p0, Lewn;->b:Lewj;

    invoke-virtual {v1, v0, p2, v4}, Lewj;->a(Ljava/lang/String;Ljava/util/List;Z)V

    .line 15915
    iput-boolean v3, p0, Lewn;->c:Z

    goto :goto_0
.end method

.method static synthetic a(Lewn;Ljava/util/List;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Ljava/lang/String;Leuw;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V
    .locals 0
    .param p0, "x0"    # Lewn;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Landroid/app/Activity;
    .param p3, "x3"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Leuw;
    .param p7, "x7"    # Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    .prologue
    .line 71
    invoke-direct/range {p0 .. p7}, Lewn;->a(Ljava/util/List;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Ljava/lang/String;Leuw;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p3, "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;>;"
    const/4 v5, 0x0

    .line 920
    if-nez p3, :cond_1

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 923
    :cond_1
    iget-boolean v0, p0, Lewn;->c:Z

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lewn;->b:Lewj;

    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lewj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZ)V

    .line 925
    iput-boolean v5, p0, Lewn;->c:Z

    goto :goto_0
.end method

.method private a(Ljava/util/List;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Ljava/lang/String;Leuw;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V
    .locals 12
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "toUser"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "content"    # Ljava/lang/String;
    .param p6, "dataCenter"    # Leuw;
    .param p7, "startSource"    # Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Leuw;",
            "Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1363
    .local p1, "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;>;"
    if-nez p6, :cond_0

    .line 1364
    const/4 v1, 0x0

    iput-boolean v1, p0, Lewn;->c:Z

    .line 1365
    const/4 v1, 0x3

    const-string/jumbo v2, "error occur, no options for user to select"

    invoke-static {v1, v2}, Lewc;->a(ILjava/lang/String;)V

    .line 1407
    :goto_0
    return-void

    .line 1369
    :cond_0
    move-object/from16 v0, p6

    iget-boolean v1, v0, Leuw;->e:Z

    if-eqz v1, :cond_1

    .line 1370
    move-object/from16 v0, p7

    invoke-direct {p0, p2, p3, p1, v0}, Lewn;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V

    .line 1374
    :cond_1
    move-object/from16 v0, p6

    iget-boolean v1, v0, Leuw;->c:Z

    if-eqz v1, :cond_2

    .line 1375
    iget-object v11, p0, Lewn;->b:Lewj;

    .line 10428
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p7

    invoke-direct/range {v1 .. v6}, Lewn;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;ZLandroid/os/Bundle;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    .line 11272
    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Lewj;->a(Landroid/content/DialogInterface$OnClickListener;Z)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v10

    .line 1376
    .local v10, "voipCallMenu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    invoke-interface {p1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1380
    .end local v10    # "voipCallMenu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    :cond_2
    move-object/from16 v0, p6

    iget-boolean v1, v0, Leuw;->d:Z

    if-eqz v1, :cond_3

    .line 11426
    new-instance v1, Lewn$17;

    invoke-direct {v1, p0, p2, p3}, Lewn$17;-><init>(Lewn;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 12294
    new-instance v7, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    sget v2, Leuj$l;->icon_videomeeting:I

    sget v3, Leuj$l;->dt_conference_international_call_name:I

    invoke-direct {v7, v2, v3}, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;-><init>(II)V

    .line 13125
    iput-object v1, v7, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 1382
    .local v7, "globalCallMenu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1386
    .end local v7    # "globalCallMenu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    :cond_3
    move-object/from16 v0, p6

    iget-boolean v1, v0, Leuw;->f:Z

    if-eqz v1, :cond_4

    .line 1387
    move-object/from16 v0, p7

    invoke-direct {p0, p2, p3, v0}, Lewn;->b(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-static {v1}, Lewj;->c(Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v9

    .line 1388
    .local v9, "videoCallMenu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1394
    .end local v9    # "videoCallMenu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    :cond_4
    move-object/from16 v8, p4

    .local v8, "title2":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1395
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$l;->dt_conf_txt_select_call_type:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1398
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1399
    const/4 v1, 0x0

    iput-boolean v1, p0, Lewn;->c:Z

    .line 1400
    const/4 v1, 0x3

    const-string/jumbo v2, "error occur, no options for user to select"

    invoke-static {v1, v2}, Lewc;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 15088
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 15089
    move-object/from16 v0, p6

    iget-boolean v2, v0, Leuw;->g:Z

    if-eqz v2, :cond_7

    .line 15090
    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15093
    :cond_7
    move-object/from16 v0, p6

    iget-boolean v2, v0, Leuw;->e:Z

    if-eqz v2, :cond_8

    .line 15094
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15097
    :cond_8
    move-object/from16 v0, p6

    iget-boolean v2, v0, Leuw;->c:Z

    if-eqz v2, :cond_9

    .line 15098
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15101
    :cond_9
    move-object/from16 v0, p6

    iget-boolean v2, v0, Leuw;->d:Z

    if-eqz v2, :cond_a

    .line 15102
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15105
    :cond_a
    move-object/from16 v0, p6

    iget-boolean v2, v0, Leuw;->f:Z

    if-eqz v2, :cond_b

    .line 15106
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15108
    :cond_b
    move-object/from16 v0, p6

    iget-object v2, v0, Leuw;->a:Lgws;

    iput-object v1, v2, Lgws;->c:Ljava/util/List;

    .line 14123
    invoke-virtual/range {p6 .. p6}, Leuw;->a()V

    .line 1404
    move-object/from16 v0, p5

    invoke-direct {p0, v8, v0, p1}, Lewn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private static a(Landroid/app/Activity;J)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uid"    # J

    .prologue
    const/4 v0, 0x0

    .line 155
    if-eqz p0, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_1

    .line 156
    :cond_0
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewn;->a:Ljava/lang/String;

    const-string/jumbo v3, "activity is null or uid invalid"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_0
    return v0

    .line 160
    :cond_1
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-nez v1, :cond_2

    .line 161
    sget v1, Leuj$l;->dt_alert_cannot_call_self:I

    invoke-static {v1}, Lcms;->a(I)V

    goto :goto_0

    .line 164
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "toUser"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 182
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 183
    :cond_0
    const-string/jumbo v4, "tele_conf"

    sget-object v5, Lewn;->a:Ljava/lang/String;

    const-string/jumbo v6, "activity is null or toUser is null"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :goto_0
    return v3

    .line 186
    :cond_1
    iget-wide v4, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    iget-object v4, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 187
    const-string/jumbo v4, "tele_conf"

    sget-object v5, Lewn;->a:Ljava/lang/String;

    const-string/jumbo v6, "uid <=0 and mobile is null"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_2
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v0

    .line 191
    .local v0, "currentUid":J
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->f()Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "mobile":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    iget-wide v4, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_5

    .line 193
    :cond_4
    sget v4, Leuj$l;->dt_alert_cannot_call_self:I

    invoke-static {v4}, Lcms;->a(I)V

    goto :goto_0

    .line 196
    :cond_5
    iget-boolean v4, p0, Lewn;->c:Z

    if-eqz v4, :cond_6

    .line 197
    const-string/jumbo v4, "tele_conf"

    sget-object v5, Lewn;->a:Ljava/lang/String;

    const-string/jumbo v6, "mIsStarted is true"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_6
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 168
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 169
    :cond_0
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lewn;->a:Ljava/lang/String;

    const-string/jumbo v4, "activity is null or phoneNumber is null"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_0
    return v1

    .line 173
    :cond_1
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->f()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "mobile":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 175
    sget v2, Leuj$l;->dt_alert_cannot_call_self:I

    invoke-static {v2}, Lcms;->a(I)V

    goto :goto_0

    .line 178
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lewn;Z)Z
    .locals 1
    .param p0, "x0"    # Lewn;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lewn;->c:Z

    return v0
.end method

.method private b(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "toUser"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p3, "startSource"    # Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    .prologue
    .line 1410
    new-instance v0, Lewn$16;

    invoke-direct {v0, p0, p2, p1, p3}, Lewn$16;-><init>(Lewn;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/app/Activity;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lewn;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "toUser"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 504
    if-eqz p2, :cond_0

    iget-wide v0, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-wide v2, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    new-instance v1, Lewn$23;

    invoke-direct {v1, p0, p1}, Lewn$23;-><init>(Lewn;Landroid/app/Activity;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "toUser"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p3, "quickStartSource"    # Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    .prologue
    .line 572
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lewn;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Landroid/os/Bundle;)V

    .line 573
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "toUser"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p3, "quickStartSource"    # Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;
    .param p4, "extras"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 576
    invoke-direct {p0, p1, p2}, Lewn;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 621
    :goto_0
    return-void

    .line 579
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lewn;->c:Z

    .line 580
    iget-wide v2, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 1673
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Lewn;->a(Landroid/app/Activity;Lewj$b;Ljava/lang/String;)V

    .line 581
    if-nez p3, :cond_1

    .line 582
    sget-object p3, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->UNKNOWN:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    .line 584
    :cond_1
    sget-object v1, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->LOCAL_CONTACT:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    if-ne p3, v1, :cond_3

    .line 585
    const/4 v1, 0x1

    iput v1, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 590
    :cond_2
    :goto_1
    invoke-static {}, Lewx;->e()Z

    move-result v8

    .line 591
    .local v8, "isQuickStartCallValid":Z
    if-eqz v8, :cond_5

    .line 597
    const-string/jumbo v1, "gray_voip_recommendation"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v6

    .line 599
    .local v6, "grayConfig":Z
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 600
    .local v10, "quickStartProperty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    invoke-virtual {p3}, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->valueOf()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    if-eqz v6, :cond_4

    .line 603
    const-string/jumbo v7, "phone_calllist_gray_click"

    .line 607
    .local v7, "ctrKey":Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    invoke-interface {v1, v7, v10}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 1688
    new-instance v0, Lewn$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lewn$1;-><init>(Lewn;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Landroid/os/Bundle;Z)V

    .line 610
    .local v0, "bizInfoCallbacks":Lcma;, "Lcma<Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lewh;->a(ZLcma;)V

    goto :goto_0

    .line 586
    .end local v0    # "bizInfoCallbacks":Lcma;, "Lcma<Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    .end local v6    # "grayConfig":Z
    .end local v7    # "ctrKey":Ljava/lang/String;
    .end local v8    # "isQuickStartCallValid":Z
    .end local v10    # "quickStartProperty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    sget-object v1, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->PROFILE:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    if-ne p3, v1, :cond_2

    .line 588
    const/4 v1, 0x0

    iput-object v1, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    goto :goto_1

    .line 605
    .restart local v6    # "grayConfig":Z
    .restart local v8    # "isQuickStartCallValid":Z
    .restart local v10    # "quickStartProperty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const-string/jumbo v7, "phone_calllist_click"

    .restart local v7    # "ctrKey":Ljava/lang/String;
    goto :goto_2

    .line 612
    .end local v6    # "grayConfig":Z
    .end local v7    # "ctrKey":Ljava/lang/String;
    .end local v10    # "quickStartProperty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    iget-wide v2, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_6

    .line 613
    invoke-direct {p0, p1, p2}, Lewn;->b(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 614
    const/4 v1, 0x0

    iput-boolean v1, p0, Lewn;->c:Z

    goto :goto_0

    .line 616
    :cond_6
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 617
    .local v9, "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;>;"
    invoke-direct {p0, p1, p2, v9, p3}, Lewn;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V

    .line 618
    invoke-direct {p0, p2, v9}, Lewn;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public a(Landroid/app/Activity;Lewj$b;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lewj$b;
    .param p3, "tag"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 658
    iget-object v0, p0, Lewn;->b:Lewj;

    if-nez v0, :cond_1

    .line 659
    if-eqz p2, :cond_0

    .line 660
    new-instance v0, Lewj;

    invoke-direct {v0, p1, p2}, Lewj;-><init>(Landroid/app/Activity;Lewj$b;)V

    iput-object v0, p0, Lewn;->b:Lewj;

    .line 668
    :goto_0
    iget-object v0, p0, Lewn;->b:Lewj;

    .line 4455
    iput-object p3, v0, Lewj;->g:Ljava/lang/String;

    .line 669
    iget-object v0, p0, Lewn;->b:Lewj;

    const/4 v1, 0x0

    .line 4467
    iput-object v1, v0, Lewj;->h:Ljava/lang/String;

    .line 670
    return-void

    .line 662
    :cond_0
    new-instance v0, Lewj;

    invoke-direct {v0, p1}, Lewj;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lewn;->b:Lewj;

    goto :goto_0

    .line 665
    :cond_1
    iget-object v0, p0, Lewn;->b:Lewj;

    .line 4070
    iget-object v1, v0, Lewj;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lewj;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq p1, v1, :cond_3

    .line 4071
    :cond_2
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lewj;->a:Ljava/lang/ref/WeakReference;

    .line 4072
    const/4 v1, 0x1

    iput-boolean v1, v0, Lewj;->d:Z

    .line 666
    :goto_1
    iget-object v0, p0, Lewn;->b:Lewj;

    .line 4079
    iput-object p2, v0, Lewj;->c:Lewj$b;

    goto :goto_0

    .line 4074
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, v0, Lewj;->d:Z

    goto :goto_1
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;JILcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V
    .locals 17
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "sourceCorpId"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "bizType"    # I
    .param p6, "quickStartSource"    # Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    .prologue
    .line 628
    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2}, Lewn;->a(Landroid/app/Activity;J)Z

    move-result v5

    if-nez v5, :cond_0

    .line 655
    :goto_0
    return-void

    .line 631
    :cond_0
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lewn;->c:Z

    .line 632
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 2673
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v5}, Lewn;->a(Landroid/app/Activity;Lewj$b;Ljava/lang/String;)V

    .line 633
    if-nez p6, :cond_1

    .line 634
    sget-object p6, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->UNKNOWN:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    .line 637
    :cond_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 3273
    .local v14, "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;>;"
    new-instance v5, Lewn$18;

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p1

    invoke-direct/range {v5 .. v12}, Lewn$18;-><init>(Lewn;Ljava/lang/String;JILcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Landroid/app/Activity;)V

    .line 639
    invoke-static {v5}, Lewj;->a(Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v4

    .line 640
    .local v4, "bizcallMenu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    const/16 v5, 0x2774

    move/from16 v0, p5

    if-ne v0, v5, :cond_2

    .line 643
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 644
    .local v15, "quickStartProperty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "type"

    invoke-virtual/range {p6 .. p6}, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->valueOf()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v15, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    const-string/jumbo v6, "phone_calllist_vip_click"

    invoke-interface {v5, v6, v15}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 648
    .end local v15    # "quickStartProperty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v13

    .line 649
    .local v13, "destUser":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v13, :cond_3

    .line 650
    invoke-static {v13}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14}, Lewn;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;)V

    goto :goto_0

    .line 652
    :cond_3
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Leuj$l;->dt_conf_callselect_btn_make_call:I

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 653
    .local v16, "title":Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5, v14}, Lewn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;JLcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "sourceCorpId"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "quickStartSource"    # Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    .prologue
    .line 624
    const/16 v6, 0x2774

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lewn;->a(Landroid/app/Activity;Ljava/lang/String;JILcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V

    .line 625
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Lcma;)V
    .locals 16
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/Long;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "content"    # Ljava/lang/String;
    .param p6, "agentId"    # Ljava/lang/String;
    .param p7, "corpId"    # Ljava/lang/String;
    .param p9, "source"    # Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;",
            "Lcma",
            "<",
            "Lgws;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1181
    .line 9140
    .local p8, "typeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p10, "listener":Lcma;, "Lcma<Lgws;>;"
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9141
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->f()Ljava/lang/String;

    move-result-object v2

    .line 9142
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9143
    sget v2, Leuj$l;->dt_alert_cannot_call_self:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 9144
    const/4 v2, 0x0

    .line 1181
    :goto_0
    if-nez v2, :cond_3

    .line 1182
    const-string/jumbo v2, "9"

    const-string/jumbo v3, "don\'t call oneself"

    move-object/from16 v0, p10

    invoke-interface {v0, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    :cond_0
    :goto_1
    return-void

    .line 9148
    :cond_1
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 9149
    if-eqz v2, :cond_2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9150
    sget v2, Leuj$l;->dt_alert_cannot_call_self:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 9151
    const/4 v2, 0x0

    goto :goto_0

    .line 9156
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 1185
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lewn;->c:Z

    if-eqz v2, :cond_4

    .line 1186
    const-string/jumbo v2, "13"

    const-string/jumbo v3, "QuickCallList API is use, please wait"

    move-object/from16 v0, p10

    invoke-interface {v0, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1189
    :cond_4
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lewn;->c:Z

    .line 1191
    if-nez p9, :cond_5

    .line 1192
    sget-object p9, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->UNKNOWN:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    .line 1195
    :cond_5
    new-instance v10, Leuw;

    move-object/from16 v0, p8

    move-object/from16 v1, p10

    invoke-direct {v10, v0, v1}, Leuw;-><init>(Ljava/util/List;Lcma;)V

    .line 1196
    .local v10, "dataCenter":Leuw;
    invoke-static {v10}, Lewc;->a(Leuw;)V

    .line 1198
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1199
    .local v12, "quickStartProperty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "type"

    invoke-virtual/range {p9 .. p9}, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->valueOf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "phone_calllist_click"

    invoke-interface {v2, v3, v12}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 1202
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1204
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v13

    const/4 v14, 0x0

    const/16 v15, 0x3e8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v11, p9

    .line 1205
    invoke-direct/range {v2 .. v11}, Lewn;->a(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Leuw;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)Lcma;

    move-result-object v2

    .line 1204
    move-object/from16 v0, p2

    invoke-virtual {v13, v14, v0, v15, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Ljava/lang/String;ILcma;)V

    goto/16 :goto_1

    .line 1206
    :cond_6
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1207
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v11, p9

    .line 1208
    invoke-direct/range {v2 .. v11}, Lewn;->a(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Leuw;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)Lcma;

    move-result-object v2

    .line 1207
    invoke-virtual {v13, v14, v15, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto/16 :goto_1
.end method

.method public final a(Landroid/app/Activity;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "quickStartSource"    # Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 930
    .local p2, "toUserList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 931
    :cond_0
    const-string/jumbo v8, "tele_conf"

    sget-object v9, Lewn;->a:Ljava/lang/String;

    const-string/jumbo v10, "activity is null or toUser is null"

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    :goto_0
    return-void

    .line 934
    :cond_1
    iget-boolean v8, p0, Lewn;->c:Z

    if-eqz v8, :cond_2

    .line 935
    const-string/jumbo v8, "tele_conf"

    sget-object v9, Lewn;->a:Ljava/lang/String;

    const-string/jumbo v10, "mIsStarted is true"

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 938
    :cond_2
    const/4 v8, 0x1

    iput-boolean v8, p0, Lewn;->c:Z

    .line 939
    const/4 v8, 0x0

    .line 8673
    const/4 v9, 0x0

    invoke-virtual {p0, p1, v9, v8}, Lewn;->a(Landroid/app/Activity;Lewj$b;Ljava/lang/String;)V

    .line 940
    if-nez p3, :cond_3

    .line 941
    sget-object p3, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->UNKNOWN:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    .line 943
    :cond_3
    invoke-static {}, Lewx;->e()Z

    move-result v0

    .line 944
    .local v0, "isQuickStartCallValid":Z
    if-eqz v0, :cond_5

    .line 945
    move-object v4, p3

    .line 947
    .local v4, "startSource":Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 948
    .local v3, "quickStartProperty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "type"

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->valueOf()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v8

    const-string/jumbo v9, "phone_calllist_click"

    invoke-interface {v8, v9, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 951
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 953
    .local v1, "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;>;"
    new-instance v8, Lewn$5;

    invoke-direct {v8, p0, p2, p1, v4}, Lewn$5;-><init>(Lewn;Ljava/util/List;Landroid/app/Activity;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V

    invoke-static {v8}, Lewj;->d(Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v5

    .line 977
    .local v5, "telConfMenu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    invoke-static {}, Lewh;->a()Lewh;

    invoke-static {}, Lewh;->o()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 980
    new-instance v8, Lewn$6;

    invoke-direct {v8, p0, p1, p2, v4}, Lewn$6;-><init>(Lewn;Landroid/app/Activity;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lewj;->a(Landroid/content/DialogInterface$OnClickListener;ZZ)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v7

    .line 996
    .local v7, "voipConfMenu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 999
    .end local v7    # "voipConfMenu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    :cond_4
    new-instance v8, Lewn$7;

    invoke-direct {v8, p0, p1, p2, v4}, Lewn$7;-><init>(Lewn;Landroid/app/Activity;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V

    invoke-static {v8}, Lewj;->e(Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v6

    .line 1014
    .local v6, "videoConfMenu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1016
    new-instance v8, Lewn$8;

    invoke-direct {v8, p0, v4, p1, p2}, Lewn$8;-><init>(Lewn;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Landroid/app/Activity;Ljava/util/List;)V

    invoke-static {v8}, Lewj;->b(Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v2

    .line 1026
    .local v2, "otherCallMenu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1028
    iget-object v8, p0, Lewn;->b:Lewj;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v9

    invoke-virtual {v9}, Lcid;->c()Landroid/app/Application;

    move-result-object v9

    sget v10, Leuj$l;->dt_conference_callcenter_startconference:I

    invoke-virtual {v9, v10}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v1, v10}, Lewj;->a(Ljava/lang/String;Ljava/util/List;Z)V

    .line 1032
    .end local v1    # "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;>;"
    .end local v2    # "otherCallMenu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    .end local v3    # "quickStartProperty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "startSource":Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;
    .end local v5    # "telConfMenu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    .end local v6    # "videoConfMenu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    :goto_1
    const/4 v8, 0x0

    iput-boolean v8, p0, Lewn;->c:Z

    goto/16 :goto_0

    .line 1030
    :cond_5
    const/4 v8, 0x0

    invoke-static {p1, p2, v8}, Lewb;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1
.end method
