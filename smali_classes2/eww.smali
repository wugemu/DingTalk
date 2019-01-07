.class public Leww;
.super Ljava/lang/Object;
.source "TelePhoneContactManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leww$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static volatile c:Leww;


# instance fields
.field public a:Lifn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Leww;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leww;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    return-void
.end method

.method static synthetic a(Leww;Ljava/lang/String;)J
    .locals 2
    .param p0, "x0"    # Leww;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {p1}, Leww;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Ljava/lang/String;)J
    .locals 15
    .param p0, "remoteVersion"    # Ljava/lang/String;

    .prologue
    .line 2168
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v10

    const-string/jumbo v11, "conf_cloud_contact"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 399
    .local v1, "cloudContactValid":Z
    if-eqz v1, :cond_0

    .line 400
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 401
    :cond_0
    const-string/jumbo v10, "tele_conf"

    sget-object v11, Leww;->b:Ljava/lang/String;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "Cloud contact invalid "

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 402
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 401
    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-wide/16 v4, -0x1

    .line 435
    :cond_1
    :goto_0
    return-wide v4

    .line 409
    :cond_2
    const-wide/16 v4, 0x0

    .line 411
    .local v4, "lastVer":J
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 412
    .local v0, "adJson":Lorg/json/JSONObject;
    const-string/jumbo v10, "valid"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 413
    .local v7, "valid":Z
    const-string/jumbo v10, "version"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 414
    .local v8, "remoteVer":J
    if-nez v7, :cond_3

    .line 415
    const-string/jumbo v10, "tele_conf"

    sget-object v11, Leww;->b:Ljava/lang/String;

    const-string/jumbo v12, "The update is invalid"

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-wide/16 v4, -0x1

    goto :goto_0

    .line 419
    :cond_3
    const-string/jumbo v10, "conf_cloud_contact_version"

    invoke-static {v10}, Lcmu;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 420
    .local v6, "lastVerObj":Ljava/lang/Object;
    if-eqz v6, :cond_4

    .line 421
    new-instance v2, Leww$a;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Leww$a;-><init>(Ljava/lang/String;)V

    .line 422
    .local v2, "contactCache":Leww$a;
    iget-wide v4, v2, Leww$a;->a:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 425
    .end local v2    # "contactCache":Leww$a;
    :cond_4
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-eqz v10, :cond_1

    .line 427
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_5

    cmp-long v10, v8, v4

    if-lez v10, :cond_5

    move-wide v4, v8

    .line 428
    goto :goto_0

    .line 430
    .end local v0    # "adJson":Lorg/json/JSONObject;
    .end local v6    # "lastVerObj":Ljava/lang/Object;
    .end local v7    # "valid":Z
    .end local v8    # "remoteVer":J
    :catch_0
    move-exception v3

    .line 431
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 435
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_5
    :goto_1
    const-wide/16 v4, -0x1

    goto :goto_0

    .line 432
    :catch_1
    move-exception v3

    .line 433
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method public static a()Leww;
    .locals 2

    .prologue
    .line 133
    sget-object v0, Leww;->c:Leww;

    if-nez v0, :cond_1

    .line 134
    const-class v1, Lewh;

    monitor-enter v1

    .line 135
    :try_start_0
    sget-object v0, Leww;->c:Leww;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Leww;

    invoke-direct {v0}, Leww;-><init>()V

    sput-object v0, Leww;->c:Leww;

    .line 138
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_1
    sget-object v0, Leww;->c:Leww;

    return-object v0

    .line 138
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Leww;J)V
    .locals 7
    .param p0, "x0"    # Leww;
    .param p1, "x1"    # J

    .prologue
    .line 64
    .line 5335
    new-instance v1, Leyi;

    invoke-direct {v1}, Leyi;-><init>()V

    .line 5336
    iput-wide p1, v1, Leyi;->a:J

    .line 5337
    const/4 v0, 0x1

    iput-boolean v0, v1, Leyi;->b:Z

    .line 5338
    invoke-static {}, Leyb;->a()Leyb;

    move-result-object v2

    .line 6091
    if-nez v1, :cond_1

    .line 6092
    :cond_0
    :goto_0
    return-void

    .line 6094
    :cond_1
    const-class v0, Lcom/alibaba/android/teleconf/sdk/idl/service/CloudContactIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/service/CloudContactIService;

    .line 6095
    if-eqz v0, :cond_0

    .line 6096
    iget-wide v4, v1, Leyi;->a:J

    long-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v1, v1, Leyi;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v4, Leyb$2;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Leyb$2;-><init>(Leyb;Leyo$d;)V

    invoke-interface {v0, v3, v1, v4}, Lcom/alibaba/android/teleconf/sdk/idl/service/CloudContactIService;->updateStatus(Ljava/lang/Integer;Ljava/lang/Boolean;Liyv;)V

    goto :goto_0
.end method

.method static synthetic a(Leww;JZLjava/util/List;)V
    .locals 5
    .param p0, "x0"    # Leww;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z
    .param p4, "x3"    # Ljava/util/List;

    .prologue
    .line 64
    .line 7439
    if-eqz p4, :cond_0

    .line 7440
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7441
    :cond_0
    :goto_0
    return-void

    .line 7443
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7444
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactItemModel;

    .line 7445
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactItemModel;->labels:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactItemModel;->labels:Ljava/util/List;

    .line 7447
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 7450
    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactItemModel;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactLabelModel;

    .line 7451
    if-eqz v0, :cond_3

    iget-object v4, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactLabelModel;->numbers:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactLabelModel;->numbers:Ljava/util/List;

    .line 7453
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 7456
    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactLabelModel;->numbers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 7460
    :cond_4
    const/4 v0, 0x0

    .line 7461
    const-string/jumbo v2, "conf_cloud_contact_version"

    invoke-static {v2}, Lcmu;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 7462
    if-eqz v2, :cond_5

    .line 7463
    new-instance v0, Leww$a;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Leww$a;-><init>(Ljava/lang/String;)V

    .line 7466
    :cond_5
    if-eqz p3, :cond_9

    .line 7467
    if-nez v0, :cond_6

    .line 7468
    new-instance v0, Leww$a;

    invoke-direct {v0}, Leww$a;-><init>()V

    .line 7470
    :cond_6
    iput-wide p1, v0, Leww$a;->a:J

    .line 7471
    iget-object v2, v0, Leww$a;->b:Ljava/util/Set;

    if-nez v2, :cond_7

    .line 7472
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Leww$a;->b:Ljava/util/Set;

    .line 7474
    :cond_7
    iget-object v2, v0, Leww$a;->b:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 7486
    :cond_8
    :goto_2
    if-eqz v0, :cond_0

    .line 7487
    const-string/jumbo v1, "conf_cloud_contact_version"

    invoke-virtual {v0}, Leww$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 8052
    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Lcmu;->a(Ljava/lang/String;Ljava/io/Serializable;I)V

    goto/16 :goto_0

    .line 7476
    :cond_9
    if-eqz v0, :cond_8

    .line 7477
    iput-wide p1, v0, Leww$a;->a:J

    .line 7478
    iget-object v2, v0, Leww$a;->b:Ljava/util/Set;

    if-eqz v2, :cond_8

    iget-object v2, v0, Leww$a;->b:Ljava/util/Set;

    .line 7479
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    if-eqz v1, :cond_8

    .line 7481
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 7482
    iget-object v2, v0, Leww$a;->b:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method static synthetic a(Leww;Ljava/util/List;)V
    .locals 8
    .param p0, "x0"    # Leww;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 64
    .line 4202
    if-eqz p1, :cond_0

    .line 4203
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4204
    :cond_0
    return-void

    .line 4206
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactItemModel;

    .line 4207
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactItemModel;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4211
    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactItemModel;->labels:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactItemModel;->labels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4212
    :cond_3
    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactItemModel;->name:Ljava/lang/String;

    .line 5183
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5187
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "xiaomi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5189
    invoke-static {v1}, Leyt;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 5190
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 5191
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5193
    :cond_4
    invoke-static {v1, v0}, Leyt;->a(Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    .line 5197
    :goto_1
    const-string/jumbo v3, "tele_conf"

    sget-object v4, Leww;->b:Ljava/lang/String;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "Delete contact "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v1, 0x2

    const-string/jumbo v6, " rows: "

    aput-object v6, v5, v1

    const/4 v1, 0x3

    .line 5198
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5197
    invoke-static {v3, v4, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5195
    :cond_5
    invoke-static {v1}, Leyt;->d(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 4214
    :cond_6
    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactItemModel;->labels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactLabelModel;

    .line 4215
    if-eqz v1, :cond_7

    iget-object v4, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactLabelModel;->numbers:Ljava/util/List;

    if-eqz v4, :cond_7

    iget-object v4, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactLabelModel;->numbers:Ljava/util/List;

    .line 4217
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 4220
    iget-object v4, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactItemModel;->name:Ljava/lang/String;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactLabelModel;->numbers:Ljava/util/List;

    invoke-static {v4, v1}, Leyt;->a(Ljava/lang/String;Ljava/util/List;)I

    goto :goto_2
.end method

.method static synthetic a(Leww;Z)V
    .locals 6
    .param p0, "x0"    # Leww;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    .line 2324
    if-eqz p1, :cond_0

    .line 2325
    invoke-static {}, Lewl;->a()Lewl;

    invoke-static {}, Lewl;->d()V

    .line 2328
    :cond_0
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v0

    .line 3224
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lewl$12;

    invoke-direct {v2, v0}, Lewl$12;-><init>(Lewl;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2330
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lewh;->b(ZLcma;)V

    .line 64
    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Leww;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Leww;Ljava/util/List;)Ljava/util/List;
    .locals 11
    .param p0, "x0"    # Leww;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 64
    .line 8492
    if-eqz p1, :cond_0

    .line 8493
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v5

    .line 8494
    :goto_0
    return-object v0

    .line 8497
    :cond_1
    const/4 v4, 0x0

    .line 8498
    const-string/jumbo v0, "conf_cloud_contact_version"

    invoke-static {v0}, Lcmu;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 8499
    if-eqz v0, :cond_d

    .line 8500
    new-instance v6, Leww$a;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Leww$a;-><init>(Ljava/lang/String;)V

    .line 8501
    iget-object v0, v6, Leww$a;->b:Ljava/util/Set;

    if-eqz v0, :cond_d

    iget-object v0, v6, Leww$a;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 8503
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 8504
    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 8505
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactItemModel;

    .line 8506
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactItemModel;->labels:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactItemModel;->labels:Ljava/util/List;

    .line 8508
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8509
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 8512
    :cond_4
    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactItemModel;->labels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 8513
    :cond_5
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 8514
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactLabelModel;

    .line 8515
    if-eqz v1, :cond_6

    iget-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactLabelModel;->numbers:Ljava/util/List;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactLabelModel;->numbers:Ljava/util/List;

    .line 8517
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 8518
    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 8522
    :cond_7
    iget-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactLabelModel;->numbers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 8523
    :cond_8
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 8524
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8525
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 8526
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, v6, Leww$a;->b:Ljava/util/Set;

    .line 8527
    invoke-interface {v10, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 8528
    :cond_9
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 8532
    :cond_a
    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactLabelModel;->numbers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8533
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 8537
    :cond_b
    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactItemModel;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8538
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    .line 8542
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v3

    :goto_4
    move v3, v0

    .line 8552
    :cond_d
    if-eqz v3, :cond_e

    .line 8553
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8554
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_e
    move-object v0, v5

    goto/16 :goto_0

    :cond_f
    move v0, v4

    goto :goto_4
.end method

.method static synthetic b(Leww;J)V
    .locals 5
    .param p0, "x0"    # Leww;
    .param p1, "x1"    # J

    .prologue
    .line 64
    .line 6561
    invoke-static {}, Leyb;->a()Leyb;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Leww$5;

    invoke-direct {v3, p0, p1, p2}, Leww$5;-><init>(Leww;J)V

    .line 7186
    if-nez v2, :cond_1

    .line 7187
    :cond_0
    :goto_0
    return-void

    .line 7189
    :cond_1
    const-class v0, Lcom/alibaba/android/teleconf/sdk/idl/service/CloudContactIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/service/CloudContactIService;

    .line 7190
    if-eqz v0, :cond_0

    .line 7191
    new-instance v4, Leyb$5;

    invoke-direct {v4, v1, v3}, Leyb$5;-><init>(Leyb;Leyo$d;)V

    invoke-interface {v0, v2, v4}, Lcom/alibaba/android/teleconf/sdk/idl/service/CloudContactIService;->queryContactsByVersion(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method static synthetic c(Leww;Ljava/util/List;)V
    .locals 10
    .param p0, "x0"    # Leww;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v3, 0x0

    .line 64
    .line 9227
    if-eqz p1, :cond_0

    .line 9228
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9229
    :cond_0
    return-void

    .line 9231
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactItemModel;

    .line 9232
    if-eqz v7, :cond_2

    iget-object v0, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactItemModel;->name:Ljava/lang/String;

    .line 9233
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactItemModel;->labels:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactItemModel;->labels:Ljava/util/List;

    .line 9235
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9239
    iget-object v0, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactItemModel;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactLabelModel;

    .line 9240
    if-eqz v2, :cond_3

    iget-object v0, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactLabelModel;->numbers:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactLabelModel;->numbers:Ljava/util/List;

    .line 9242
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9245
    iget-object v0, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactItemModel;->name:Ljava/lang/String;

    iget-object v1, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactLabelModel;->label:Ljava/lang/String;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactLabelModel;->numbers:Ljava/util/List;

    iget-object v5, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactItemModel;->link:Ljava/lang/String;

    iget-object v6, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactItemModel;->note:Ljava/lang/String;

    move-object v4, v3

    invoke-static/range {v0 .. v6}, Leyt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    goto :goto_1

    .line 9253
    :cond_4
    iget-object v0, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactItemModel;->avatar:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9255
    iget-object v0, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactItemModel;->name:Ljava/lang/String;

    iget-object v1, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactItemModel;->avatar:Ljava/lang/String;

    .line 9261
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 9262
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 9265
    invoke-static {v0}, Leyt;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 9266
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_5

    .line 9267
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Leww;->b:Ljava/lang/String;

    const-string/jumbo v2, "Invalid contact name"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9271
    :cond_5
    :try_start_0
    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9272
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9275
    const-string/jumbo v0, "REQUEST"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/request/Request;

    .line 9276
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 9277
    sget-object v1, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setPriority(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/request/Request;

    .line 9278
    sget-object v1, Leww;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setPerfTag(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 9279
    new-instance v1, Leww$2;

    invoke-direct {v1, p0, v4, v5}, Leww$2;-><init>(Leww;J)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 9312
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Leww;->b:Ljava/lang/String;

    const-string/jumbo v4, "Start download contact photo"

    invoke-static {v1, v2, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9313
    invoke-interface {v0}, Lcom/alibaba/doraemon/request/Request;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 9315
    :catch_0
    move-exception v0

    .line 9316
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
