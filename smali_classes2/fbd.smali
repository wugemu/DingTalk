.class public Lfbd;
.super Ljava/lang/Object;
.source "SecurityAPIImpl.java"


# static fields
.field public static a:Z

.field private static final b:Ljava/lang/String;

.field private static c:Lfbd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lfbd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfbd;->b:Ljava/lang/String;

    .line 191
    const/4 v0, 0x0

    sput-boolean v0, Lfbd;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lfbd;
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lfbd;->c:Lfbd;

    if-nez v0, :cond_1

    .line 65
    const-class v1, Lfbd;

    monitor-enter v1

    .line 66
    :try_start_0
    sget-object v0, Lfbd;->c:Lfbd;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lfbd;

    invoke-direct {v0}, Lfbd;-><init>()V

    sput-object v0, Lfbd;->c:Lfbd;

    .line 69
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_1
    sget-object v0, Lfbd;->c:Lfbd;

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Lcma;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "callback":Lcma;, "Lcma<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 96
    const-string/jumbo v0, "OIq28sDqa+67H2xmlS6Jgg=="

    invoke-interface {p0, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 98
    :cond_0
    return-void
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    sput-boolean v0, Lfbd;->a:Z

    .line 216
    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lfbd;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 18

    .prologue
    .line 118
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    .line 119
    .local v4, "context":Landroid/content/Context;
    if-nez v4, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v11

    const-string/jumbo v12, "f_user_report_security_data"

    .line 1083
    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v11

    .line 123
    if-eqz v11, :cond_0

    .line 1186
    const-string/jumbo v11, "pref_key_last_security_data_report_time"

    invoke-static {v4, v11}, Lcpk;->c(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v12

    .line 1187
    invoke-static {}, Lcms;->u()J

    move-result-wide v14

    .line 1188
    const-wide/32 v16, 0x5265c00

    add-long v12, v12, v16

    cmp-long v11, v14, v12

    if-gez v11, :cond_4

    const/4 v11, 0x1

    .line 124
    :goto_1
    if-nez v11, :cond_0

    .line 128
    new-instance v11, Landroid/content/ContextWrapper;

    invoke-direct {v11, v4}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {v11}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v9

    .line 129
    .local v9, "sgMgr":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    if-eqz v9, :cond_0

    .line 132
    invoke-virtual {v9}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getSecurityBodyComp()Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;

    move-result-object v6

    .line 133
    .local v6, "sbComponent":Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;
    invoke-virtual {v9}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataStoreComp()Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    move-result-object v7

    .line 134
    .local v7, "sdsComp":Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;
    const/4 v3, 0x0

    .line 135
    .local v3, "appKey":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 136
    const/4 v11, 0x0

    invoke-interface {v7, v11}, Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(I)Ljava/lang/String;

    move-result-object v3

    .line 139
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    if-nez v6, :cond_5

    .line 140
    :cond_3
    sget-object v11, Lfbd;->b:Ljava/lang/String;

    const-string/jumbo v12, "reportSecurityData emply key or sbComponent"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1188
    .end local v3    # "appKey":Ljava/lang/String;
    .end local v6    # "sbComponent":Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;
    .end local v7    # "sdsComp":Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;
    .end local v9    # "sgMgr":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 144
    .restart local v3    # "appKey":Ljava/lang/String;
    .restart local v6    # "sbComponent":Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;
    .restart local v7    # "sdsComp":Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;
    .restart local v9    # "sgMgr":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    :cond_5
    new-instance v8, Lfql;

    invoke-direct {v8}, Lfql;-><init>()V

    .line 145
    .local v8, "securityDataModel":Lfql;
    invoke-interface {v6, v3}, Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;->initSecurityBody(Ljava/lang/String;)Z

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 147
    .local v10, "timestamp":Ljava/lang/String;
    const/4 v11, 0x4

    invoke-interface {v6, v10, v3, v11}, Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;->getSecurityBodyDataEx(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lfql;->a:Ljava/lang/String;

    .line 148
    invoke-static {v4}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/taobao/dp/DeviceSecuritySDK;->getSecurityToken(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lfql;->b:Ljava/lang/String;

    .line 150
    iget-object v11, v8, Lfql;->a:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, v8, Lfql;->b:Ljava/lang/String;

    .line 151
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 152
    :cond_6
    sget-object v11, Lfbd;->b:Ljava/lang/String;

    const-string/jumbo v12, "reportSecurityData: Bad request params"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 156
    :cond_7
    new-instance v2, Lfbd$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lfbd$3;-><init>(Lfbd;)V

    .line 173
    .local v2, "apiEventListener":Lcma;
    new-instance v5, Lfbd$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v2}, Lfbd$4;-><init>(Lfbd;Lcma;)V

    .line 179
    .local v5, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v11, Lcom/alibaba/android/user/idl/services/SafeIService;

    invoke-static {v11}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/user/idl/services/SafeIService;

    invoke-interface {v11, v8, v5}, Lcom/alibaba/android/user/idl/services/SafeIService;->reportSecurityData(Lfql;Liyv;)V

    .line 182
    const-string/jumbo v11, "pref_key_last_security_data_report_time"

    invoke-static {}, Lcms;->u()J

    move-result-wide v12

    invoke-static {v4, v11, v12, v13}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_0
.end method
