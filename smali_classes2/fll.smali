.class public final Lfll;
.super Ljava/lang/Object;
.source "ManagerOrgPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final g:[Ljava/lang/String;


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public d:I

.field public e:Lflk;

.field public f:Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

.field private h:I

.field private i:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "V1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "V2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "V3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "V4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "V5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "V6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "V7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "V8"

    aput-object v2, v0, v1

    sput-object v0, Lfll;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lfll;->d:I

    return-void
.end method

.method static synthetic a(Lfll;I)I
    .locals 0
    .param p0, "x0"    # Lfll;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lfll;->d:I

    return p1
.end method

.method static synthetic a(Lfll;Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;
    .locals 0
    .param p0, "x0"    # Lfll;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    .prologue
    .line 57
    iput-object p1, p0, Lfll;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    return-object p1
.end method

.method static synthetic a(Lfll;)Lflk;
    .locals 1
    .param p0, "x0"    # Lfll;

    .prologue
    .line 57
    iget-object v0, p0, Lfll;->e:Lflk;

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    const-string/jumbo v0, "https://reservation.dingtalk.com/aliXiaomi?from=dingtalk_businessmanagement"

    return-object v0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 8
    .param p0, "orgId"    # J

    .prologue
    const/4 v3, 0x0

    .line 147
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    .line 148
    .local v0, "engine":Lccr;
    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    .line 149
    .local v2, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 150
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 151
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_0

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v5, v6, p0

    if-nez v5, :cond_0

    .line 154
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-boolean v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->managePermission:Z

    if-nez v4, :cond_2

    .line 161
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_1
    :goto_0
    return-object v3

    .line 158
    .restart local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_2
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lfll;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;)V
    .locals 0
    .param p0, "x0"    # Lfll;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2, p3}, Lfll;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;)V

    return-void
.end method

.method static synthetic a(Lfll;Z)Z
    .locals 0
    .param p0, "x0"    # Lfll;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lfll;->b:Z

    return p1
.end method

.method static synthetic b(Lfll;I)I
    .locals 0
    .param p0, "x0"    # Lfll;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lfll;->a:I

    return p1
.end method

.method static synthetic b(Lfll;)Z
    .locals 1
    .param p0, "x0"    # Lfll;

    .prologue
    .line 57
    iget-boolean v0, p0, Lfll;->b:Z

    return v0
.end method

.method static synthetic b(Lfll;Z)Z
    .locals 0
    .param p0, "x0"    # Lfll;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lfll;->c:Z

    return p1
.end method

.method static synthetic c(Lfll;)I
    .locals 1
    .param p0, "x0"    # Lfll;

    .prologue
    .line 57
    iget v0, p0, Lfll;->d:I

    return v0
.end method

.method static synthetic c(Lfll;I)I
    .locals 0
    .param p0, "x0"    # Lfll;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lfll;->h:I

    return p1
.end method

.method static synthetic d(Lfll;)I
    .locals 1
    .param p0, "x0"    # Lfll;

    .prologue
    .line 57
    iget v0, p0, Lfll;->a:I

    return v0
.end method

.method static synthetic d(Lfll;I)V
    .locals 1
    .param p0, "x0"    # Lfll;
    .param p1, "x1"    # I

    .prologue
    .line 57
    .line 1481
    iget-object v0, p0, Lfll;->e:Lflk;

    invoke-interface {v0}, Lflk;->b()V

    .line 57
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "model"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 427
    iget-object v1, p0, Lfll;->e:Lflk;

    invoke-interface {v1, p1, p2}, Lflk;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v1, p0, Lfll;->e:Lflk;

    invoke-interface {v1}, Lflk;->c()V

    .line 432
    if-eqz p3, :cond_3

    .line 434
    iget-object v1, p3, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->manageContactText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 435
    iget-object v1, p0, Lfll;->e:Lflk;

    iget-object v2, p3, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->manageContactText:Ljava/lang/String;

    invoke-interface {v1, v2}, Lflk;->a(Ljava/lang/String;)V

    .line 439
    :cond_0
    iget-object v1, p3, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->manageExtContactText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 440
    iget-object v1, p0, Lfll;->e:Lflk;

    iget-object v2, p3, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->manageExtContactText:Ljava/lang/String;

    invoke-interface {v1, v2}, Lflk;->b(Ljava/lang/String;)V

    .line 443
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;-><init>()V

    .line 444
    .local v0, "orgAdminPermissionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;
    iget-wide v2, p3, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->orgId:J

    invoke-static {v2, v3}, Lfls;->a(J)I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 446
    iput-boolean v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;->mMoreSetting:Z

    .line 447
    iput-boolean v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;->mSafetyCenterSetting:Z

    .line 448
    iput-boolean v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;->mGroupChatSetting:Z

    .line 449
    iput-boolean v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;->mExtContactSetting:Z

    .line 461
    :cond_2
    :goto_0
    iget-object v1, p0, Lfll;->e:Lflk;

    invoke-interface {v1, v0}, Lflk;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;)V

    .line 463
    .end local v0    # "orgAdminPermissionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;
    :cond_3
    return-void

    .line 450
    .restart local v0    # "orgAdminPermissionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;
    :cond_4
    iget-object v1, p3, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->mOrgAdminPermissionObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;

    if-eqz v1, :cond_2

    .line 451
    iget-object v1, p3, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->mOrgAdminPermissionObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;->mMoreSetting:Z

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;->mMoreSetting:Z

    .line 453
    iget-object v1, p3, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->mOrgAdminPermissionObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;->mSafetyCenterSetting:Z

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;->mSafetyCenterSetting:Z

    .line 455
    iget-object v1, p3, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->mOrgAdminPermissionObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;->mGroupChatSetting:Z

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;->mGroupChatSetting:Z

    .line 457
    iget-object v1, p3, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->mOrgAdminPermissionObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;->mExtContactSetting:Z

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgAdminPermissionObject;->mExtContactSetting:Z

    goto :goto_0
.end method

.method public final b(J)Ljava/lang/String;
    .locals 11
    .param p1, "orgId"    # J

    .prologue
    const/4 v5, 0x0

    .line 168
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    .line 169
    .local v0, "engine":Lccr;
    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v4

    .line 170
    .local v4, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v4, :cond_1

    iget-object v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v6, :cond_1

    .line 171
    iget-object v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 172
    .local v3, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v3, :cond_0

    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v7, v8, p1

    if-nez v7, :cond_0

    .line 175
    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v7, :cond_0

    .line 176
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-boolean v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->managePermission:Z

    if-nez v6, :cond_2

    .line 190
    .end local v3    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_1
    :goto_0
    return-object v5

    .line 179
    .restart local v3    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_2
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iput-object v6, p0, Lfll;->i:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    .line 180
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->ext:Ljava/lang/String;

    .line 181
    .local v1, "ext":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 184
    invoke-static {v1}, Lcoo;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 185
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_1

    const-string/jumbo v5, "applyCode"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public final c(J)V
    .locals 5
    .param p1, "orgId"    # J

    .prologue
    .line 255
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-object v1, p0, Lfll;->e:Lflk;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfll;->e:Lflk;

    invoke-interface {v1}, Lflk;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 260
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lfll$2;

    invoke-direct {v3, p0}, Lfll$2;-><init>(Lfll;)V

    const-class v4, Lcma;

    iget-object v2, p0, Lfll;->e:Lflk;

    .line 298
    invoke-interface {v2}, Lflk;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 260
    invoke-interface {v1, v3, v4, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 299
    .local v0, "listener":Lcma;
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    const/16 v2, 0x8

    invoke-interface {v1, p1, p2, v2, v0}, Lezt;->a(JILcma;)V

    goto :goto_0
.end method
