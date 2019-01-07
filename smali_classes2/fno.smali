.class public final Lfno;
.super Ljava/lang/Object;
.source "ExternalEditContractPresenter.java"

# interfaces
.implements Lcom/alibaba/android/user/external/ExternalEditContract$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfno$a;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

.field b:Lcom/alibaba/android/user/external/ExternalEditContract$c;

.field c:Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

.field private d:J

.field private e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;JLcom/alibaba/android/user/external/ExternalEditContract$c;)V
    .locals 2
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "orgId"    # J
    .param p4, "view"    # Lcom/alibaba/android/user/external/ExternalEditContract$c;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p2, p0, Lfno;->d:J

    .line 43
    iput-object p1, p0, Lfno;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 44
    iput-object p4, p0, Lfno;->b:Lcom/alibaba/android/user/external/ExternalEditContract$c;

    .line 45
    iget-object v0, p0, Lfno;->b:Lcom/alibaba/android/user/external/ExternalEditContract$c;

    invoke-interface {v0, p0}, Lcom/alibaba/android/user/external/ExternalEditContract$c;->setPresenter(Lcjd;)V

    .line 46
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 58
    iget-wide v2, p0, Lfno;->d:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 110
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v1, p0, Lfno;->b:Lcom/alibaba/android/user/external/ExternalEditContract$c;

    invoke-interface {v1}, Lcom/alibaba/android/user/external/ExternalEditContract$c;->b()V

    .line 63
    new-instance v0, Lfno$1;

    invoke-direct {v0, p0}, Lfno$1;-><init>(Lfno;)V

    .line 106
    .local v0, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/ExtContactFieldsObject;>;"
    iget-object v1, p0, Lfno;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    iget-object v3, p0, Lfno;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/ExtContactFieldsObject;>;"
    check-cast v0, Lcma;

    .line 109
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/ExtContactFieldsObject;>;"
    :cond_1
    invoke-static {}, Lfao;->a()Lezu;

    move-result-object v1

    iget-wide v2, p0, Lfno;->d:J

    invoke-interface {v1, v2, v3, v0}, Lezu;->c(JLcma;)V

    goto :goto_0
.end method

.method public final a(ILcom/alibaba/android/user/model/OrgExtFieldObject;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "fieldObject"    # Lcom/alibaba/android/user/model/OrgExtFieldObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 287
    iget-object v1, p0, Lfno;->b:Lcom/alibaba/android/user/external/ExternalEditContract$c;

    invoke-interface {v1}, Lcom/alibaba/android/user/external/ExternalEditContract$c;->b()V

    .line 288
    new-instance v0, Lfno$3;

    invoke-direct {v0, p0}, Lfno$3;-><init>(Lfno;)V

    .line 310
    .local v0, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgExtFieldObject;>;"
    iget-object v1, p0, Lfno;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    iget-object v3, p0, Lfno;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgExtFieldObject;>;"
    check-cast v0, Lcma;

    .line 314
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgExtFieldObject;>;"
    :cond_0
    invoke-static {}, Lfaw;->a()Lfaw;

    move-result-object v1

    const/4 v2, 0x2

    .line 2040
    if-nez p2, :cond_2

    .line 2041
    if-eqz v0, :cond_1

    .line 2042
    const-string/jumbo v1, "err_parameter"

    const-string/jumbo v2, "fieldObject invalid"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2044
    :cond_1
    :goto_0
    return-void

    .line 2047
    :cond_2
    new-instance v3, Lfaw$1;

    invoke-direct {v3, v1, v0}, Lfaw$1;-><init>(Lfaw;Lcma;)V

    .line 2054
    const-class v1, Lcom/alibaba/android/user/idl/services/OrgExtFieldIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/OrgExtFieldIService;

    .line 2055
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Lcom/alibaba/android/user/model/OrgExtFieldObject;->toIdlModel()Lfph;

    move-result-object v4

    invoke-interface {v1, v2, v4, v3}, Lcom/alibaba/android/user/idl/services/OrgExtFieldIService;->addOrgExtField(Ljava/lang/Integer;Lfph;Liyv;)V

    goto :goto_0
.end method

.method public final a(J)V
    .locals 9
    .param p1, "id"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 251
    iget-wide v2, p0, Lfno;->d:J

    cmp-long v1, v2, v6

    if-gtz v1, :cond_1

    .line 1098
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v1, p0, Lfno;->b:Lcom/alibaba/android/user/external/ExternalEditContract$c;

    invoke-interface {v1}, Lcom/alibaba/android/user/external/ExternalEditContract$c;->b()V

    .line 256
    new-instance v0, Lfno$2;

    invoke-direct {v0, p0, p1, p2}, Lfno$2;-><init>(Lfno;J)V

    .line 279
    .local v0, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iget-object v1, p0, Lfno;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 280
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    iget-object v3, p0, Lfno;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    check-cast v0, Lcma;

    .line 282
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    :cond_2
    invoke-static {}, Lfaw;->a()Lfaw;

    move-result-object v1

    iget-wide v2, p0, Lfno;->d:J

    .line 1087
    cmp-long v4, v2, v6

    if-gtz v4, :cond_3

    .line 1088
    if-eqz v0, :cond_0

    .line 1089
    const-string/jumbo v1, "err_parameter"

    const-string/jumbo v2, "orgId invalid"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1094
    :cond_3
    cmp-long v4, p1, v6

    if-gtz v4, :cond_4

    .line 1095
    if-eqz v0, :cond_0

    .line 1096
    const-string/jumbo v1, "err_parameter"

    const-string/jumbo v2, "id invalid"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1101
    :cond_4
    new-instance v4, Lfaw$3;

    invoke-direct {v4, v1, v0}, Lfaw$3;-><init>(Lfaw;Lcma;)V

    .line 1108
    const-class v1, Lcom/alibaba/android/user/idl/services/OrgExtFieldIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/OrgExtFieldIService;

    .line 1109
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/android/user/idl/services/OrgExtFieldIService;->removeOrgExtField(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Z)Z
    .locals 16
    .param p1, "employeeExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .param p2, "showErrorToast"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 114
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lfno;->a:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lfno;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v7}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 115
    :cond_0
    const/4 v7, 0x1

    .line 227
    :goto_0
    return v7

    .line 117
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v3, "fields":Ljava/util/List;, "Ljava/util/List<Lfno$a;>;"
    new-instance v7, Lfno$a;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfno;->a:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v8, v8, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->nameField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lfno;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v11, Lezg$l;->dt_external_input_name_placeholder:I

    .line 119
    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lfno$a;-><init>(Lcom/alibaba/android/user/model/OrgExtFieldObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    move-object/from16 v0, p0

    iget-object v7, v0, Lfno;->a:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v7, v7, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->mobileField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    if-eqz v7, :cond_2

    .line 121
    new-instance v7, Lfno$a;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfno;->a:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v8, v8, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->mobileField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lfno;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v11, Lezg$l;->dt_external_input_mobile_placeholder:I

    .line 122
    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lfno;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v12, Lezg$l;->dt_external_field_format_error_tip:I

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lfno;->a:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v15, v15, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->mobileField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-object v15, v15, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    aput-object v15, v13, v14

    .line 123
    invoke-virtual {v11, v12, v13}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Lfno$a;-><init>(Lcom/alibaba/android/user/model/OrgExtFieldObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lfno;->a:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v7, v7, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->companyField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    if-eqz v7, :cond_3

    .line 128
    new-instance v7, Lfno$a;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfno;->a:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v8, v8, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->companyField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->companyName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lfno;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v11, Lezg$l;->dt_external_input_required_field_tip:I

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lfno;->a:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v14, v14, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->companyField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-object v14, v14, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    aput-object v14, v12, v13

    .line 129
    invoke-virtual {v10, v11, v12}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lfno;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v12, Lezg$l;->dt_external_field_format_error_tip:I

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lfno;->a:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v15, v15, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->companyField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-object v15, v15, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    aput-object v15, v13, v14

    .line 130
    invoke-virtual {v11, v12, v13}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Lfno$a;-><init>(Lcom/alibaba/android/user/model/OrgExtFieldObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lfno;->a:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v7, v7, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->titleField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    if-eqz v7, :cond_4

    .line 135
    new-instance v7, Lfno$a;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfno;->a:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v8, v8, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->titleField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lfno;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v11, Lezg$l;->dt_external_input_required_field_tip:I

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lfno;->a:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v14, v14, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->titleField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-object v14, v14, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    aput-object v14, v12, v13

    .line 136
    invoke-virtual {v10, v11, v12}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lfno;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v12, Lezg$l;->dt_external_field_format_error_tip:I

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lfno;->a:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v15, v15, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->titleField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-object v15, v15, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    aput-object v15, v13, v14

    .line 137
    invoke-virtual {v11, v12, v13}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Lfno$a;-><init>(Lcom/alibaba/android/user/model/OrgExtFieldObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lfno;->a:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v7, v7, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->workstationField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    if-eqz v7, :cond_5

    .line 142
    new-instance v7, Lfno$a;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfno;->a:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v8, v8, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->workstationField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgWorkAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lfno;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v11, Lezg$l;->dt_external_input_required_field_tip:I

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lfno;->a:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v14, v14, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->workstationField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-object v14, v14, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    aput-object v14, v12, v13

    .line 143
    invoke-virtual {v10, v11, v12}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lfno;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v12, Lezg$l;->dt_external_field_format_error_tip:I

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lfno;->a:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v15, v15, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->workstationField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-object v15, v15, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    aput-object v15, v13, v14

    .line 144
    invoke-virtual {v11, v12, v13}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Lfno$a;-><init>(Lcom/alibaba/android/user/model/OrgExtFieldObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lfno;->a:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v7, v7, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->mailField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    if-eqz v7, :cond_6

    .line 149
    new-instance v7, Lfno$a;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfno;->a:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v8, v8, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->mailField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgEmail:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lfno;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v11, Lezg$l;->dt_external_input_required_field_tip:I

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lfno;->a:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v14, v14, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->mailField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-object v14, v14, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    aput-object v14, v12, v13

    .line 150
    invoke-virtual {v10, v11, v12}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lfno;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v12, Lezg$l;->dt_external_field_format_error_tip:I

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lfno;->a:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v15, v15, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->mailField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-object v15, v15, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    aput-object v15, v13, v14

    .line 151
    invoke-virtual {v11, v12, v13}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Lfno$a;-><init>(Lcom/alibaba/android/user/model/OrgExtFieldObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lfno;->a:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v7, v7, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->remarkField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    if-eqz v7, :cond_7

    .line 156
    new-instance v7, Lfno$a;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfno;->a:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v8, v8, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->remarkField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->remark:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lfno;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v11, Lezg$l;->dt_external_input_required_field_tip:I

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lfno;->a:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v14, v14, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->remarkField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-object v14, v14, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    aput-object v14, v12, v13

    .line 157
    invoke-virtual {v10, v11, v12}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lfno;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v12, Lezg$l;->dt_external_field_format_error_tip:I

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lfno;->a:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v15, v15, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->remarkField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-object v15, v15, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    aput-object v15, v13, v14

    .line 158
    invoke-virtual {v11, v12, v13}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Lfno$a;-><init>(Lcom/alibaba/android/user/model/OrgExtFieldObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfno$a;

    .line 164
    .local v2, "field":Lfno$a;
    iget-object v8, v2, Lfno$a;->a:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    if-eqz v8, :cond_8

    .line 165
    iget-object v8, v2, Lfno$a;->a:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-boolean v8, v8, Lcom/alibaba/android/user/model/OrgExtFieldObject;->required:Z

    if-eqz v8, :cond_a

    iget-object v8, v2, Lfno$a;->b:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 166
    if-eqz p2, :cond_9

    iget-object v7, v2, Lfno$a;->c:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 167
    iget-object v7, v2, Lfno$a;->c:Ljava/lang/String;

    invoke-static {v7}, Lcms;->a(Ljava/lang/String;)V

    .line 169
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 172
    :cond_a
    iget-object v8, v2, Lfno$a;->a:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-object v8, v8, Lcom/alibaba/android/user/model/OrgExtFieldObject;->format:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, v2, Lfno$a;->b:Ljava/lang/String;

    .line 173
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, v2, Lfno$a;->a:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-object v8, v8, Lcom/alibaba/android/user/model/OrgExtFieldObject;->format:Ljava/lang/String;

    .line 174
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    iget-object v9, v2, Lfno$a;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_8

    .line 175
    iget-object v7, v2, Lfno$a;->d:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 176
    iget-object v7, v2, Lfno$a;->d:Ljava/lang/String;

    invoke-static {v7}, Lcms;->a(Ljava/lang/String;)V

    .line 178
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 183
    .end local v2    # "field":Lfno$a;
    :cond_c
    move-object/from16 v0, p0

    iget-object v7, v0, Lfno;->a:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    iget-object v7, v7, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->extFields:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/model/OrgExtFieldObject;

    .line 184
    .local v1, "extField":Lcom/alibaba/android/user/model/OrgExtFieldObject;
    if-eqz v1, :cond_d

    .line 188
    iget-boolean v8, v1, Lcom/alibaba/android/user/model/OrgExtFieldObject;->required:Z

    if-eqz v8, :cond_f

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    if-nez v8, :cond_f

    .line 189
    if-eqz p2, :cond_e

    .line 190
    move-object/from16 v0, p0

    iget-object v7, v0, Lfno;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v8, Lezg$l;->dt_external_input_required_field_tip:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v1, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcms;->a(Ljava/lang/String;)V

    .line 192
    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 195
    :cond_f
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    if-eqz v8, :cond_d

    .line 196
    const/4 v6, 0x0

    .line 197
    .local v6, "requiredProp":Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;
    const/4 v4, 0x0

    .line 198
    .local v4, "formatErrorProp":Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;

    .line 199
    .local v5, "orgExtPropertyObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;
    iget-boolean v9, v1, Lcom/alibaba/android/user/model/OrgExtFieldObject;->required:Z

    if-eqz v9, :cond_11

    if-eqz v5, :cond_11

    iget-object v9, v1, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    iget-object v10, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemName:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_11

    iget-object v9, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemValue:Ljava/lang/String;

    .line 200
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 201
    move-object v6, v5

    .line 204
    :cond_11
    iget-object v9, v1, Lcom/alibaba/android/user/model/OrgExtFieldObject;->format:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_10

    if-eqz v5, :cond_10

    iget-object v9, v1, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    iget-object v10, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemName:Ljava/lang/String;

    .line 205
    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_10

    iget-object v9, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemValue:Ljava/lang/String;

    .line 206
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_10

    iget-object v9, v1, Lcom/alibaba/android/user/model/OrgExtFieldObject;->format:Ljava/lang/String;

    .line 207
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    iget-object v10, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_10

    .line 208
    move-object v4, v5

    .line 213
    .end local v5    # "orgExtPropertyObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;
    :cond_12
    iget-boolean v8, v1, Lcom/alibaba/android/user/model/OrgExtFieldObject;->required:Z

    if-eqz v8, :cond_14

    if-nez v6, :cond_14

    .line 214
    if-eqz p2, :cond_13

    .line 215
    move-object/from16 v0, p0

    iget-object v7, v0, Lfno;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v8, Lezg$l;->dt_external_input_required_field_tip:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v1, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcms;->a(Ljava/lang/String;)V

    .line 217
    :cond_13
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 218
    :cond_14
    if-eqz v4, :cond_d

    .line 219
    if-eqz p2, :cond_15

    .line 220
    move-object/from16 v0, p0

    iget-object v7, v0, Lfno;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v8, Lezg$l;->dt_external_field_format_error_tip:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, v1, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcms;->a(Ljava/lang/String;)V

    .line 222
    :cond_15
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 227
    .end local v1    # "extField":Lcom/alibaba/android/user/model/OrgExtFieldObject;
    .end local v4    # "formatErrorProp":Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;
    .end local v6    # "requiredProp":Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;
    :cond_16
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method public final a(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/external/ExternalEditContract$a;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 232
    .local p1, "employeeExtensionObject":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/external/ExternalEditContract$a;>;"
    const/4 v1, 0x1

    .line 233
    .local v1, "verified":Z
    if-nez p1, :cond_0

    .line 234
    const/4 v2, 0x1

    .line 246
    :goto_0
    return v2

    .line 237
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/external/ExternalEditContract$a;

    .line 238
    .local v0, "orgEmployeeExtensionObjectWrapper":Lcom/alibaba/android/user/external/ExternalEditContract$a;
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/alibaba/android/user/external/ExternalEditContract$a;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v3, :cond_1

    .line 242
    iget-object v3, v0, Lcom/alibaba/android/user/external/ExternalEditContract$a;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lfno;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/alibaba/android/user/external/ExternalEditContract$a;->b:Z

    .line 243
    iget-boolean v3, v0, Lcom/alibaba/android/user/external/ExternalEditContract$a;->b:Z

    and-int/2addr v1, v3

    .line 244
    goto :goto_1

    .end local v0    # "orgEmployeeExtensionObjectWrapper":Lcom/alibaba/android/user/external/ExternalEditContract$a;
    :cond_2
    move v2, v1

    .line 246
    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 351
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 352
    .local v0, "extensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-nez v3, :cond_2

    .line 353
    :cond_0
    const/4 v2, 0x0

    .line 363
    :cond_1
    return-object v2

    .line 356
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v2, "validExtOrgs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 358
    .local v1, "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_3

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    iget-boolean v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->closeExtContact:Z

    if-nez v4, :cond_3

    .line 360
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final b(ILcom/alibaba/android/user/model/OrgExtFieldObject;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "fieldObject"    # Lcom/alibaba/android/user/model/OrgExtFieldObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 319
    iget-object v1, p0, Lfno;->b:Lcom/alibaba/android/user/external/ExternalEditContract$c;

    invoke-interface {v1}, Lcom/alibaba/android/user/external/ExternalEditContract$c;->b()V

    .line 320
    new-instance v0, Lfno$4;

    invoke-direct {v0, p0}, Lfno$4;-><init>(Lfno;)V

    .line 342
    .local v0, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgExtFieldObject;>;"
    iget-object v1, p0, Lfno;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    iget-object v3, p0, Lfno;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgExtFieldObject;>;"
    check-cast v0, Lcma;

    .line 346
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgExtFieldObject;>;"
    :cond_0
    invoke-static {}, Lfaw;->a()Lfaw;

    move-result-object v1

    const/4 v2, 0x2

    .line 2067
    if-nez p2, :cond_2

    .line 2068
    if-eqz v0, :cond_1

    .line 2069
    const-string/jumbo v1, "err_parameter"

    const-string/jumbo v2, "fieldObject invalid"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    :cond_1
    :goto_0
    return-void

    .line 2074
    :cond_2
    new-instance v3, Lfaw$2;

    invoke-direct {v3, v1, v0}, Lfaw$2;-><init>(Lfaw;Lcma;)V

    .line 2081
    const-class v1, Lcom/alibaba/android/user/idl/services/OrgExtFieldIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/OrgExtFieldIService;

    .line 2082
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Lcom/alibaba/android/user/model/OrgExtFieldObject;->toIdlModel()Lfph;

    move-result-object v4

    invoke-interface {v1, v2, v4, v3}, Lcom/alibaba/android/user/idl/services/OrgExtFieldIService;->updateOrgExtField(Ljava/lang/Integer;Lfph;Liyv;)V

    goto :goto_0
.end method

.method public final b(J)V
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 368
    iput-wide p1, p0, Lfno;->d:J

    .line 369
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 374
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 379
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 384
    return-void
.end method
