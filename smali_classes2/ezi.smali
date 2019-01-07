.class public final Lezi;
.super Lccu$a;
.source "UserService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lccu$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JLcct;)J
    .locals 2
    .param p1, "uid"    # J
    .param p3, "callback"    # Lcct;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final a(J)Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    .locals 1
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(JJ)Ljava/lang/String;
    .locals 1
    .param p1, "orgId"    # J
    .param p3, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(JJLcct;)V
    .locals 0
    .param p1, "uid"    # J
    .param p3, "OrgId"    # J
    .param p5, "callback"    # Lcct;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 91
    return-void
.end method

.method public final a(JJLcom/alibaba/android/dingtalk/userbase/model/UserEmployeeInfoObject;)V
    .locals 0
    .param p1, "orgId"    # J
    .param p3, "uid"    # J
    .param p5, "userEmployeeInfoObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserEmployeeInfoObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    return-void
.end method

.method public final a(JJLjava/lang/String;)V
    .locals 0
    .param p1, "orgId"    # J
    .param p3, "uid"    # J
    .param p5, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 46
    return-void
.end method

.method public final a(JLjava/lang/String;J)V
    .locals 0
    .param p1, "uid"    # J
    .param p3, "contactType"    # Ljava/lang/String;
    .param p4, "modifyTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 56
    return-void
.end method

.method public final a(Lcct;)V
    .locals 0
    .param p1, "listener"    # Lcct;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 176
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcct;)V
    .locals 2
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "staffId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcct;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 227
    invoke-static {}, Lfwd;->a()Lfwc;

    move-result-object v0

    new-instance v1, Lezi$3;

    invoke-direct {v1, p0, p3}, Lezi$3;-><init>(Lezi;Lcct;)V

    invoke-interface {v0, p1, p2, v1}, Lfwc;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 261
    return-void
.end method

.method public final a(Ljava/lang/String;[JLcct;)V
    .locals 0
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "users"    # [J
    .param p3, "callback"    # Lcct;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 166
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "userProfileObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    return-void
.end method

.method public final a(Ljava/util/List;Lcct;)V
    .locals 0
    .param p2, "callback"    # Lcct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;",
            "Lcct;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "userProfileObjectArrayList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    return-void
.end method

.method public final a([JJZZZLcct;)V
    .locals 0
    .param p1, "uids"    # [J
    .param p2, "orgId"    # J
    .param p4, "useLocal"    # Z
    .param p5, "attachUserProfile"    # Z
    .param p6, "refreshUnActive"    # Z
    .param p7, "callback"    # Lcct;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 96
    return-void
.end method

.method public final a([JLcct;Ljava/util/List;)V
    .locals 0
    .param p1, "users"    # [J
    .param p2, "listener"    # Lcct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Lcct;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 161
    .local p3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    return-void
.end method

.method public final a([JLcct;Z)V
    .locals 6
    .param p1, "users"    # [J
    .param p2, "callback"    # Lcct;
    .param p3, "quickResult"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .restart local v0    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    array-length v4, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-wide v2, p1, v1

    .line 114
    .local v2, "user":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v2    # "user":J
    :cond_0
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v1

    new-instance v4, Lezi$1;

    invoke-direct {v4, p0, p2}, Lezi$1;-><init>(Lezi;Lcct;)V

    invoke-interface {v1, v0, v4, p3}, Lfac;->a(Ljava/util/List;Lcma;Z)V

    .line 156
    return-void
.end method

.method public final b(JJ)Ljava/lang/String;
    .locals 1
    .param p1, "orgId"    # J
    .param p3, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(JJLcct;)V
    .locals 0
    .param p1, "uid"    # J
    .param p3, "OrgId"    # J
    .param p5, "callback"    # Lcct;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 101
    return-void
.end method

.method public final b(JLcct;)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "callback"    # Lcct;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v0

    new-instance v1, Lezi$2;

    invoke-direct {v1, p0, p3}, Lezi$2;-><init>(Lezi;Lcct;)V

    invoke-interface {v0, p1, p2, v1}, Lfac;->a(JLcma;)V

    .line 223
    return-void
.end method

.method public final b(Ljava/util/List;Lcct;)V
    .locals 0
    .param p2, "listener"    # Lcct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;",
            "Lcct;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "userProfileModeltList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    return-void
.end method

.method public final b(J)Z
    .locals 1
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public final c(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 1
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c(JJ)Ljava/lang/String;
    .locals 1
    .param p1, "orgId"    # J
    .param p3, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c(JJLcct;)V
    .locals 7
    .param p1, "uid"    # J
    .param p3, "orgId"    # J
    .param p5, "callback"    # Lcct;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 265
    new-instance v6, Lezi$4;

    invoke-direct {v6, p0, p5}, Lezi$4;-><init>(Lezi;Lcct;)V

    .line 306
    .local v6, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    invoke-interface/range {v1 .. v6}, Lfac;->a(JJLcma;)V

    .line 307
    return-void
.end method

.method public final d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 3
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 181
    :try_start_0
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lfac;->a(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 187
    :goto_0
    return-object v1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lciz;->a(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 187
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final d(JJ)V
    .locals 1
    .param p1, "uid"    # J
    .param p3, "version"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 311
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lfac;->a(JJ)V

    .line 312
    return-void
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 317
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lccu$a;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lciz;->a(Ljava/lang/String;)V

    .line 320
    throw v0
.end method
