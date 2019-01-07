.class public Lcom/alibaba/android/user/model/OrgManagerRoleObjectList;
.super Ljava/lang/Object;
.source "OrgManagerRoleObjectList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7c3e59d53b5a212aL


# instance fields
.field public hasMore:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public nextCursor:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public roles:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/OrgManagerRoleObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdlModel(Lfpn;)Lcom/alibaba/android/user/model/OrgManagerRoleObjectList;
    .locals 6
    .param p0, "modelList"    # Lfpn;

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 35
    const/4 v1, 0x0

    .line 49
    :goto_0
    return-object v1

    .line 37
    :cond_0
    new-instance v1, Lcom/alibaba/android/user/model/OrgManagerRoleObjectList;

    invoke-direct {v1}, Lcom/alibaba/android/user/model/OrgManagerRoleObjectList;-><init>()V

    .line 38
    .local v1, "object":Lcom/alibaba/android/user/model/OrgManagerRoleObjectList;
    iget-object v2, p0, Lfpn;->a:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lfpn;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v1, Lcom/alibaba/android/user/model/OrgManagerRoleObjectList;->roles:Ljava/util/List;

    .line 40
    iget-object v2, p0, Lfpn;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpm;

    .line 41
    .local v0, "model":Lfpm;
    if-eqz v0, :cond_1

    .line 44
    iget-object v3, v1, Lcom/alibaba/android/user/model/OrgManagerRoleObjectList;->roles:Ljava/util/List;

    invoke-static {v0}, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->fromIDLModel(Lfpm;)Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 47
    .end local v0    # "model":Lfpm;
    :cond_2
    iget-object v2, p0, Lfpn;->b:Ljava/lang/Boolean;

    .line 1022
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 47
    iput-boolean v2, v1, Lcom/alibaba/android/user/model/OrgManagerRoleObjectList;->hasMore:Z

    .line 48
    iget-object v2, p0, Lfpn;->c:Ljava/lang/Long;

    .line 1044
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 48
    iput-wide v2, v1, Lcom/alibaba/android/user/model/OrgManagerRoleObjectList;->nextCursor:J

    goto :goto_0
.end method


# virtual methods
.method public toIdlModel()Lfpn;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 54
    new-instance v0, Lfpn;

    invoke-direct {v0}, Lfpn;-><init>()V

    .line 55
    .local v0, "model":Lfpn;
    iget-object v2, p0, Lcom/alibaba/android/user/model/OrgManagerRoleObjectList;->roles:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/android/user/model/OrgManagerRoleObjectList;->roles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lfpn;->a:Ljava/util/List;

    .line 57
    iget-object v2, p0, Lcom/alibaba/android/user/model/OrgManagerRoleObjectList;->roles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    .line 58
    .local v1, "object":Lcom/alibaba/android/user/model/OrgManagerRoleObject;
    if-eqz v1, :cond_0

    .line 61
    iget-object v3, v0, Lfpn;->a:Ljava/util/List;

    invoke-virtual {v1}, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->toIDLModel()Lfpm;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    .end local v1    # "object":Lcom/alibaba/android/user/model/OrgManagerRoleObject;
    :cond_1
    iget-boolean v2, p0, Lcom/alibaba/android/user/model/OrgManagerRoleObjectList;->hasMore:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lfpn;->b:Ljava/lang/Boolean;

    .line 65
    iget-wide v2, p0, Lcom/alibaba/android/user/model/OrgManagerRoleObjectList;->nextCursor:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lfpn;->c:Ljava/lang/Long;

    .line 66
    return-object v0
.end method
