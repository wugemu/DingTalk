.class public Lffu;
.super Ljava/lang/Object;
.source "OrgEmployeeInfoPresenter.java"

# interfaces
.implements Lfft$b;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field public a:Lfft$a;

.field public b:J

.field private d:I

.field private e:Landroid/content/BroadcastReceiver;

.field private f:Landroid/app/Activity;

.field private g:Lflx;

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lfrq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lffu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lffu;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/app/Activity;)V
    .locals 3
    .param p1, "fromFlag"    # I
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lffu;->d:I

    .line 75
    iput p1, p0, Lffu;->d:I

    .line 76
    iput-object p2, p0, Lffu;->f:Landroid/app/Activity;

    .line 77
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 78
    new-instance v0, Lflx;

    invoke-direct {v0}, Lflx;-><init>()V

    iput-object v0, p0, Lffu;->g:Lflx;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lffu;->h:Ljava/util/HashMap;

    .line 1086
    :cond_0
    new-instance v0, Lffu$1;

    invoke-direct {v0, p0}, Lffu$1;-><init>(Lffu;)V

    iput-object v0, p0, Lffu;->e:Landroid/content/BroadcastReceiver;

    .line 1102
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1103
    const-string/jumbo v1, "com.workapp.org_employee_change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1104
    const-string/jumbo v1, "com.workapp.org.sync"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1106
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lffu;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 83
    return-void
.end method

.method static synthetic a(Lffu;)Lfft$a;
    .locals 1
    .param p0, "x0"    # Lffu;

    .prologue
    .line 59
    iget-object v0, p0, Lffu;->a:Lfft$a;

    return-object v0
.end method

.method static synthetic b(Lffu;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lffu;

    .prologue
    .line 59
    iget-object v0, p0, Lffu;->f:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lffu;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lffu;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lffu;

    .prologue
    .line 59
    iget-object v0, p0, Lffu;->h:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v2, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 114
    iget v0, p0, Lffu;->d:I

    if-eq v0, v13, :cond_1

    .line 1258
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 1260
    sget-object v1, Lffu;->c:Ljava/lang/String;

    const-string/jumbo v3, "initOrgHomePage"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lfxo;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1261
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1262
    :cond_0
    sget-object v0, Lffu;->c:Ljava/lang/String;

    const-string/jumbo v1, "User or orgEmployees is null or empty"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2179
    :cond_1
    :goto_0
    return-void

    .line 1267
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1268
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v2

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1270
    if-nez v0, :cond_4

    .line 1271
    sget-object v0, Lffu;->c:Ljava/lang/String;

    const-string/jumbo v3, "orgObject is null"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0, v3, v6}, Lfxo;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1275
    :cond_4
    iget-object v3, p0, Lffu;->a:Lfft$a;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lffu;->a:Lfft$a;

    invoke-interface {v3, v0}, Lfft$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1279
    :cond_5
    iget v3, p0, Lffu;->d:I

    if-eq v3, v13, :cond_10

    .line 1280
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-nez v3, :cond_6

    const-string/jumbo v3, "CN"

    .line 1281
    :goto_2
    iget v6, p0, Lffu;->d:I

    if-ne v6, v12, :cond_7

    .line 1282
    new-instance v6, Lfoi;

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v6, v0, v3}, Lfoi;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1280
    :cond_6
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->getNation()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1283
    :cond_7
    iget v6, p0, Lffu;->d:I

    if-ne v6, v11, :cond_10

    .line 1284
    iget-boolean v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->isMainOrg:Z

    if-eqz v6, :cond_10

    .line 1285
    new-instance v1, Lfoi;

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lfoi;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    move-object v0, v1

    :goto_3
    move-object v1, v0

    .line 1289
    goto :goto_1

    .line 1291
    :cond_8
    iget v0, p0, Lffu;->d:I

    if-ne v0, v12, :cond_c

    .line 1292
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1296
    new-instance v0, Lffu$2;

    invoke-direct {v0, p0}, Lffu$2;-><init>(Lffu;)V

    .line 1329
    iget-object v1, p0, Lffu;->g:Lflx;

    iget-object v3, p0, Lffu;->f:Landroid/app/Activity;

    .line 2061
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {v3}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 2063
    :cond_9
    const-string/jumbo v1, "orgIds.isEmpty or activity is not active"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2068
    :cond_a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/16 v5, 0x1e

    if-gt v2, v5, :cond_b

    .line 2069
    new-instance v2, Lflx$2;

    invoke-direct {v2, v1, v3, v0}, Lflx$2;-><init>(Lflx;Landroid/app/Activity;Lcma;)V

    .line 2098
    const-class v0, Lcma;

    invoke-static {v2, v0, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2099
    invoke-static {}, Lfai;->a()Lezs;

    move-result-object v1

    invoke-interface {v1, v4, v0}, Lezs;->a(Ljava/util/List;Lcma;)V

    goto/16 :goto_0

    .line 2101
    :cond_b
    iput v10, v1, Lflx;->c:I

    .line 2102
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lflx;->g:Ljava/util/List;

    .line 2103
    iput-object v4, v1, Lflx;->d:Ljava/util/List;

    .line 2104
    iput-object v3, v1, Lflx;->e:Landroid/app/Activity;

    .line 2105
    iput-object v0, v1, Lflx;->f:Lcma;

    .line 2106
    iget-object v0, v1, Lflx;->b:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1331
    :cond_c
    iget v0, p0, Lffu;->d:I

    if-ne v0, v11, :cond_1

    .line 1332
    if-eqz v1, :cond_1

    .line 1336
    new-instance v0, Lffu$3;

    invoke-direct {v0, p0}, Lffu$3;-><init>(Lffu;)V

    .line 1365
    iget-object v3, p0, Lffu;->f:Landroid/app/Activity;

    .line 2168
    if-eqz v1, :cond_d

    invoke-static {v3}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 2170
    :cond_d
    const-string/jumbo v1, "orgModel is null or activity is not active"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2175
    :cond_e
    sget-object v2, Lflx;->a:Lfrq;

    if-eqz v2, :cond_f

    .line 2177
    sget-object v1, Lflx;->a:Lfrq;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2182
    :cond_f
    new-instance v2, Lflx$4;

    invoke-direct {v2, v3, v0}, Lflx$4;-><init>(Landroid/app/Activity;Lcma;)V

    .line 2212
    const-class v0, Lcma;

    invoke-static {v2, v0, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2213
    invoke-static {}, Lfai;->a()Lezs;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lezs;->a(Lfoi;Lcma;)V

    goto/16 :goto_0

    :cond_10
    move-object v0, v1

    goto/16 :goto_3
.end method

.method public final b()Ljava/util/List;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/homepage/Composite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v24

    .line 123
    .local v24, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    sget-object v25, Lffu;->c:Ljava/lang/String;

    const-string/jumbo v26, "parseOrgComposites"

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-static/range {v25 .. v27}, Lfxo;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    if-eqz v24, :cond_0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_2

    .line 125
    :cond_0
    sget-object v25, Lffu;->c:Ljava/lang/String;

    const-string/jumbo v26, "User or orgEmployees is null or empty"

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-static/range {v25 .. v27}, Lfxo;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    const/4 v5, 0x0

    .line 254
    :cond_1
    return-object v5

    .line 129
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v5, "composites":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/contact/homepage/Composite;>;"
    sget-object v25, Lffu;->c:Ljava/lang/String;

    const-string/jumbo v26, "org size:%d"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v25 .. v27}, Lfxo;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_3
    :goto_0
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 133
    .local v20, "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-nez v20, :cond_4

    .line 134
    sget-object v25, Lffu;->c:Ljava/lang/String;

    const-string/jumbo v27, "orgObject is null"

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lfxo;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 138
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lffu;->a:Lfft$a;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lffu;->a:Lfft$a;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lfft$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Z

    move-result v25

    if-nez v25, :cond_3

    .line 142
    :cond_5
    new-instance v7, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    .line 143
    .local v7, "group":Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->isMainOrg:Z

    move/from16 v25, v0

    if-eqz v25, :cond_9

    .line 144
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v5, v0, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 145
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lffu;->b:J

    .line 150
    :goto_1
    new-instance v21, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    .line 151
    .local v21, "rootItem":Lcom/alibaba/android/user/contact/homepage/DepartmentItem;
    move-object/from16 v0, p0

    iget v0, v0, Lffu;->d:I

    move/from16 v25, v0

    const/16 v27, 0x3

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    .line 152
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcid;->c()Landroid/app/Application;

    move-result-object v25

    sget v27, Lezg$l;->dt_contact_picker_byOrgRelation:I

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->setName(Ljava/lang/String;)V

    .line 156
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lffu;->d:I

    move/from16 v25, v0

    const/16 v27, 0x2

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    sget-object v25, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->COMMON:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    :goto_3
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->setIconInfo(Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;)V

    .line 157
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->addChild(Lcom/alibaba/android/user/contact/homepage/Component;)V

    .line 160
    move-object/from16 v0, p0

    iget v0, v0, Lffu;->d:I

    move/from16 v25, v0

    const/16 v27, 0x3

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x5209

    cmp-long v25, v28, v30

    if-eqz v25, :cond_7

    .line 161
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-object/from16 v25, v0

    if-eqz v25, :cond_6

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    move-object/from16 v25, v0

    if-eqz v25, :cond_6

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->hideLabelBanner:Z

    move/from16 v25, v0

    if-nez v25, :cond_7

    .line 165
    :cond_6
    new-instance v22, Lcom/alibaba/android/user/contact/homepage/ShowByLabelItem;

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/contact/homepage/ShowByLabelItem;-><init>(J)V

    .line 166
    .local v22, "showByLabelItem":Lcom/alibaba/android/user/contact/homepage/ShowByLabelItem;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/homepage/ShowByLabelItem;->setOrgName(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcid;->c()Landroid/app/Application;

    move-result-object v25

    sget v27, Lezg$l;->dt_contact_picker_byOrgRole:I

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/homepage/ShowByLabelItem;->setName(Ljava/lang/String;)V

    .line 168
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->addChild(Lcom/alibaba/android/user/contact/homepage/Component;)V

    .line 172
    .end local v22    # "showByLabelItem":Lcom/alibaba/android/user/contact/homepage/ShowByLabelItem;
    :cond_7
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    move-object/from16 v25, v0

    if-eqz v25, :cond_10

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    if-lez v25, :cond_10

    .line 173
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    move-object/from16 v25, v0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-object/from16 v0, v25

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    .line 174
    .local v15, "nodeType":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;
    sget-object v25, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    move-object/from16 v0, v25

    if-ne v15, v0, :cond_d

    .line 175
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_8
    :goto_4
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_10

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 176
    .local v19, "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-eqz v19, :cond_8

    .line 179
    new-instance v6, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v6, v0, v1}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    .line 180
    .local v6, "departmentItem":Lcom/alibaba/android/user/contact/homepage/DepartmentItem;
    move-object/from16 v0, p0

    iget v0, v0, Lffu;->d:I

    move/from16 v25, v0

    const/16 v28, 0x2

    move/from16 v0, v25

    move/from16 v1, v28

    if-ne v0, v1, :cond_c

    sget-object v25, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->COMMON:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    :goto_5
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->setIconInfo(Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;)V

    .line 181
    invoke-virtual {v7, v6}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->addChild(Lcom/alibaba/android/user/contact/homepage/Component;)V

    .line 182
    sget-object v25, Lffu;->c:Ljava/lang/String;

    const-string/jumbo v28, "dept cell"

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lfxo;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 147
    .end local v6    # "departmentItem":Lcom/alibaba/android/user/contact/homepage/DepartmentItem;
    .end local v15    # "nodeType":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;
    .end local v19    # "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .end local v21    # "rootItem":Lcom/alibaba/android/user/contact/homepage/DepartmentItem;
    :cond_9
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 154
    .restart local v21    # "rootItem":Lcom/alibaba/android/user/contact/homepage/DepartmentItem;
    :cond_a
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcid;->c()Landroid/app/Application;

    move-result-object v25

    sget v27, Lezg$l;->home_contact_my_org:I

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->setName(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 156
    :cond_b
    sget-object v25, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->ORG:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    goto/16 :goto_3

    .line 180
    .restart local v6    # "departmentItem":Lcom/alibaba/android/user/contact/homepage/DepartmentItem;
    .restart local v15    # "nodeType":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;
    .restart local v19    # "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_c
    sget-object v25, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->DEPT:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    goto :goto_5

    .line 184
    .end local v6    # "departmentItem":Lcom/alibaba/android/user/contact/homepage/DepartmentItem;
    .end local v19    # "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_d
    sget-object v25, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    move-object/from16 v0, v25

    if-ne v15, v0, :cond_10

    .line 185
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    move-object/from16 v25, v0

    if-eqz v25, :cond_10

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_10

    .line 186
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_6
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v9, v0, :cond_10

    .line 187
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 188
    .local v16, "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 189
    .restart local v19    # "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-eqz v16, :cond_e

    if-eqz v19, :cond_e

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_e

    .line 192
    new-instance v6, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-direct {v6, v0, v1, v2}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;)V

    .line 193
    .restart local v6    # "departmentItem":Lcom/alibaba/android/user/contact/homepage/DepartmentItem;
    move-object/from16 v0, p0

    iget v0, v0, Lffu;->d:I

    move/from16 v25, v0

    const/16 v27, 0x2

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_f

    sget-object v25, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->COMMON:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    :goto_7
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->setIconInfo(Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;)V

    .line 194
    invoke-virtual {v7, v6}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->addChild(Lcom/alibaba/android/user/contact/homepage/Component;)V

    .line 195
    sget-object v25, Lffu;->c:Ljava/lang/String;

    const-string/jumbo v27, "alibaba dept cell"

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lfxo;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    .end local v6    # "departmentItem":Lcom/alibaba/android/user/contact/homepage/DepartmentItem;
    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 193
    .restart local v6    # "departmentItem":Lcom/alibaba/android/user/contact/homepage/DepartmentItem;
    :cond_f
    sget-object v25, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->EMPLOYEE:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    goto :goto_7

    .line 202
    .end local v6    # "departmentItem":Lcom/alibaba/android/user/contact/homepage/DepartmentItem;
    .end local v9    # "i":I
    .end local v15    # "nodeType":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;
    .end local v16    # "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    .end local v19    # "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_10
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Lfxk;->a(J)Z

    move-result v25

    if-eqz v25, :cond_11

    .line 203
    new-instance v4, Lcom/alibaba/android/user/contact/homepage/AlphaDeviceItem;

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-direct {v4, v0, v1}, Lcom/alibaba/android/user/contact/homepage/AlphaDeviceItem;-><init>(J)V

    .line 204
    .local v4, "alphaDeviceItem":Lcom/alibaba/android/user/contact/homepage/AlphaDeviceItem;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/alibaba/android/user/contact/homepage/AlphaDeviceItem;->setOrgName(Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcid;->c()Landroid/app/Application;

    move-result-object v25

    sget v27, Lezg$l;->dt_contact_smartDevice:I

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/alibaba/android/user/contact/homepage/AlphaDeviceItem;->setName(Ljava/lang/String;)V

    .line 206
    move-object/from16 v0, p0

    iget v0, v0, Lffu;->d:I

    move/from16 v25, v0

    const/16 v27, 0x2

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_14

    sget-object v25, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->COMMON:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    :goto_8
    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/alibaba/android/user/contact/homepage/AlphaDeviceItem;->setIconInfo(Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;)V

    .line 207
    invoke-virtual {v7, v4}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->addChild(Lcom/alibaba/android/user/contact/homepage/Component;)V

    .line 211
    .end local v4    # "alphaDeviceItem":Lcom/alibaba/android/user/contact/homepage/AlphaDeviceItem;
    :cond_11
    invoke-static/range {v20 .. v20}, Lfls;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Z

    move-result v25

    if-nez v25, :cond_12

    .line 212
    new-instance v13, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    invoke-direct {v13}, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;-><init>()V

    .line 213
    .local v13, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    const-wide/16 v28, -0x10

    move-wide/from16 v0, v28

    iput-wide v0, v13, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    .line 214
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcid;->c()Landroid/app/Application;

    move-result-object v25

    sget v27, Lezg$l;->dt_user_profile_ext_contact_header_title:I

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v13, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->name:Ljava/lang/String;

    .line 215
    new-instance v14, Lcom/alibaba/android/user/contact/homepage/MicroAppItem;

    move-object/from16 v0, v20

    invoke-direct {v14, v0, v13}, Lcom/alibaba/android/user/contact/homepage/MicroAppItem;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V

    .line 216
    .local v14, "microAppItem":Lcom/alibaba/android/user/contact/homepage/MicroAppItem;
    move-object/from16 v0, p0

    iget v0, v0, Lffu;->d:I

    move/from16 v25, v0

    const/16 v27, 0x2

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_15

    sget-object v25, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->COMMON:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    :goto_9
    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/alibaba/android/user/contact/homepage/MicroAppItem;->setIconInfo(Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;)V

    .line 217
    invoke-virtual {v7, v14}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->addChild(Lcom/alibaba/android/user/contact/homepage/Component;)V

    .line 218
    sget-object v25, Lffu;->c:Ljava/lang/String;

    const-string/jumbo v27, "external contact cell"

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lfxo;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    .end local v13    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v14    # "microAppItem":Lcom/alibaba/android/user/contact/homepage/MicroAppItem;
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lffu;->d:I

    move/from16 v25, v0

    const/16 v27, 0x3

    move/from16 v0, v25

    move/from16 v1, v27

    if-eq v0, v1, :cond_13

    invoke-static/range {v20 .. v20}, Lfls;->b(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Z

    move-result v25

    if-eqz v25, :cond_13

    .line 222
    new-instance v12, Lcom/alibaba/android/user/contact/homepage/OrgMemberItem;

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-direct {v12, v0, v1}, Lcom/alibaba/android/user/contact/homepage/OrgMemberItem;-><init>(J)V

    .line 223
    .local v12, "item":Lcom/alibaba/android/user/contact/homepage/OrgMemberItem;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcid;->c()Landroid/app/Application;

    move-result-object v25

    sget v27, Lezg$l;->dt_contact_org_member_title:I

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 224
    .local v23, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lffu;->d:I

    move/from16 v25, v0

    const/16 v27, 0x2

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_16

    sget-object v25, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->COMMON:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    :goto_a
    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Lcom/alibaba/android/user/contact/homepage/OrgMemberItem;->setIconInfo(Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;)V

    .line 225
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/alibaba/android/user/contact/homepage/OrgMemberItem;->setName(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v7, v12}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->addChild(Lcom/alibaba/android/user/contact/homepage/Component;)V

    .line 230
    .end local v12    # "item":Lcom/alibaba/android/user/contact/homepage/OrgMemberItem;
    .end local v23    # "title":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x5209

    cmp-long v25, v28, v30

    if-eqz v25, :cond_3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    move-wide/from16 v28, v0

    .line 231
    invoke-static/range {v28 .. v29}, Lfls;->f(J)Z

    move-result v25

    if-eqz v25, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lffu;->d:I

    move/from16 v25, v0

    const/16 v27, 0x3

    move/from16 v0, v25

    move/from16 v1, v27

    if-eq v0, v1, :cond_3

    .line 233
    new-instance v18, Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;-><init>(J)V

    .line 234
    .local v18, "orgHomePageItem":Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;->setOrgName(Ljava/lang/String;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lffu;->h:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lfrq;

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;->setOrgPage(Lfrq;)V

    .line 237
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcid;->c()Landroid/app/Application;

    move-result-object v25

    sget v27, Lezg$l;->dt_org_homepage_title:I

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 238
    .local v17, "orgHomePage":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcid;->c()Landroid/app/Application;

    move-result-object v25

    sget v27, Lezg$l;->dt_org_homepage_gov_title:I

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 239
    .local v8, "homePage":Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-object/from16 v25, v0

    if-eqz v25, :cond_19

    .line 240
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v10, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->industryCode:I

    .line 241
    .local v10, "industryCode":I
    invoke-static {}, Lfly;->a()Lfly;

    move-result-object v25

    .line 3096
    move-object/from16 v0, v25

    iget-object v0, v0, Lfly;->b:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v25

    if-ltz v25, :cond_17

    const/4 v11, 0x1

    .line 242
    .local v11, "isGovOrg":Z
    :goto_b
    if-eqz v11, :cond_18

    .end local v8    # "homePage":Ljava/lang/String;
    :goto_c
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;->setName(Ljava/lang/String;)V

    .line 247
    .end local v10    # "industryCode":I
    .end local v11    # "isGovOrg":Z
    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Lffu;->d:I

    move/from16 v25, v0

    const/16 v27, 0x2

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_1a

    sget-object v25, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->COMMON:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    :goto_e
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;->setIconInfo(Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;)V

    .line 248
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->addChild(Lcom/alibaba/android/user/contact/homepage/Component;)V

    goto/16 :goto_0

    .line 206
    .end local v17    # "orgHomePage":Ljava/lang/String;
    .end local v18    # "orgHomePageItem":Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;
    .restart local v4    # "alphaDeviceItem":Lcom/alibaba/android/user/contact/homepage/AlphaDeviceItem;
    :cond_14
    sget-object v25, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->ALPHA_DEVICE:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    goto/16 :goto_8

    .line 216
    .end local v4    # "alphaDeviceItem":Lcom/alibaba/android/user/contact/homepage/AlphaDeviceItem;
    .restart local v13    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .restart local v14    # "microAppItem":Lcom/alibaba/android/user/contact/homepage/MicroAppItem;
    :cond_15
    sget-object v25, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->EXT_CONTACT:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    goto/16 :goto_9

    .line 224
    .end local v13    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v14    # "microAppItem":Lcom/alibaba/android/user/contact/homepage/MicroAppItem;
    .restart local v12    # "item":Lcom/alibaba/android/user/contact/homepage/OrgMemberItem;
    .restart local v23    # "title":Ljava/lang/String;
    :cond_16
    sget-object v25, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->ORG_MEMBER:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    goto/16 :goto_a

    .line 3096
    .end local v12    # "item":Lcom/alibaba/android/user/contact/homepage/OrgMemberItem;
    .end local v23    # "title":Ljava/lang/String;
    .restart local v8    # "homePage":Ljava/lang/String;
    .restart local v10    # "industryCode":I
    .restart local v17    # "orgHomePage":Ljava/lang/String;
    .restart local v18    # "orgHomePageItem":Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;
    :cond_17
    const/4 v11, 0x0

    goto :goto_b

    .restart local v11    # "isGovOrg":Z
    :cond_18
    move-object/from16 v8, v17

    .line 242
    goto :goto_c

    .line 244
    .end local v10    # "industryCode":I
    .end local v11    # "isGovOrg":Z
    :cond_19
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;->setName(Ljava/lang/String;)V

    goto :goto_d

    .line 247
    .end local v8    # "homePage":Ljava/lang/String;
    :cond_1a
    sget-object v25, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->ORG_SQUARE:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    goto :goto_e
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 376
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 381
    return-void
.end method

.method public final i()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 385
    iget-object v0, p0, Lffu;->e:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 386
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lffu;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 387
    iput-object v2, p0, Lffu;->e:Landroid/content/BroadcastReceiver;

    .line 390
    :cond_0
    iget-object v0, p0, Lffu;->g:Lflx;

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lffu;->g:Lflx;

    .line 3217
    iget-object v0, v0, Lflx;->b:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 392
    iput-object v2, p0, Lffu;->g:Lflx;

    .line 395
    :cond_1
    iput-object v2, p0, Lffu;->f:Landroid/app/Activity;

    .line 396
    return-void
.end method
