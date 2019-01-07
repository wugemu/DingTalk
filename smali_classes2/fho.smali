.class public final Lfho;
.super Ljava/lang/Object;
.source "EditManagerRolePresenter.java"

# interfaces
.implements Lfhn$a;


# instance fields
.field a:Lfhn$b;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lfhn$b;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Lfhn$b;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lfho;->b:Landroid/app/Activity;

    .line 25
    iput-object p2, p0, Lfho;->a:Lfhn$b;

    .line 26
    iget-object v0, p0, Lfho;->a:Lfhn$b;

    invoke-interface {v0, p0}, Lfhn$b;->setPresenter(Lcjd;)V

    .line 27
    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 7
    .param p1, "orgId"    # J
    .param p3, "orgManagerRoleId"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 102
    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    cmp-long v0, p3, v2

    if-gtz v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lfho;->a:Lfhn$b;

    invoke-interface {v0}, Lfhn$b;->b()V

    .line 106
    new-instance v6, Lfho$3;

    invoke-direct {v6, p0}, Lfho$3;-><init>(Lfho;)V

    .line 128
    .local v6, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iget-object v0, p0, Lfho;->b:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 129
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v1, Lcma;

    iget-object v2, p0, Lfho;->b:Landroid/app/Activity;

    invoke-interface {v0, v6, v1, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    check-cast v6, Lcma;

    .line 131
    .restart local v6    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    :cond_2
    invoke-static {}, Lfat;->a()Lezw;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    invoke-interface/range {v1 .. v6}, Lezw;->a(JJLcma;)V

    goto :goto_0
.end method

.method public final a(JLcom/alibaba/android/user/model/OrgManagerRoleObject;)V
    .locals 5
    .param p1, "orgId"    # J
    .param p3, "object"    # Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    .prologue
    .line 32
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    if-nez p3, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-object v1, p0, Lfho;->a:Lfhn$b;

    invoke-interface {v1}, Lfhn$b;->b()V

    .line 36
    new-instance v0, Lfho$1;

    invoke-direct {v0, p0}, Lfho$1;-><init>(Lfho;)V

    .line 58
    .local v0, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgManagerRoleObject;>;"
    iget-object v1, p0, Lfho;->b:Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 59
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v2, Lcma;

    iget-object v3, p0, Lfho;->b:Landroid/app/Activity;

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgManagerRoleObject;>;"
    check-cast v0, Lcma;

    .line 63
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgManagerRoleObject;>;"
    :cond_2
    invoke-static {}, Lfat;->a()Lezw;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, v0}, Lezw;->a(JLcom/alibaba/android/user/model/OrgManagerRoleObject;Lcma;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/user/model/OrgManagerRoleObject;)[J
    .locals 6
    .param p1, "object"    # Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 136
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->grantResources:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->grantResources:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 137
    :cond_0
    const/4 v0, 0x0

    .line 149
    :cond_1
    return-object v0

    .line 139
    :cond_2
    iget-object v4, p1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->grantResources:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [J

    .line 141
    .local v0, "grantedIds":[J
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->grantResources:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 142
    iget-object v4, p1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->grantResources:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    .line 143
    .local v3, "temp":Lcom/alibaba/android/user/model/OrgManagerResourceObject;
    if-eqz v3, :cond_3

    iget-boolean v4, v3, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->isGrant:Z

    if-eqz v4, :cond_3

    .line 144
    iget-wide v4, v3, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->resourceId:J

    aput-wide v4, v0, v1

    .line 141
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    :cond_3
    const-wide/16 v4, -0x1

    aput-wide v4, v0, v1

    goto :goto_1
.end method

.method public final b(JLcom/alibaba/android/user/model/OrgManagerRoleObject;)V
    .locals 5
    .param p1, "orgId"    # J
    .param p3, "object"    # Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    .prologue
    .line 68
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    if-nez p3, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v1, p0, Lfho;->a:Lfhn$b;

    invoke-interface {v1}, Lfhn$b;->b()V

    .line 72
    new-instance v0, Lfho$2;

    invoke-direct {v0, p0}, Lfho$2;-><init>(Lfho;)V

    .line 94
    .local v0, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgManagerRoleObject;>;"
    iget-object v1, p0, Lfho;->b:Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 95
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v2, Lcma;

    iget-object v3, p0, Lfho;->b:Landroid/app/Activity;

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgManagerRoleObject;>;"
    check-cast v0, Lcma;

    .line 97
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgManagerRoleObject;>;"
    :cond_2
    invoke-static {}, Lfat;->a()Lezw;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, v0}, Lezw;->b(JLcom/alibaba/android/user/model/OrgManagerRoleObject;Lcma;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lfho;->b:Landroid/app/Activity;

    .line 165
    iput-object v0, p0, Lfho;->a:Lfhn$b;

    .line 166
    return-void
.end method
