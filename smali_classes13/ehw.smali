.class public Lehw;
.super Ljava/lang/Object;
.source "FocusDeviceObjectListManager.java"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field public a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/projection/data/FocusDeviceObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lehw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lehw;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lehw;->a:Ljava/util/HashMap;

    .line 42
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lehw;->a:Ljava/util/HashMap;

    .line 43
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lehw;->c:Ljava/util/HashMap;

    .line 45
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 46
    .local v0, "extensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v0, :cond_1

    .line 47
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 48
    .local v2, "orgEmployeeObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 49
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 50
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v4, :cond_0

    .line 51
    iget-object v4, p0, Lehw;->c:Ljava/util/HashMap;

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 57
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v2    # "orgEmployeeObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    :cond_1
    iget-object v3, p0, Lehw;->c:Ljava/util/HashMap;

    const-string/jumbo v4, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Legm$e;->dt_focus_recent_devices:I

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "orgId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 286
    move-object v0, p1

    .line 287
    .local v0, "orgName":Ljava/lang/String;
    iget-object v1, p0, Lehw;->c:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lehw;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 288
    iget-object v1, p0, Lehw;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "orgName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 290
    .restart local v0    # "orgName":Ljava/lang/String;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;Z)Ljava/util/List;
    .locals 8
    .param p2, "beWithHead"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/projection/data/FocusDeviceObject;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/projection/data/FocusDeviceObject;>;"
    const/4 v5, 0x0

    .line 206
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 207
    :cond_0
    const/4 v1, 0x0

    .line 242
    :cond_1
    return-object v1

    .line 209
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;>;"
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .line 213
    .local v2, "object":Lcom/alibaba/android/projection/data/FocusDeviceObject;
    if-eqz v2, :cond_3

    .line 214
    new-instance v3, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;

    invoke-direct {v3}, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;-><init>()V

    .line 216
    .local v3, "objectListItem":Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;
    sget-object v4, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;->head:Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;

    iput-object v4, v3, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->mType:Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;

    .line 217
    iget-boolean v4, v2, Lcom/alibaba/android/projection/data/FocusDeviceObject;->beCached:Z

    if-eqz v4, :cond_5

    .line 218
    const-string/jumbo v4, "-1"

    iput-object v4, v3, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->orgId:Ljava/lang/String;

    .line 219
    iput-boolean v5, v2, Lcom/alibaba/android/projection/data/FocusDeviceObject;->beCached:Z

    .line 223
    :goto_0
    iget-object v4, v3, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->orgId:Ljava/lang/String;

    invoke-direct {p0, v4}, Lehw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->orgName:Ljava/lang/String;

    .line 225
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    .end local v3    # "objectListItem":Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .line 231
    .local v0, "deviceObject":Lcom/alibaba/android/projection/data/FocusDeviceObject;
    if-eqz v0, :cond_4

    .line 232
    new-instance v3, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;

    invoke-direct {v3}, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;-><init>()V

    .line 234
    .restart local v3    # "objectListItem":Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;
    sget-object v5, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;->device:Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;

    iput-object v5, v3, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->mType:Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;

    .line 235
    iget-wide v6, v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->orgId:Ljava/lang/String;

    .line 236
    iget-object v5, v3, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->orgId:Ljava/lang/String;

    invoke-direct {p0, v5}, Lehw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->orgName:Ljava/lang/String;

    .line 237
    iput-object v0, v3, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->mFocusDeviceObject:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .line 238
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 221
    .end local v0    # "deviceObject":Lcom/alibaba/android/projection/data/FocusDeviceObject;
    :cond_5
    iget-wide v4, v2, Lcom/alibaba/android/projection/data/FocusDeviceObject;->orgId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->orgId:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/projection/data/FocusDeviceObject;)V
    .locals 4
    .param p1, "object"    # Lcom/alibaba/android/projection/data/FocusDeviceObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    if-eqz p1, :cond_1

    .line 66
    iget-wide v2, p1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->orgId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lehw;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 69
    .local v0, "currList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/projection/data/FocusDeviceObject;>;"
    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "currList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/projection/data/FocusDeviceObject;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .restart local v0    # "currList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/projection/data/FocusDeviceObject;>;"
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    const/4 v2, 0x0

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 74
    iget-object v2, p0, Lehw;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .end local v0    # "currList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/projection/data/FocusDeviceObject;>;"
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/projection/data/FocusDeviceObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/projection/data/FocusDeviceObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 81
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .line 82
    .local v0, "object":Lcom/alibaba/android/projection/data/FocusDeviceObject;
    invoke-virtual {p0, v0}, Lehw;->a(Lcom/alibaba/android/projection/data/FocusDeviceObject;)V

    goto :goto_0

    .line 85
    .end local v0    # "object":Lcom/alibaba/android/projection/data/FocusDeviceObject;
    :cond_0
    return-void
.end method
