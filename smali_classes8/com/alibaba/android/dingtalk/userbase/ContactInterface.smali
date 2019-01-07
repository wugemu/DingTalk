.class public abstract Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
.super Lckb;
.source "ContactInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;,
        Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 98
    sput v1, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a:I

    .line 99
    sput v2, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b:I

    .line 100
    const/4 v0, 0x4

    sput v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c:I

    .line 103
    const/4 v0, 0x0

    sput v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d:I

    .line 104
    sput v1, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e:I

    .line 105
    sput v2, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lckb;-><init>()V

    .line 590
    return-void
.end method

.method public static a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    return-object v0
.end method

.method public static v()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1030
    const-string/jumbo v3, "PreferenceForAppStart"

    invoke-static {v3}, Lcpl;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1031
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "pref_key_is_ali_staff"

    invoke-static {v3}, Lcpl;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1033
    .local v0, "result":Z
    if-nez v0, :cond_0

    const-string/jumbo v3, "pref_key_is_ali_staff"

    invoke-static {v3, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method


# virtual methods
.method public A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .locals 1

    .prologue
    .line 1197
    const/4 v0, 0x0

    return-object v0
.end method

.method public B()V
    .locals 0

    .prologue
    .line 1371
    return-void
.end method

.method public C()V
    .locals 0

    .prologue
    .line 1376
    return-void
.end method

.method public D()Lccq;
    .locals 1

    .prologue
    .line 1421
    const/4 v0, 0x0

    return-object v0
.end method

.method public E()Z
    .locals 1

    .prologue
    .line 1440
    const/4 v0, 0x0

    return v0
.end method

.method public F()V
    .locals 0

    .prologue
    .line 1447
    return-void
.end method

.method public G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1466
    const/4 v0, 0x0

    return-object v0
.end method

.method public H()V
    .locals 0

    .prologue
    .line 1480
    return-void
.end method

.method public I()Lccs;
    .locals 1

    .prologue
    .line 1483
    const/4 v0, 0x0

    return-object v0
.end method

.method public J()Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;
    .locals 1

    .prologue
    .line 1492
    const/4 v0, 0x0

    return-object v0
.end method

.method public K()V
    .locals 0

    .prologue
    .line 1506
    return-void
.end method

.method public L()V
    .locals 0

    .prologue
    .line 1511
    return-void
.end method

.method public M()V
    .locals 0

    .prologue
    .line 1516
    return-void
.end method

.method public N()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1563
    const/4 v0, 0x0

    return-object v0
.end method

.method public O()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1586
    const/4 v0, 0x0

    return-object v0
.end method

.method public P()Z
    .locals 1

    .prologue
    .line 1596
    const/4 v0, 0x1

    return v0
.end method

.method public Q()V
    .locals 0

    .prologue
    .line 1705
    return-void
.end method

.method public R()Z
    .locals 1

    .prologue
    .line 1708
    const/4 v0, 0x0

    return v0
.end method

.method public S()Z
    .locals 1

    .prologue
    .line 1712
    const/4 v0, 0x0

    return v0
.end method

.method public T()V
    .locals 0

    .prologue
    .line 1784
    return-void
.end method

.method public U()V
    .locals 0

    .prologue
    .line 1786
    return-void
.end method

.method public V()Z
    .locals 1

    .prologue
    .line 1816
    const/4 v0, 0x0

    return v0
.end method

.method public W()V
    .locals 0

    .prologue
    .line 1862
    return-void
.end method

.method public X()V
    .locals 0

    .prologue
    .line 1866
    return-void
.end method

.method public Y()Z
    .locals 1

    .prologue
    .line 1927
    const/4 v0, 0x0

    return v0
.end method

.method public Z()V
    .locals 0

    .prologue
    .line 1991
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;

    .prologue
    .line 577
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/String;)J
    .locals 2
    .param p1, "corpId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 304
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public a(Lchv;)Lchw;
    .locals 1
    .param p1, "certifyRequest"    # Lchv;

    .prologue
    .line 1503
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)Lcom/alibaba/android/dingtalk/userbase/AbsHomeContactFragment;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 428
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;J)Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;
    .locals 1
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p2, "orgId"    # J

    .prologue
    .line 1557
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/util/Map;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;"
        }
    .end annotation

    .prologue
    .line 545
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(JJ)Ljava/lang/String;
    .locals 1
    .param p1, "orgId"    # J
    .param p3, "uid"    # J

    .prologue
    .line 240
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;
    .locals 1
    .param p1, "nodeObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .prologue
    .line 509
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;
    .locals 1
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 234
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "switchKey"    # Ljava/lang/String;
    .param p3, "orgId"    # J

    .prologue
    .line 1364
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public a(JLjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "uid"    # J
    .param p3, "mobile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 527
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1748
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 1701
    return-void
.end method

.method public a(J)V
    .locals 0
    .param p1, "uid"    # J

    .prologue
    .line 280
    return-void
.end method

.method public a(JIILcma;)V
    .locals 0
    .param p1, "oid"    # J
    .param p3, "start"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 599
    .local p5, "listener":Lcma;, "Lcma<Ljava/util/List<Lcem;>;>;"
    return-void
.end method

.method public a(JJLcma;)V
    .locals 0
    .param p1, "uid"    # J
    .param p3, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p5, "callback":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    return-void
.end method

.method public a(JLcma;)V
    .locals 0
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p3, "callback":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    return-void
.end method

.method public a(JLcmi;)V
    .locals 0
    .param p1, "orgID"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcmi",
            "<",
            "Lcfa;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 920
    .local p3, "callback":Lcmi;, "Lcmi<Lcfa;>;"
    return-void
.end method

.method public a(JLcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V
    .locals 0
    .param p1, "uid"    # J
    .param p3, "userProfileExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .prologue
    .line 2074
    return-void
.end method

.method public a(JLjava/lang/String;Lcma;)V
    .locals 0
    .param p1, "orgId"    # J
    .param p3, "staffId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1580
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    return-void
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "orgId"    # J
    .param p3, "iconMediaId"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1615
    .local p6, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public a(JLjava/util/List;Lcma;)V
    .locals 0
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 570
    .local p3, "deptIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p4, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;>;"
    return-void
.end method

.method public a(JZLcma;)V
    .locals 0
    .param p1, "uid"    # J
    .param p3, "confirmed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2013
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 290
    return-void
.end method

.method public a(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "privacyType"    # I

    .prologue
    .line 703
    return-void
.end method

.method public a(Landroid/app/Activity;IILjava/lang/String;Ljava/lang/String;ILjava/util/List;ZZ)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "chooseMode"    # I
    .param p3, "chooseLimit"    # I
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "identify"    # Ljava/lang/String;
    .param p6, "chooseAction"    # I
    .param p8, "canChooseCurrentUser"    # Z
    .param p9, "filterSelf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<+",
            "Landroid/os/Parcelable;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p7, "selectMembers":Ljava/util/List;, "Ljava/util/List<+Landroid/os/Parcelable;>;"
    return-void
.end method

.method public a(Landroid/app/Activity;IILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "chooseMode"    # I
    .param p3, "selectCount"    # I
    .param p6, "identityFlag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1402
    .local p4, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p5, "orgDeptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    return-void
.end method

.method public a(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "reportType"    # I
    .param p3, "itemId"    # Ljava/lang/String;

    .prologue
    .line 218
    return-void
.end method

.method public a(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "reportType"    # I
    .param p3, "itemId"    # Ljava/lang/String;
    .param p4, "itemOwnerId"    # Ljava/lang/String;

    .prologue
    .line 411
    return-void
.end method

.method public a(Landroid/app/Activity;I[JJILjava/lang/String;[J[J)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "chooseMode"    # I
    .param p3, "uids"    # [J
    .param p4, "corpId"    # J
    .param p6, "chooseLimit"    # I
    .param p7, "title"    # Ljava/lang/String;
    .param p8, "selectedUids"    # [J
    .param p9, "disableUids"    # [J

    .prologue
    .line 406
    return-void
.end method

.method public a(Landroid/app/Activity;I[JJILjava/lang/String;[J[JLjava/util/HashMap;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "chooseMode"    # I
    .param p3, "uids"    # [J
    .param p4, "corpId"    # J
    .param p6, "chooseLimit"    # I
    .param p7, "title"    # Ljava/lang/String;
    .param p8, "selectedUids"    # [J
    .param p9, "disableUids"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I[JJI",
            "Ljava/lang/String;",
            "[J[J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 409
    .local p10, "nameMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    return-void
.end method

.method public a(Landroid/app/Activity;J)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uid"    # J

    .prologue
    .line 146
    return-void
.end method

.method public a(Landroid/app/Activity;JI)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uid"    # J
    .param p4, "source"    # I

    .prologue
    .line 1690
    return-void
.end method

.method public a(Landroid/app/Activity;JJLjava/lang/String;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uid"    # J
    .param p4, "orgId"    # J
    .param p6, "staffId"    # Ljava/lang/String;
    .param p7, "source"    # I

    .prologue
    .line 204
    return-void
.end method

.method public a(Landroid/app/Activity;JLandroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uid"    # J
    .param p4, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1162
    return-void
.end method

.method public a(Landroid/app/Activity;JLjava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J
    .param p4, "orgName"    # Ljava/lang/String;

    .prologue
    .line 1611
    return-void
.end method

.method public a(Landroid/app/Activity;JLjava/lang/String;ILcma;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J
    .param p4, "jumpUrl"    # Ljava/lang/String;
    .param p5, "minMemberCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1832
    .local p6, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uid"    # J
    .param p4, "mobile"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "fromNameCard"    # Z

    .prologue
    .line 179
    return-void
.end method

.method public a(Landroid/app/Activity;JZ)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uid"    # J
    .param p4, "forbiddenAddFriend"    # Z

    .prologue
    .line 154
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 222
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;Z)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "isFinishActivity"    # Z

    .prologue
    .line 357
    return-void
.end method

.method public a(Landroid/app/Activity;Lchs;Lcma;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "visitRecordRequestObject"    # Lchs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lchs;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1101
    .local p3, "eventListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    return-void
.end method

.method public a(Landroid/app/Activity;Lcma;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1658
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "request"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .prologue
    .line 223
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "selectedContactsRequest"    # Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;

    .prologue
    .line 1410
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "authOrgObject"    # Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    .prologue
    .line 1523
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "authOrgObject"    # Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;
    .param p3, "from"    # Ljava/lang/String;

    .prologue
    .line 1530
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;

    .prologue
    .line 2090
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 186
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p3, "conversationName"    # Ljava/lang/String;

    .prologue
    .line 206
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p3, "conversationName"    # Ljava/lang/String;
    .param p4, "forbiddenAddFriend"    # Z

    .prologue
    .line 215
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p3, "forbiddenAddFriend"    # Z

    .prologue
    .line 194
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 161
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;IIIZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversationId"    # Ljava/lang/String;
    .param p3, "chooseMode"    # I
    .param p4, "chooseLimit"    # I
    .param p5, "limitMsgRes"    # I
    .param p6, "filterMyself"    # Z
    .param p7, "argments"    # Landroid/os/Bundle;

    .prologue
    .line 219
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1913
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "mobile"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 169
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "corpId"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "from"    # Ljava/lang/String;

    .prologue
    .line 1539
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1092
    .local p3, "fillData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    return-void
.end method

.method public a(Landroid/app/Activity;Z)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isNeedSyn"    # Z

    .prologue
    .line 617
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0
    .param p1, "activity"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 486
    return-void
.end method

.method public a(Landroid/content/Context;J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J

    .prologue
    .line 538
    return-void
.end method

.method public a(Landroid/content/Context;JLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J
    .param p4, "fillData"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .param p5, "requestCode"    # I

    .prologue
    .line 954
    return-void
.end method

.method public a(Landroid/content/Context;JLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J
    .param p4, "fillData"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .param p5, "identify"    # Ljava/lang/String;

    .prologue
    .line 957
    return-void
.end method

.method public a(Landroid/content/Context;JLjava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J
    .param p4, "orgName"    # Ljava/lang/String;

    .prologue
    .line 536
    return-void
.end method

.method public a(Landroid/content/Context;JLjava/lang/String;J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # J
    .param p4, "contactType"    # Ljava/lang/String;
    .param p5, "modifyTime"    # J

    .prologue
    .line 282
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 353
    return-void
.end method

.method public a(Landroid/content/Context;Lcma;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 951
    .local p2, "callback":Lcma;, "Lcma<Ljava/lang/String;>;"
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;

    .prologue
    .line 1433
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 492
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 351
    return-void
.end method

.method public a(Lcfs;)V
    .locals 0
    .param p1, "changedModel"    # Lcfs;

    .prologue
    .line 425
    return-void
.end method

.method public a(Lcjo$a;)V
    .locals 0
    .param p1, "listener"    # Lcjo$a;

    .prologue
    .line 296
    return-void
.end method

.method public a(Lcma;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Lchh;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 412
    .local p1, "listener":Lcma;, "Lcma<Lchh;>;"
    return-void
.end method

.method public a(Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;I)V
    .locals 0
    .param p1, "commonContactObject"    # Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    .param p2, "source"    # I

    .prologue
    .line 1424
    return-void
.end method

.method public a(Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;ZLcma;)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;
    .param p2, "confirmed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;",
            "Z",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2005
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public a(Lcom/alibaba/android/dingtalk/userbase/model/bizcard/BusinessCardObject;Lcma;)V
    .locals 0
    .param p1, "businessCardObject"    # Lcom/alibaba/android/dingtalk/userbase/model/bizcard/BusinessCardObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/userbase/model/bizcard/BusinessCardObject;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1770
    .local p2, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 293
    return-void
.end method

.method public a(Ljava/lang/String;IILcma;)V
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 552
    .local p4, "listApiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;>;"
    return-void
.end method

.method public a(Ljava/lang/String;IJLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcma;)V
    .locals 0
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "keyType"    # I
    .param p3, "orgId"    # J
    .param p5, "filter"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1788
    .local p6, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;>;"
    return-void
.end method

.method public a(Ljava/lang/String;JLcma;)V
    .locals 0
    .param p1, "mobile"    # Ljava/lang/String;
    .param p2, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 558
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;"
    return-void
.end method

.method public a(Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "dingTalkId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 615
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILcma;)V
    .locals 0
    .param p1, "stateCode"    # Ljava/lang/String;
    .param p2, "mobile"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 841
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "staffId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Long;>;"
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Lcma;)V
    .locals 0
    .param p1, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p2, "staffIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "listener":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/Long;>;>;"
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Lcma;Z)V
    .locals 0
    .param p1, "corpId"    # Ljava/lang/String;
    .param p4, "expireLimitCount"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p2, "userDisabledList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "listener":Lcma;, "Lcma<Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;>;"
    return-void
.end method

.method public a(Ljava/util/List;)V
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

    .prologue
    .line 292
    .local p1, "userProfileObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    return-void
.end method

.method public a(Ljava/util/List;JZZLcma;)V
    .locals 0
    .param p2, "OrgId"    # J
    .param p4, "useLocal"    # Z
    .param p5, "attachUserProfile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;JZZ",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcgc;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 322
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p6, "callback":Lcma;, "Lcma<Ljava/util/List<Lcgc;>;>;"
    return-void
.end method

.method public a(Ljava/util/List;JZZZLcma;)V
    .locals 0
    .param p2, "orgId"    # J
    .param p4, "useLocal"    # Z
    .param p5, "attachUserProfile"    # Z
    .param p6, "refreshUnActive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;JZZZ",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcgc;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p7, "callback":Lcma;, "Lcma<Ljava/util/List<Lcgc;>;>;"
    return-void
.end method

.method public a(Ljava/util/List;Lcma;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "callback":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    return-void
.end method

.method public a(Ljava/util/List;Lcma;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    .local p3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    return-void
.end method

.method public a(Ljava/util/List;Lcma;Z)V
    .locals 0
    .param p3, "quickResult"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "callback":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    return-void
.end method

.method public a(Ljava/util/List;ZLcma;)V
    .locals 0
    .param p2, "supportFixLine"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;Z",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 668
    .local p1, "identities":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p3, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;>;"
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    .line 1715
    return-void
.end method

.method public a(ZLjava/util/List;Lcma;)V
    .locals 0
    .param p1, "refreshUnactive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 670
    .local p2, "users":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p3, "callback":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    return-void
.end method

.method public a(JZ)Z
    .locals 1
    .param p1, "orgId"    # J
    .param p3, "includeHkMcTw"    # Z

    .prologue
    .line 1600
    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/content/Context;Z)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checkLang"    # Z

    .prologue
    .line 1622
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/content/Context;ZZ)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checkLang"    # Z
    .param p3, "includeHkMcTw"    # Z

    .prologue
    .line 1618
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/String;J)Z
    .locals 1
    .param p1, "switchKey"    # Ljava/lang/String;
    .param p2, "orgId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1210
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1760
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "switchKey"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .prologue
    .line 1302
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "switchKey"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z
    .param p4, "ignoreDingtalkSpecConfig"    # Z

    .prologue
    .line 1333
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "switchKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1288
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/String;ZZ)Z
    .locals 1
    .param p1, "switchKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "ignoreDingtalkSpecConfig"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1318
    const/4 v0, 0x0

    return v0
.end method

.method public aa()V
    .locals 0

    .prologue
    .line 2033
    return-void
.end method

.method public ab()V
    .locals 0

    .prologue
    .line 2038
    return-void
.end method

.method public ac()Z
    .locals 1

    .prologue
    .line 2056
    const/4 v0, 0x0

    return v0
.end method

.method public ad()Z
    .locals 1

    .prologue
    .line 2062
    const/4 v0, 0x0

    return v0
.end method

.method public ae()Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;
    .locals 1

    .prologue
    .line 2081
    const/4 v0, 0x0

    return-object v0
.end method

.method public af()Z
    .locals 1

    .prologue
    .line 2103
    const/4 v0, 0x0

    return v0
.end method

.method public ag()Z
    .locals 1

    .prologue
    .line 2107
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)I
    .locals 1
    .param p1, "nodeObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .prologue
    .line 513
    const/4 v0, 0x0

    return v0
.end method

.method public b(J)Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 284
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/util/Map;)Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;"
        }
    .end annotation

    .prologue
    .line 549
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(JJ)Ljava/lang/String;
    .locals 1
    .param p1, "orgId"    # J
    .param p3, "uid"    # J

    .prologue
    .line 243
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;
    .locals 1
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 348
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/util/List;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    .local p1, "phoneNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(JIILcma;)V
    .locals 0
    .param p1, "uid"    # J
    .param p3, "type"    # I
    .param p4, "source"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 977
    .local p5, "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public b(JJLcma;)V
    .locals 0
    .param p1, "uid"    # J
    .param p3, "OrgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcma",
            "<",
            "Lcgc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p5, "callback":Lcma;, "Lcma<Lcgc;>;"
    return-void
.end method

.method public b(JLcma;)V
    .locals 0
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 568
    .local p3, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;>;"
    return-void
.end method

.method public b(JLjava/util/List;Lcma;)V
    .locals 0
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1041
    .local p3, "staffIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "listener":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/Long;>;>;"
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 373
    return-void
.end method

.method public b(Landroid/app/Activity;J)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J

    .prologue
    .line 445
    return-void
.end method

.method public b(Landroid/app/Activity;JLandroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "templateId"    # J
    .param p4, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1170
    return-void
.end method

.method public b(Landroid/app/Activity;JLjava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J
    .param p4, "source"    # Ljava/lang/String;

    .prologue
    .line 1846
    return-void
.end method

.method public b(Landroid/app/Activity;JZ)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J
    .param p4, "canManage"    # Z

    .prologue
    .line 274
    return-void
.end method

.method public b(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 229
    return-void
.end method

.method public b(Landroid/app/Activity;Lcma;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1782
    .local p2, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public b(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "contactChooseRequest"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .prologue
    .line 261
    return-void
.end method

.method public b(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversationId"    # Ljava/lang/String;

    .prologue
    .line 231
    return-void
.end method

.method public b(Landroid/app/Activity;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "zimId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1942
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    return-void
.end method

.method public b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversationId"    # Ljava/lang/String;
    .param p3, "link"    # Ljava/lang/String;

    .prologue
    .line 1780
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 524
    return-void
.end method

.method public b(Landroid/content/Context;J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J

    .prologue
    .line 937
    return-void
.end method

.method public b(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 363
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "corpId"    # Ljava/lang/String;

    .prologue
    .line 994
    return-void
.end method

.method public b(Lcjo$a;)V
    .locals 0
    .param p1, "listener"    # Lcjo$a;

    .prologue
    .line 297
    return-void
.end method

.method public b(Lcma;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcdd;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 595
    .local p1, "listApiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcdd;>;>;"
    return-void
.end method

.method public b(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 871
    return-void
.end method

.method public b(Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "mobile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 677
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2088
    .local p3, "apiEventListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/util/List;Lcma;)V
    .locals 0
    .param p1, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p2, "staffIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "listener":Lcma;, "Lcma<Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;>;"
    return-void
.end method

.method public b(Ljava/util/List;Lcma;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 542
    .local p1, "emailList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    return-void
.end method

.method public b(Ljava/util/List;Lcma;Z)V
    .locals 0
    .param p3, "quickResult"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 338
    .local p1, "longs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "listApiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "switchKey"    # Ljava/lang/String;

    .prologue
    .line 1273
    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(JJ)Ljava/lang/String;
    .locals 1
    .param p1, "orgId"    # J
    .param p3, "uid"    # J

    .prologue
    .line 246
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 573
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "switchKey"    # Ljava/lang/String;

    .prologue
    .line 1353
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public c(Ljava/util/List;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 555
    .local p1, "phoneNumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/util/Map;
    .locals 1
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1450
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(JJLcma;)V
    .locals 0
    .param p1, "orgId"    # J
    .param p3, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1109
    .local p5, "eventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;>;"
    return-void
.end method

.method public c(JLcma;)V
    .locals 0
    .param p1, "oid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1637
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;>;"
    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 709
    return-void
.end method

.method public c(Landroid/app/Activity;J)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J

    .prologue
    .line 808
    return-void
.end method

.method public c(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "params"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 260
    return-void
.end method

.method public c(Landroid/app/Activity;Lcma;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1880
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 534
    return-void
.end method

.method public c(Landroid/content/Context;J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J

    .prologue
    .line 940
    return-void
.end method

.method public c(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 365
    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fallbackUrl"    # Ljava/lang/String;

    .prologue
    .line 1077
    return-void
.end method

.method public c(Lcjo$a;)V
    .locals 0
    .param p1, "eventListener"    # Lcjo$a;

    .prologue
    .line 340
    return-void
.end method

.method public c(Lcma;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1147
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public c(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 881
    return-void
.end method

.method public c(Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 848
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/util/List;Lcma;)V
    .locals 0
    .param p1, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p3, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;>;"
    return-void
.end method

.method public c(Ljava/util/List;Lcma;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcma",
            "<",
            "Lcfr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 562
    .local p1, "typesForServer":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "listener":Lcma;, "Lcma<Lcfr;>;"
    return-void
.end method

.method public c(J)Z
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public d(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 581
    const/4 v0, 0x0

    return v0
.end method

.method public d()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(JJ)Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;
    .locals 1
    .param p1, "orgId"    # J
    .param p3, "uid"    # J

    .prologue
    .line 299
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 318
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 1685
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;
    .locals 1
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 1472
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(JLcma;)V
    .locals 0
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1969
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    return-void
.end method

.method public d(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 752
    return-void
.end method

.method public d(Landroid/app/Activity;J)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uid"    # J

    .prologue
    .line 1154
    return-void
.end method

.method public d(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 355
    return-void
.end method

.method public d(Landroid/app/Activity;Lcma;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1920
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 684
    return-void
.end method

.method public d(Landroid/content/Context;J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J

    .prologue
    .line 943
    return-void
.end method

.method public d(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1489
    return-void
.end method

.method public d(Lcjo$a;)V
    .locals 0
    .param p1, "eventListener"    # Lcjo$a;

    .prologue
    .line 341
    return-void
.end method

.method public d(Lcma;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1797
    .local p1, "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;>;>;"
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "nick"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 1703
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/util/List;Lcma;)V
    .locals 0
    .param p1, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 343
    .local p2, "users":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "callback":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;>;"
    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 624
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/User;>;"
    return-void
.end method

.method public d(Ljava/util/List;Lcma;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 665
    .local p1, "identities":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p2, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;>;"
    return-void
.end method

.method public e(J)I
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public e(Ljava/lang/String;)I
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 585
    const/4 v0, 0x0

    return v0
.end method

.method public e(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;
    .locals 1
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 1547
    const/4 v0, 0x0

    return-object v0
.end method

.method public e(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1997
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()V
    .locals 0

    .prologue
    .line 435
    return-void
.end method

.method public e(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 761
    return-void
.end method

.method public e(Landroid/app/Activity;J)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J

    .prologue
    .line 1455
    return-void
.end method

.method public e(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 359
    return-void
.end method

.method public e(Landroid/app/Activity;Lcma;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1935
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public e(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1012
    return-void
.end method

.method public e(Landroid/content/Context;J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J

    .prologue
    .line 948
    return-void
.end method

.method public e(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1652
    return-void
.end method

.method public e(Lcma;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1839
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public f(Landroid/app/Activity;)Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 815
    const/4 v0, 0x0

    return-object v0
.end method

.method public f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 414
    const/4 v0, 0x0

    return-object v0
.end method

.method public f(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 588
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()V
    .locals 0

    .prologue
    .line 437
    return-void
.end method

.method public f(Landroid/app/Activity;J)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J

    .prologue
    .line 1459
    return-void
.end method

.method public f(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 361
    return-void
.end method

.method public f(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1072
    return-void
.end method

.method public f(Landroid/content/Context;J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J

    .prologue
    .line 969
    return-void
.end method

.method public f(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 2051
    return-void
.end method

.method public f(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Z
    .locals 1
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 1567
    const/4 v0, 0x0

    return v0
.end method

.method public g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .locals 1
    .param p1, "oid"    # J

    .prologue
    .line 505
    const/4 v0, 0x0

    return-object v0
.end method

.method public g(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 662
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()V
    .locals 0

    .prologue
    .line 447
    return-void
.end method

.method public g(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1189
    return-void
.end method

.method public g(Landroid/app/Activity;J)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J

    .prologue
    .line 1593
    return-void
.end method

.method public g(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 375
    return-void
.end method

.method public g(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1469
    return-void
.end method

.method public g(Landroid/content/Context;J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J

    .prologue
    .line 985
    return-void
.end method

.method public g(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2065
    return-void
.end method

.method public g(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Z
    .locals 1
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 1571
    const/4 v0, 0x0

    return v0
.end method

.method public h(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;
    .locals 1
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 1698
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()V
    .locals 0

    .prologue
    .line 452
    return-void
.end method

.method public h(J)V
    .locals 0
    .param p1, "uid"    # J

    .prologue
    .line 518
    return-void
.end method

.method public h(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1382
    return-void
.end method

.method public h(Landroid/app/Activity;J)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uid"    # J

    .prologue
    .line 1635
    return-void
.end method

.method public h(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 377
    return-void
.end method

.method public h(Landroid/content/Context;J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J

    .prologue
    .line 1578
    return-void
.end method

.method public h(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2067
    return-void
.end method

.method public h(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1626
    const/4 v0, 0x0

    return v0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 1
    .param p1, "switchKey"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1263
    const/4 v0, 0x0

    return v0
.end method

.method public i(J)Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 531
    const/4 v0, 0x0

    return-object v0
.end method

.method public i(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "switchKey"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1338
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public i()V
    .locals 0

    .prologue
    .line 457
    return-void
.end method

.method public i(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1850
    return-void
.end method

.method public i(Landroid/app/Activity;J)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J

    .prologue
    .line 1810
    return-void
.end method

.method public i(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 379
    return-void
.end method

.method public i(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1632
    return-void
.end method

.method public i(Landroid/content/Context;J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # J

    .prologue
    .line 1732
    return-void
.end method

.method public i(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2077
    return-void
.end method

.method public j(J)Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 906
    const/4 v0, 0x0

    return-object v0
.end method

.method public j()V
    .locals 0

    .prologue
    .line 459
    return-void
.end method

.method public j(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1854
    return-void
.end method

.method public j(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 479
    return-void
.end method

.method public j(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1646
    return-void
.end method

.method public j(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2079
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 1388
    return-void
.end method

.method public k(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 1477
    const/4 v0, 0x0

    return-object v0
.end method

.method public k()V
    .locals 0

    .prologue
    .line 522
    return-void
.end method

.method public k(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2100
    return-void
.end method

.method public k(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 490
    return-void
.end method

.method public k(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1739
    return-void
.end method

.method public k(J)Z
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 1722
    const/4 v0, 0x0

    return v0
.end method

.method public l(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 2069
    const/4 v0, 0x0

    return-object v0
.end method

.method public l(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 1688
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public l()V
    .locals 0

    .prologue
    .line 540
    return-void
.end method

.method public l(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 692
    return-void
.end method

.method public l(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2093
    const/4 v0, 0x0

    return v0
.end method

.method public m(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 1950
    return-object p1
.end method

.method public m()V
    .locals 0

    .prologue
    .line 621
    return-void
.end method

.method public m(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 695
    return-void
.end method

.method public n(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 1959
    return-object p1
.end method

.method public n(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 717
    return-void
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 733
    const/4 v0, 0x0

    return v0
.end method

.method public o()Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 742
    const/4 v0, 0x0

    return-object v0
.end method

.method public o(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 726
    return-void
.end method

.method public p()I
    .locals 1

    .prologue
    .line 783
    sget v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f:I

    return v0
.end method

.method public p(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 780
    return-void
.end method

.method public q()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 863
    return-void
.end method

.method public q(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 801
    return-void
.end method

.method public r()V
    .locals 0

    .prologue
    .line 876
    return-void
.end method

.method public r(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1067
    return-void
.end method

.method public s()V
    .locals 0

    .prologue
    .line 886
    return-void
.end method

.method public s(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 1084
    return-void
.end method

.method public t()Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;
    .locals 1

    .prologue
    .line 912
    const/4 v0, 0x0

    return-object v0
.end method

.method public t(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1184
    return-void
.end method

.method public u()Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;
    .locals 1

    .prologue
    .line 918
    const/4 v0, 0x0

    return-object v0
.end method

.method public u(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1486
    return-void
.end method

.method public v(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1590
    return-void
.end method

.method public w(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1604
    return-void
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 1127
    const/4 v0, 0x0

    return v0
.end method

.method public x(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1640
    return-void
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 1136
    const/4 v0, 0x0

    return v0
.end method

.method public y()V
    .locals 0

    .prologue
    .line 1142
    return-void
.end method

.method public y(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1674
    return-void
.end method

.method public z()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1176
    const/4 v0, 0x0

    return-object v0
.end method

.method public z(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1896
    return-void
.end method
