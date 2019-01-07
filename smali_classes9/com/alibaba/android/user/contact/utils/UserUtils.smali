.class public final Lcom/alibaba/android/user/contact/utils/UserUtils;
.super Ljava/lang/Object;
.source "UserUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/utils/UserUtils$GUIDE_TYPE;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 119
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/alibaba/android/user/contact/utils/UserUtils;->a:Ljava/util/Set;

    .line 120
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "43"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "32"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "359"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "357"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "385"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "420"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "45"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "372"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "358"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "33"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "49"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "30"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "36"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "353"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "39"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "371"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "370"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "352"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "356"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "31"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "48"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "351"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "40"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "421"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "386"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "34"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "46"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "44"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/user/contact/utils/UserUtils;->b:[Ljava/lang/String;

    .line 124
    sget-object v0, Lcom/alibaba/android/user/contact/utils/UserUtils;->a:Ljava/util/Set;

    const-string/jumbo v1, "tms.dingtalk.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/alibaba/android/user/contact/utils/UserUtils;->a:Ljava/util/Set;

    const-string/jumbo v1, "h5.dingtalk.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lcom/alibaba/android/user/contact/utils/UserUtils;->a:Ljava/util/Set;

    const-string/jumbo v1, "oa.dingtalk.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1195
    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, "userIdentityObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p1, "orgEmployeeObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;"
    const/4 v0, 0x0

    .line 1058
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1091
    :cond_0
    return v0

    .line 1062
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1066
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1068
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1069
    .local v3, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v3, :cond_2

    .line 1073
    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1076
    .end local v3    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_3
    const/4 v0, 0x0

    .line 1078
    .local v0, "count":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 1079
    .local v2, "orgEmployeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    if-eqz v2, :cond_4

    .line 1083
    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1085
    .restart local v3    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v3, :cond_4

    .line 1086
    add-int/lit8 v0, v0, 0x1

    .line 1087
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgStaffId:Ljava/lang/String;

    iput-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v7/app/AlertDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "positiveButtonString"    # Ljava/lang/String;

    .prologue
    .line 1129
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1130
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 1131
    invoke-virtual {v0, p2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZIZZZZLandroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .locals 13
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "deptName"    # Ljava/lang/String;
    .param p3, "identifyFlag"    # Ljava/lang/String;
    .param p4, "isIncrement"    # Z
    .param p5, "limit"    # I
    .param p6, "showFriends"    # Z
    .param p7, "showCommonFriends"    # Z
    .param p8, "hideExternalContact"    # Z
    .param p9, "showOnlyLocalContact"    # Z
    .param p10, "subClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/lang/String;",
            "ZIZZZZ",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")",
            "Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;"
        }
    .end annotation

    .prologue
    .line 150
    .local p2, "selectedUserList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v11, p9

    move-object/from16 v12, p10

    invoke-static/range {v0 .. v12}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZIZZZZLandroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZIZZZZLandroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .locals 17
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "deptName"    # Ljava/lang/String;
    .param p3, "isFinishActivity"    # Z
    .param p4, "preIdentifyFlag"    # Ljava/lang/String;
    .param p5, "curIdentifyFlag"    # Ljava/lang/String;
    .param p6, "isIncrement"    # Z
    .param p7, "limit"    # I
    .param p8, "showFriends"    # Z
    .param p9, "showCommonFriends"    # Z
    .param p10, "hideExternalContact"    # Z
    .param p11, "showOnlyLocalContact"    # Z
    .param p12, "subClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZIZZZZ",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")",
            "Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;"
        }
    .end annotation

    .prologue
    .line 158
    .local p2, "selectedUserList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v15, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 159
    .local v15, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lezg$l;->choose_add_people_dlg_title:I

    invoke-virtual {v15, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 160
    sget v16, Lezg$c;->choose_add_people_mode_items:I

    new-instance v1, Lcom/alibaba/android/user/contact/utils/UserUtils$1;

    move-object/from16 v2, p5

    move-object/from16 v3, p0

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    invoke-direct/range {v1 .. v14}, Lcom/alibaba/android/user/contact/utils/UserUtils$1;-><init>(Ljava/lang/String;Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;ZIZZZZLandroid/content/DialogInterface$OnClickListener;)V

    move/from16 v0, v16

    invoke-virtual {v15, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 184
    invoke-virtual {v15}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 186
    return-object v15
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "identifyFlag"    # Ljava/lang/String;

    .prologue
    .line 252
    new-instance v0, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;-><init>(Landroid/app/Activity;)V

    .line 253
    .local v0, "manualAddPeopleDialog":Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;
    new-instance v1, Lcom/alibaba/android/user/contact/utils/UserUtils$2;

    invoke-direct {v1, v0, p0, p1}, Lcom/alibaba/android/user/contact/utils/UserUtils$2;-><init>(Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;Landroid/app/Activity;Ljava/lang/String;)V

    .line 2108
    iput-object v1, v0, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;->c:Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog$a;

    .line 295
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;->show()V

    .line 297
    return-object v0
.end method

.method public static a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;
    .locals 1
    .param p0, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 928
    invoke-static {}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    invoke-static {p0}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    .line 931
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/alibaba/android/user/contact/utils/UserUtils;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;J)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "orgId"    # J

    .prologue
    .line 708
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4545
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(JZ)Z

    move-result v0

    .line 708
    if-eqz v0, :cond_1

    .line 712
    .end local p0    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "url":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, "mobiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 369
    :cond_0
    const/4 v3, 0x0

    .line 384
    :goto_0
    return-object v3

    .line 372
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 373
    .local v0, "address":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 374
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 375
    .local v2, "mobile":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 378
    if-eqz v1, :cond_2

    .line 379
    const-string/jumbo v3, ";"

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 381
    :cond_2
    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 373
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 384
    .end local v2    # "mobile":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static a()V
    .locals 12

    .prologue
    .line 389
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v8

    invoke-virtual {v8}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 390
    .local v0, "currentUser":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-nez v0, :cond_0

    .line 436
    :goto_0
    return-void

    .line 394
    :cond_0
    const/4 v2, 0x0

    .line 395
    .local v2, "isAliStaff":Z
    const-string/jumbo v8, "PreferenceForAppStart"

    invoke-static {v8}, Lcpl;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 396
    .local v7, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 397
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v8, "pref_key_user_nick"

    invoke-static {v8}, Lcpl;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 398
    const-string/jumbo v8, "pref_key_user_avatar_media_id"

    invoke-static {v8}, Lcpl;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 400
    iget-object v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_2

    .line 402
    :cond_1
    const-string/jumbo v8, "pref_key_main_org_id"

    invoke-static {v8}, Lcpl;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v10, 0x0

    invoke-interface {v1, v8, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 403
    const-string/jumbo v8, "pref_key_main_org_logo_url"

    invoke-static {v8}, Lcpl;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, ""

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 404
    const-string/jumbo v8, "pref_key_is_ali_staff"

    invoke-static {v8}, Lcpl;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 405
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 409
    :cond_2
    const-wide/16 v4, 0x0

    .line 410
    .local v4, "mainOrgId":J
    const/4 v3, 0x0

    .line 411
    .local v3, "mainOrgLogoUrl":Ljava/lang/String;
    iget-object v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 413
    .local v6, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v6, :cond_3

    iget-boolean v9, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->isMainOrg:Z

    if-eqz v9, :cond_3

    .line 416
    iget-wide v4, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 419
    iget-object v8, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v8, :cond_4

    iget-object v8, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->logoMediaId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 420
    iget-object v8, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->logoMediaId:Ljava/lang/String;

    invoke-static {v8}, Lcpx;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 424
    :cond_4
    iget-wide v8, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    const-wide/16 v10, 0x5209

    cmp-long v8, v8, v10

    if-nez v8, :cond_5

    .line 425
    const/4 v2, 0x1

    .line 432
    .end local v6    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_5
    const-string/jumbo v8, "pref_key_main_org_id"

    invoke-static {v8}, Lcpl;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 433
    const-string/jumbo v8, "pref_key_main_org_logo_url"

    invoke-static {v8}, Lcpl;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v3, :cond_6

    const-string/jumbo v3, ""

    .end local v3    # "mainOrgLogoUrl":Ljava/lang/String;
    :cond_6
    invoke-interface {v1, v8, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 434
    const-string/jumbo v8, "pref_key_is_ali_staff"

    invoke-static {v8}, Lcpl;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 435
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 867
    const-string/jumbo v0, "pref_key_energy_home_guide_count"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v7

    .line 868
    .local v7, "showGuideCount":I
    if-lez v7, :cond_1

    .line 870
    const-string/jumbo v0, "https://h5.dingtalk.com/medal/index.html?dd_nav_bgcolor=FFFF6A44#/index/%s/onboarding"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcoh;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 871
    .local v8, "url":Ljava/lang/String;
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    invoke-virtual {v0, p0, v8, v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    if-eqz p1, :cond_0

    .line 874
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 877
    :cond_0
    const-string/jumbo v0, "pref_key_energy_home_guide_count"

    add-int/lit8 v7, v7, -0x1

    invoke-static {v0, v7}, Lcpk;->b(Ljava/lang/String;I)V

    .line 878
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v1, "dt_user"

    const-string/jumbo v2, "dt_energy_home_guide"

    .line 879
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    .line 878
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;Lcom/alibaba/wukong/Callback;)V

    .line 921
    .end local v8    # "url":Ljava/lang/String;
    :goto_0
    const-string/jumbo v0, "pref_key_last_show_energy_popup_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcpk;->b(Ljava/lang/String;J)V

    .line 922
    return-void

    .line 881
    :cond_1
    new-instance v6, Lcom/alibaba/android/user/contact/utils/UserUtils$3;

    invoke-direct {v6, p1, p0}, Lcom/alibaba/android/user/contact/utils/UserUtils$3;-><init>(Landroid/view/View;Landroid/app/Activity;)V

    .line 916
    .local v6, "apiEventListener":Lcma;
    if-eqz p0, :cond_2

    .line 917
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v1, Lcma;

    invoke-interface {v0, v6, v1, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "apiEventListener":Lcma;
    check-cast v6, Lcma;

    .line 919
    .restart local v6    # "apiEventListener":Lcma;
    :cond_2
    invoke-static {}, Lfam;->a()Lezq;

    move-result-object v0

    invoke-interface {v0, v6}, Lezq;->a(Lcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;Ljava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "authOrgObject"    # Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;
    .param p2, "from"    # Ljava/lang/String;

    .prologue
    .line 499
    if-nez p1, :cond_0

    .line 504
    :goto_0
    return-void

    .line 503
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->corpId:Ljava/lang/String;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->token:Ljava/lang/String;

    invoke-static {p0, v0, v1, p2}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "from"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 507
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 513
    sget-object v0, Lcom/alibaba/android/user/devset/DevSettingActivity;->E:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v5

    aput-object p3, v1, v4

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 517
    .local v2, "url":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 515
    .end local v2    # "url":Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/alibaba/android/user/devset/DevSettingActivity;->D:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v5

    aput-object p2, v1, v4

    aput-object p3, v1, v3

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "url":Ljava/lang/String;
    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZIZZZZ)V
    .locals 4
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "identifyFlag"    # Ljava/lang/String;
    .param p2, "deptName"    # Ljava/lang/String;
    .param p4, "isIncrement"    # Z
    .param p5, "limit"    # I
    .param p6, "showFriends"    # Z
    .param p7, "showCommonFriends"    # Z
    .param p8, "hideExternalContact"    # Z
    .param p9, "showOnlyLocalContact"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;ZIZZZZ)V"
        }
    .end annotation

    .prologue
    .local p3, "selectedUserList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const/4 v3, 0x0

    .line 338
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    .line 339
    .local v0, "builder":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 340
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 341
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 342
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 344
    :cond_0
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 345
    if-nez p4, :cond_1

    move-object v2, p3

    .line 346
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 348
    :cond_1
    check-cast p3, Ljava/util/ArrayList;

    .end local p3    # "selectedUserList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-virtual {v0, p3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 350
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->j(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 351
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 352
    invoke-virtual {v0, p6}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->e(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 353
    invoke-virtual {v0, p7}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->i(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 354
    invoke-virtual {v0, p8}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 355
    invoke-virtual {v0, p9}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->n(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 356
    if-lez p5, :cond_3

    .line 357
    invoke-virtual {v0, p5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 359
    :cond_3
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->p(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 361
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 362
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "intent_key_contact_choose_request"

    .line 3053
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 362
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 363
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 364
    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # J

    .prologue
    .line 788
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 794
    :goto_0
    return-void

    .line 792
    :cond_0
    const-string/jumbo v1, "https://h5.dingtalk.com/medal/index.html?dd_nav_bgcolor=FFFF6A44#/index/%s/profile"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Lcoh;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 793
    .local v0, "url":Ljava/lang/String;
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 471
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/app/Activity;Z)V
    .locals 9
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isInitCard"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1204
    const-string/jumbo v1, "from=facetoface"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1205
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, p0}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1206
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, p0, v8}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1207
    move-object v0, p0

    .line 1208
    .local v0, "params":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 1209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&goCompletePage=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1212
    :cond_0
    const-string/jumbo v1, "/pages/guide/guide"

    const-string/jumbo v2, "2018112662280156"

    invoke-static {p1, v0, v1, v2}, Lflz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    .end local v0    # "params":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1215
    :cond_2
    if-nez p2, :cond_3

    .line 1217
    const-string/jumbo v1, "from=facetoface"

    const-string/jumbo v2, "pages/createcard/createcard"

    const-string/jumbo v3, "2018112662280156"

    invoke-static {p1, v1, v2, v3}, Lflz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1221
    :cond_3
    const-string/jumbo v1, "type=self"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1222
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/page/my_connections.html"

    new-instance v3, Lcom/alibaba/android/user/contact/utils/UserUtils$4;

    invoke-direct {v3}, Lcom/alibaba/android/user/contact/utils/UserUtils$4;-><init>()V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 1230
    :cond_4
    const-string/jumbo v1, "type=square"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1231
    const-string/jumbo v1, "from=Page_Me"

    const-string/jumbo v2, "pages/roomsquare/roomsquare"

    .line 6275
    if-nez p1, :cond_5

    .line 6276
    const-string/jumbo v1, "UserNavigator"

    const-string/jumbo v2, "openZProjectEAppWithInMainTask, context == null"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 6280
    :cond_5
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 6281
    const-string/jumbo v4, "url"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "dingtalk://dingtalkclient/action/open_mini_app?miniAppId="

    aput-object v6, v5, v7

    const-string/jumbo v6, "2018091361350429"

    aput-object v6, v5, v8

    const/4 v6, 0x2

    const-string/jumbo v7, "&mainTask=true&keepAlive=false&page="

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v2, v5, v6

    const/4 v2, 0x4

    const-string/jumbo v6, "&query="

    aput-object v6, v5, v2

    const/4 v2, 0x5

    aput-object v1, v5, v2

    const/4 v1, 0x6

    const-string/jumbo v2, "&ddMode="

    aput-object v2, v5, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "push"

    aput-object v2, v5, v1

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6283
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1233
    :cond_6
    const-string/jumbo v1, "type=f2f"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1234
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/exchange_namecard.html"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1236
    :cond_7
    const-string/jumbo v1, "from=facetoface"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1237
    invoke-static {p1}, Lflz;->a(Landroid/app/Activity;)V

    goto/16 :goto_0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 7254
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 1248
    :goto_0
    if-eqz v0, :cond_0

    .line 1249
    const-string/jumbo v0, "TEST_USER"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    :cond_0
    return-void

    .line 7254
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 1
    .param p0, "isNeed"    # Z

    .prologue
    .line 443
    const-string/jumbo v0, "pref_key_need_init_pwd"

    invoke-static {v0, p0}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 444
    return-void
.end method

.method public static a(J)Z
    .locals 8
    .param p0, "orgId"    # J

    .prologue
    const/4 v3, 0x0

    .line 475
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-gtz v4, :cond_1

    .line 492
    :cond_0
    :goto_0
    return v3

    .line 478
    :cond_1
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    .line 479
    .local v2, "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v2, :cond_0

    .line 482
    iget-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 483
    .local v0, "employList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 486
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 487
    .local v1, "employOrg":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_2

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v5, v6, p0

    if-nez v5, :cond_2

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-boolean v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->managePermission:Z

    if-eqz v5, :cond_2

    .line 489
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static a(JZ)Z
    .locals 6
    .param p0, "orgId"    # J
    .param p2, "includeHkMcTw"    # Z

    .prologue
    const/4 v2, 0x1

    .line 549
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 550
    .local v0, "currentUser":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 560
    :cond_0
    :goto_0
    return v2

    .line 554
    :cond_1
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 555
    .local v1, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_2

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v4, v4, p0

    if-nez v4, :cond_2

    .line 556
    invoke-static {v1, p2}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Z)Z

    move-result v2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 584
    .line 3592
    invoke-static {p0, v0, v0}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Landroid/content/Context;ZZ)Z

    move-result v0

    .line 584
    return v0
.end method

.method public static a(Landroid/content/Context;Z)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "checkLang"    # Z

    .prologue
    .line 592
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Landroid/content/Context;ZZ)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;ZZ)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "checkLang"    # Z
    .param p2, "includeHkMcTw"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 596
    if-eqz p1, :cond_6

    .line 613
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v7

    invoke-virtual {v7}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v4

    .line 614
    .local v4, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz p0, :cond_0

    if-nez v4, :cond_2

    .line 615
    :cond_0
    const-string/jumbo v5, "context or userProfileExtensionObject is null"

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v5, v7}, Lfxo;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v6

    .line 642
    .end local v4    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_1
    :goto_0
    return v5

    .line 619
    .restart local v4    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->b()Lchy;

    move-result-object v7

    invoke-virtual {v7}, Lchy;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 620
    .local v0, "locale":Ljava/util/Locale;
    if-nez v0, :cond_3

    .line 621
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 624
    :cond_3
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string/jumbo v8, "pref_locale"

    const-string/jumbo v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, "localePref":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 627
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->b()Lchy;

    move-result-object v7

    invoke-virtual {v7}, Lchy;->getSystemLocale()Ljava/util/Locale;

    move-result-object v3

    .line 628
    .local v3, "systemLocale":Ljava/util/Locale;
    if-eqz v3, :cond_4

    .line 629
    move-object v0, v3

    .line 633
    .end local v3    # "systemLocale":Ljava/util/Locale;
    :cond_4
    invoke-static {v4}, Lcom/alibaba/android/user/contact/utils/UserUtils;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Ljava/lang/String;

    move-result-object v2

    .line 635
    .local v2, "stateCode":Ljava/lang/String;
    const-string/jumbo v7, "stateCode=%s,locale=%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v6

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Lfxo;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 636
    const-string/jumbo v7, "86"

    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string/jumbo v7, "852"

    .line 637
    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string/jumbo v7, "853"

    .line 638
    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string/jumbo v7, "886"

    .line 639
    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 640
    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_5
    move v5, v6

    goto :goto_0

    .line 642
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "localePref":Ljava/lang/String;
    .end local v2    # "stateCode":Ljava/lang/String;
    .end local v4    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_6
    invoke-static {p2}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d(Z)Z

    move-result v5

    goto/16 :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Z
    .locals 1
    .param p0, "orgEmployeeExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .prologue
    .line 521
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Z)Z

    move-result v0

    return v0
.end method

.method private static a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Z)Z
    .locals 10
    .param p0, "orgEmployeeExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .param p1, "includeHkMcTw"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 525
    const/4 v6, 0x1

    .line 526
    .local v6, "cn":Z
    if-nez p0, :cond_0

    .line 527
    const-string/jumbo v0, "orgEmployeeExtensionObject is null"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 541
    :goto_0
    return v4

    .line 530
    :cond_0
    invoke-static {}, Lfvv;->a()Lfvv;

    move-result-object v0

    const-string/jumbo v1, "blk_fr"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-virtual/range {v0 .. v5}, Lfvv;->a(Ljava/lang/String;JZZ)Z

    move-result v7

    .line 531
    .local v7, "configSwitch":Z
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_user_i18n"

    .line 3083
    invoke-virtual {v0, v1, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v8

    .line 532
    .local v8, "featureSwitch":Z
    const/4 v9, 0x0

    .line 533
    .local v9, "nation":Ljava/lang/String;
    if-eqz v7, :cond_1

    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v0, :cond_1

    .line 534
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->getNation()Ljava/lang/String;

    move-result-object v9

    .line 535
    if-eqz p1, :cond_2

    const-string/jumbo v0, "CN"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "HK"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "MO"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "TW"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 536
    :goto_1
    const/4 v6, 0x0

    .line 540
    :cond_1
    const-string/jumbo v0, "configSwitch=%b,featureSwitch=%b,nation=%s,cn=%b"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    aput-object v9, v1, v2

    const/4 v2, 0x3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lfxo;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v6

    .line 541
    goto :goto_0

    .line 535
    :cond_2
    const-string/jumbo v0, "CN"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1
.end method

.method public static a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Z
    .locals 1
    .param p0, "user"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .prologue
    .line 564
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 116
    .line 7302
    if-nez p0, :cond_0

    .line 7314
    :goto_0
    return v0

    .line 8095
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7307
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7308
    sget v2, Lezg$l;->add_staff_blank_toast:I

    new-array v1, v1, [Ljava/lang/Object;

    sget v3, Lezg$l;->user_profile_name:I

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-virtual {p1, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 8099
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7312
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7313
    sget v2, Lezg$l;->add_staff_blank_toast:I

    new-array v1, v1, [Ljava/lang/Object;

    sget v3, Lezg$l;->user_profile_mobile:I

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-virtual {p1, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 7317
    :cond_2
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 7318
    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 7319
    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 7320
    iput-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 7321
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 7322
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7323
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7325
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.workapp.choose.people.from.contact"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7326
    const-string/jumbo v3, "choose_user_identities"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 7327
    const-string/jumbo v2, "activity_identify"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7328
    const-string/jumbo v2, "intent_key_is_increment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7329
    invoke-static {p1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldq;->a(Landroid/content/Intent;)Z

    move v0, v1

    .line 116
    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "phoneNum"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1163
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1183
    :cond_0
    :goto_0
    return v9

    .line 1167
    :cond_1
    const-string/jumbo v10, " "

    const-string/jumbo v11, ""

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1168
    .local v4, "finalName":Ljava/lang/String;
    const-string/jumbo v10, " "

    const-string/jumbo v11, ""

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1170
    .local v5, "finalNum":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v10

    invoke-virtual {v10}, Lcid;->c()Landroid/app/Application;

    move-result-object v10

    sget v11, Lezg$l;->dt_official_mobile_conference_title:I

    invoke-virtual {v10, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1171
    .local v2, "dingtalkOfficialConference":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v10

    invoke-virtual {v10}, Lcid;->c()Landroid/app/Application;

    move-result-object v10

    sget v11, Lezg$l;->dt_official_mobile_message_title:I

    invoke-virtual {v10, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1172
    .local v3, "dingtalkOfficialMessage":Ljava/lang/String;
    const-string/jumbo v1, "DingTalk"

    .line 1173
    .local v1, "dingtalkOfficial":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v10

    invoke-virtual {v10}, Lcid;->c()Landroid/app/Application;

    move-result-object v10

    sget v11, Lezg$l;->dt_official_mobile_ding_message_title:I

    invoke-virtual {v10, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1176
    .local v0, "dingtalkDingMessage":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1177
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1178
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1179
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_2
    move v6, v9

    .line 1181
    .local v6, "nameFilter":Z
    :goto_1
    const-string/jumbo v10, "0"

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string/jumbo v10, "4"

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string/jumbo v10, "9"

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_3
    move v7, v9

    .line 1183
    .local v7, "numFilter":Z
    :goto_2
    or-int v9, v6, v7

    goto :goto_0

    .end local v6    # "nameFilter":Z
    .end local v7    # "numFilter":Z
    :cond_4
    move v6, v8

    .line 1179
    goto :goto_1

    .restart local v6    # "nameFilter":Z
    :cond_5
    move v7, v8

    .line 1181
    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1011
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 1049
    :cond_1
    :goto_0
    return v2

    .line 1015
    :cond_2
    const-string/jumbo v4, "dt_user"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "dt_energy_home_guide"

    .line 1016
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1017
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1019
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1020
    .local v0, "count":I
    const-string/jumbo v4, "pref_key_energy_home_guide_count"

    invoke-static {v4, v0}, Lcpk;->b(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1022
    .end local v0    # "count":I
    :catch_0
    move-exception v4

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "dt_energy_home_guide"

    aput-object v5, v4, v3

    const-string/jumbo v5, " parse "

    aput-object v5, v4, v2

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, " failed"

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Lfxo;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1027
    :cond_3
    const-string/jumbo v4, "dt_user"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "close_notification_setting_clicked"

    .line 1028
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1029
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1030
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1031
    .local v1, "isClicked":Z
    const-string/jumbo v3, "pref_key_close_notification_setting_clicked"

    invoke-static {v3, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1035
    .end local v1    # "isClicked":Z
    :cond_4
    const-string/jumbo v4, "dt_user"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "faceid"

    .line 1036
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1037
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1038
    const-string/jumbo v3, "pref_user_cloud_setting_face_login_key"

    invoke-static {v3, p2}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1042
    :cond_5
    const-string/jumbo v2, "dt_user"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "registerIdentity"

    .line 1043
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1044
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1045
    const-string/jumbo v2, "registerIdentity"

    .line 5150
    invoke-static {p2, v3}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v4

    .line 1045
    invoke-static {v2, v4}, Lcpk;->b(Ljava/lang/String;I)V

    :cond_6
    move v2, v3

    .line 1049
    goto/16 :goto_0
.end method

.method private static b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Ljava/lang/String;
    .locals 5
    .param p0, "userProfileExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 680
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    .line 681
    .local v0, "stateCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 682
    const-string/jumbo v0, "86"

    .line 687
    :cond_0
    :goto_0
    return-object v0

    .line 683
    :cond_1
    const-string/jumbo v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 684
    const-string/jumbo v1, "origin stateCode=%s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lfxo;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 685
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;
    .locals 12
    .param p0, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    const/4 v6, 0x0

    .line 941
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 942
    .local v0, "currentUserMainOrg":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_0

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gtz v7, :cond_2

    :cond_0
    move-object v3, v6

    .line 967
    :cond_1
    :goto_0
    return-object v3

    .line 946
    :cond_2
    if-eqz p0, :cond_3

    iget-object v7, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfoStr:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    move-object v3, v6

    .line 947
    goto :goto_0

    .line 951
    :cond_4
    const-wide/16 v4, 0x0

    .line 952
    .local v4, "mainOrgId":J
    const/4 v3, 0x0

    .line 954
    .local v3, "mainOrgDecoratedMedalMediaId":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfoStr:Ljava/lang/String;

    invoke-direct {v2, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 955
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v7, "mainOrgId"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 956
    const-string/jumbo v7, "mainOrgAvatarFrame"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 962
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v7, v8, v4

    if-eqz v7, :cond_1

    move-object v3, v6

    .line 963
    goto :goto_0

    .line 957
    :catch_0
    move-exception v1

    .line 958
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 699
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 700
    .local v0, "mainOrg":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-nez v0, :cond_0

    .line 703
    .end local p0    # "url":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "url":Ljava/lang/String;
    :cond_0
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {p0, v2, v3}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 798
    const-string/jumbo v1, "https://h5.dingtalk.com/medal/index.html?dd_nav_bgcolor=FFFF6A44#/index/%s/mine"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcoh;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 799
    .local v0, "url":Ljava/lang/String;
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "page"    # Ljava/lang/String;

    .prologue
    .line 1244
    const-string/jumbo v0, "2018111662233068"

    invoke-static {p0, p1, p2, v0}, Lflz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    return-void
.end method

.method public static b(Z)V
    .locals 2
    .param p0, "isThirdLoginWay"    # Z

    .prologue
    .line 447
    const-string/jumbo v0, "pref_key_is_third_login_way"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 448
    return-void
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 439
    const-string/jumbo v0, "pref_key_need_init_pwd"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b(J)Z
    .locals 2
    .param p0, "orgId"    # J

    .prologue
    .line 545
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(JZ)Z

    move-result v0

    return v0
.end method

.method public static c()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 456
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 457
    .local v0, "currentUser":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 467
    :goto_0
    return-object v1

    .line 461
    :cond_1
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 462
    .local v1, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_2

    iget-boolean v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->isMainOrg:Z

    if-eqz v4, :cond_2

    goto :goto_0

    .end local v1    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_3
    move-object v1, v2

    .line 467
    goto :goto_0
.end method

.method private static c(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;
    .locals 5
    .param p0, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    const/4 v4, 0x0

    .line 975
    if-nez p0, :cond_1

    .line 976
    const/4 v1, 0x0

    .line 998
    :cond_0
    :goto_0
    return-object v1

    .line 979
    :cond_1
    const/4 v1, 0x0

    .line 980
    .local v1, "medalMediaId":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extension:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 982
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extension:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 983
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "medalAvatarFrame"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 989
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfoStr:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 991
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfoStr:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 992
    .restart local v0    # "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "mainOrgAvatarFrame"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 985
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    const-string/jumbo v2, "parse extension failed"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lfxo;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 994
    :catch_1
    move-exception v2

    const-string/jumbo v2, "parse orgInfoStr failed"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lfxo;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 716
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 750
    .end local p0    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 720
    .restart local p0    # "url":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 721
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 722
    .local v0, "host":Ljava/lang/String;
    sget-object v5, Lcom/alibaba/android/user/contact/utils/UserUtils;->a:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 726
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 727
    .local v2, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v5, "h5.dingtalk.com"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "oa.dingtalk.com"

    .line 728
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 730
    :cond_2
    const-string/jumbo v5, "en"

    invoke-interface {v2, v6, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 737
    :cond_3
    :goto_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 738
    .local v3, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 739
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 740
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v1, v5, :cond_4

    .line 741
    const-string/jumbo v5, "/"

    invoke-virtual {v3, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 738
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 731
    .end local v1    # "index":I
    .end local v3    # "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_5
    const-string/jumbo v5, "tms.dingtalk.com"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v7, :cond_3

    const-string/jumbo v5, "markets"

    .line 732
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "dingtalk"

    const/4 v6, 0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 734
    const-string/jumbo v5, "en"

    invoke-interface {v2, v7, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 745
    .restart local v1    # "index":I
    .restart local v3    # "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_6
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    .line 746
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 747
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 748
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 749
    invoke-virtual {v4}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 750
    invoke-virtual {v4}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1003
    invoke-static {}, Lcms;->c()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {v4, p0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;ZZ)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v0, v3

    .line 1004
    .local v0, "showNameCard":Z
    :goto_0
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v4

    const-string/jumbo v5, "dt_function"

    const-string/jumbo v6, "name_card_recognize"

    invoke-virtual {v4, v5, v6}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1006
    .local v1, "value":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string/jumbo v4, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    return v3

    .end local v0    # "showNameCard":Z
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    move v0, v2

    .line 1003
    goto :goto_0

    .restart local v0    # "showNameCard":Z
    .restart local v1    # "value":Ljava/lang/String;
    :cond_2
    move v3, v2

    .line 1006
    goto :goto_1
.end method

.method public static c(Z)Z
    .locals 3
    .param p0, "includeHkMcTw"    # Z

    .prologue
    const/4 v1, 0x0

    .line 571
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 572
    .local v0, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_1

    .line 3521
    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Z)Z

    move-result v1

    .line 575
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, v1, p0}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Landroid/content/Context;ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 580
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c(Z)Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 3
    .param p0, "locale"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 759
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 763
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "zh"

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static d(Z)Z
    .locals 6
    .param p0, "includeHkMcTw"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 647
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 648
    .local v1, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-nez v1, :cond_1

    .line 649
    const-string/jumbo v3, "userProfileExtensionObject is null"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lfxo;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 659
    :cond_0
    :goto_0
    return v2

    .line 652
    :cond_1
    invoke-static {v1}, Lcom/alibaba/android/user/contact/utils/UserUtils;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, "stateCode":Ljava/lang/String;
    const-string/jumbo v4, "stateCode=%s"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Lfxo;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 655
    if-eqz p0, :cond_2

    const-string/jumbo v4, "86"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "852"

    .line 656
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "853"

    .line 657
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "886"

    .line 658
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "86"

    .line 659
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public static e()Z
    .locals 2

    .prologue
    .line 588
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 7
    .param p0, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 767
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 768
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 770
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 771
    const/4 v3, 0x1

    .line 777
    :goto_0
    return v3

    .line 772
    :catch_0
    move-exception v1

    .line 773
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "UserUtils"

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 775
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 776
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "UserUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static f()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 667
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 668
    .local v1, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-nez v1, :cond_0

    .line 669
    const-string/jumbo v3, "userProfileExtensionObject is null"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lfxo;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 675
    :goto_0
    return v2

    .line 672
    :cond_0
    invoke-static {v1}, Lcom/alibaba/android/user/contact/utils/UserUtils;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Ljava/lang/String;

    move-result-object v0

    .line 674
    .local v0, "stateCode":Ljava/lang/String;
    const-string/jumbo v3, "stateCode=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Lfxo;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 675
    const-string/jumbo v2, "84"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 2
    .param p0, "areaCode"    # Ljava/lang/String;

    .prologue
    .line 1118
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1119
    const/4 v0, 0x0

    .line 1124
    :goto_0
    return v0

    .line 1122
    :cond_0
    const-string/jumbo v0, "+"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1124
    sget-object v0, Lcom/alibaba/android/user/contact/utils/UserUtils;->b:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static g()Z
    .locals 1

    .prologue
    .line 695
    invoke-static {}, Lcms;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h()Z
    .locals 1

    .prologue
    .line 754
    invoke-static {}, Lcms;->k()Z

    move-result v0

    return v0
.end method

.method public static i()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 782
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 783
    .local v0, "mainOrg":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_0

    .line 4580
    invoke-static {v1}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c(Z)Z

    move-result v2

    .line 783
    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static j()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1099
    invoke-static {}, Lcms;->k()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcms;->h()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v5

    const-string/jumbo v6, "contact"

    const-string/jumbo v7, "z_under_english_enable"

    invoke-virtual {v5, v6, v7, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v0, v4

    .line 1101
    .local v0, "languageAllow":Z
    :goto_0
    if-nez v0, :cond_3

    .line 1109
    :cond_1
    :goto_1
    return v3

    .end local v0    # "languageAllow":Z
    :cond_2
    move v0, v3

    .line 1099
    goto :goto_0

    .line 1105
    .restart local v0    # "languageAllow":Z
    :cond_3
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v5

    const-string/jumbo v6, "f_user_z_project"

    .line 1106
    invoke-virtual {v5, v6, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 1107
    .local v2, "uidSwitch":Z
    invoke-static {}, Lfvv;->a()Lfvv;

    move-result-object v5

    const-string/jumbo v6, "contact_connection"

    .line 5217
    invoke-virtual {v5, v6, v3, v3}, Lfvv;->a(Ljava/lang/String;ZZ)Z

    move-result v1

    .line 1109
    .local v1, "orgIdSwitch":Z
    if-nez v2, :cond_4

    if-eqz v1, :cond_1

    :cond_4
    move v3, v4

    goto :goto_1
.end method

.method public static k()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1138
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_contact_employee_recommend_enable"

    .line 6083
    invoke-virtual {v2, v3, v1}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 1138
    if-nez v2, :cond_1

    .line 1151
    :cond_0
    :goto_0
    return v0

    .line 1142
    :cond_1
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->g()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1146
    invoke-static {v1}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1150
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v2

    sget v3, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e:I

    if-eq v2, v3, :cond_2

    .line 1151
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    const-string/jumbo v3, "contact"

    const-string/jumbo v4, "employees_recommend"

    invoke-virtual {v2, v3, v4, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static l()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1261
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 1262
    .local v1, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 1263
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1264
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_0

    .line 1267
    iget-boolean v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->isMainOrg:Z

    if-eqz v3, :cond_0

    .line 1268
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    .line 1272
    .end local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static m()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1276
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 1277
    .local v1, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 1278
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1279
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_0

    .line 1282
    iget-boolean v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->isMainOrg:Z

    if-eqz v3, :cond_0

    .line 1283
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgTitle:Ljava/lang/String;

    .line 1287
    .end local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static n()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1294
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v5, v4}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Landroid/content/Context;ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1321
    .local v8, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :goto_0
    return v5

    .line 1299
    .end local v8    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_0
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v8

    .line 1301
    .restart local v8    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-nez v8, :cond_1

    move v5, v4

    .line 1303
    goto :goto_0

    .line 1306
    :cond_1
    const/4 v7, 0x1

    .line 1308
    .local v7, "result":Z
    iget-object v0, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1309
    .local v6, "employeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v6, :cond_2

    .line 1313
    invoke-static {}, Lfvv;->a()Lfvv;

    move-result-object v0

    const-string/jumbo v1, "new_setting_items"

    iget-wide v2, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-virtual/range {v0 .. v5}, Lfvv;->a(Ljava/lang/String;JZZ)Z

    move-result v7

    .line 1315
    if-nez v7, :cond_2

    .end local v6    # "employeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_3
    move v5, v7

    .line 1321
    goto :goto_0
.end method
