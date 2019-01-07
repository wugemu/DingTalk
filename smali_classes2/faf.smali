.class public final Lfaf;
.super Ljava/lang/Object;
.source "AuthorizationAPIImpl.java"

# interfaces
.implements Lezm;


# static fields
.field private static a:Lfaf;


# instance fields
.field private b:Lezm;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1035
    new-instance v0, Lfaq;

    invoke-direct {v0}, Lfaq;-><init>()V

    iput-object v0, p0, Lfaf;->b:Lezm;

    .line 31
    return-void
.end method

.method public static declared-synchronized b()Lezm;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lfaf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lfaf;->a:Lfaf;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lfaf;

    invoke-direct {v0}, Lfaf;-><init>()V

    sput-object v0, Lfaf;->a:Lfaf;

    .line 26
    :cond_0
    sget-object v0, Lfaf;->a:Lfaf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 196
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/internal/IMContextEngine;->c()V

    .line 197
    iget-object v0, p0, Lfaf;->b:Lezm;

    invoke-interface {v0}, Lezm;->a()V

    .line 198
    return-void
.end method

.method public final a(Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcma;)V
    .locals 11
    .param p1, "personalDeviceModel"    # Lcfo;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "tempToken"    # Ljava/lang/String;
    .param p4, "appKey"    # Ljava/lang/String;
    .param p5, "uid"    # J
    .param p7, "t"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p8, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    iget-object v1, p0, Lfaf;->b:Lezm;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lezm;->a(Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcma;)V

    .line 226
    return-void
.end method

.method public final a(Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 7
    .param p1, "personalDeviceModel"    # Lcfo;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "appKey"    # Ljava/lang/String;
    .param p5, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 150
    .local p6, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    iget-object v0, p0, Lfaf;->b:Lezm;

    new-instance v6, Lfaf$4;

    invoke-direct {v6, p0, p6}, Lfaf$4;-><init>(Lfaf;Lcma;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lezm;->a(Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 177
    return-void
.end method

.method public final a(Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 10
    .param p1, "personalDeviceModel"    # Lcfo;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "appKey"    # Ljava/lang/String;
    .param p5, "token"    # Ljava/lang/String;
    .param p6, "param"    # Ljava/lang/String;
    .param p7, "tempCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 48
    .local p8, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    iget-object v1, p0, Lfaf;->b:Lezm;

    new-instance v9, Lfaf$1;

    move-object/from16 v0, p8

    invoke-direct {v9, p0, v0}, Lfaf$1;-><init>(Lfaf;Lcma;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Lezm;->a(Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 75
    return-void
.end method

.method public final a(Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcma;)V
    .locals 8
    .param p1, "personalDeviceModel"    # Lcfo;
    .param p2, "mobile"    # Ljava/lang/String;
    .param p3, "tempCode"    # Ljava/lang/String;
    .param p4, "verifyCatId"    # Ljava/lang/String;
    .param p6, "t"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 186
    .local p5, "verifyUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    iget-object v0, p0, Lfaf;->b:Lezm;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lezm;->a(Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcma;)V

    .line 187
    return-void
.end method

.method public final a(Ljava/lang/String;IILcma;)V
    .locals 1
    .param p1, "mobile"    # Ljava/lang/String;
    .param p2, "bizType"    # I
    .param p3, "viaType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p4, "callback":Lcma;, "Lcma<Ljava/lang/String;>;"
    iget-object v0, p0, Lfaf;->b:Lezm;

    invoke-interface {v0, p1, p2, p3, p4}, Lezm;->a(Ljava/lang/String;IILcma;)V

    .line 203
    return-void
.end method

.method public final a(Ljava/lang/String;Lcee;Lcma;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "loginResult"    # Lcee;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcee;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 120
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    iget-object v0, p0, Lfaf;->b:Lezm;

    new-instance v1, Lfaf$3;

    invoke-direct {v1, p0, p3}, Lfaf$3;-><init>(Lfaf;Lcma;)V

    invoke-interface {v0, p1, p2, v1}, Lezm;->a(Ljava/lang/String;Lcee;Lcma;)V

    .line 146
    return-void
.end method

.method public final a(Ljava/lang/String;Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 11
    .param p1, "thirdPartyUserId"    # Ljava/lang/String;
    .param p2, "personalDeviceModel"    # Lcfo;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "appKey"    # Ljava/lang/String;
    .param p6, "token"    # Ljava/lang/String;
    .param p7, "param"    # Ljava/lang/String;
    .param p8, "tmpCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 83
    .local p9, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 84
    invoke-virtual/range {v1 .. v9}, Lfaf;->a(Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 115
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v1, p0, Lfaf;->b:Lezm;

    new-instance v10, Lfaf$2;

    move-object/from16 v0, p9

    invoke-direct {v10, p0, v0}, Lfaf$2;-><init>(Lfaf;Lcma;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v10}, Lezm;->a(Ljava/lang/String;Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcma;)V
    .locals 1
    .param p1, "mobile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lfaf;->b:Lezm;

    invoke-interface {v0, p1, p2}, Lezm;->a(Ljava/lang/String;Lcma;)V

    .line 209
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ILcma;)V
    .locals 1
    .param p1, "mobile"    # Ljava/lang/String;
    .param p2, "smsCode"    # Ljava/lang/String;
    .param p3, "bizType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iget-object v0, p0, Lfaf;->b:Lezm;

    invoke-interface {v0, p1, p2, p3, p4}, Lezm;->a(Ljava/lang/String;Ljava/lang/String;ILcma;)V

    .line 214
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcfw;Lcfo;Lcma;)V
    .locals 6
    .param p1, "mobile"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "secureModel"    # Lcfw;
    .param p4, "personalDeviceModel"    # Lcfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcfw;",
            "Lcfo;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 191
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    iget-object v0, p0, Lfaf;->b:Lezm;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lezm;->a(Ljava/lang/String;Ljava/lang/String;Lcfw;Lcfo;Lcma;)V

    .line 192
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 1
    .param p1, "mobile"    # Ljava/lang/String;
    .param p2, "tempCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcge;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p3, "listener":Lcma;, "Lcma<Lcge;>;"
    iget-object v0, p0, Lfaf;->b:Lezm;

    invoke-interface {v0, p1, p2, p3}, Lezm;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 182
    return-void
.end method
