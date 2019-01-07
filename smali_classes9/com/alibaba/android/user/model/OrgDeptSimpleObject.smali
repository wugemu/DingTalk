.class public Lcom/alibaba/android/user/model/OrgDeptSimpleObject;
.super Ljava/lang/Object;
.source "OrgDeptSimpleObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5c634aa8e284cb04L


# instance fields
.field public deptId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public deptName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lfpc;)Lcom/alibaba/android/user/model/OrgDeptSimpleObject;
    .locals 6
    .param p0, "model"    # Lfpc;

    .prologue
    const-wide/16 v4, 0x0

    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/model/OrgDeptSimpleObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/OrgDeptSimpleObject;-><init>()V

    .line 34
    .local v0, "object":Lcom/alibaba/android/user/model/OrgDeptSimpleObject;
    iget-object v1, p0, Lfpc;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 34
    iput-wide v2, v0, Lcom/alibaba/android/user/model/OrgDeptSimpleObject;->orgId:J

    .line 35
    iget-object v1, p0, Lfpc;->b:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 35
    iput-wide v2, v0, Lcom/alibaba/android/user/model/OrgDeptSimpleObject;->deptId:J

    .line 36
    iget-object v1, p0, Lfpc;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/OrgDeptSimpleObject;->deptName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    if-ne p0, p1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v1

    .line 52
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 54
    check-cast v0, Lcom/alibaba/android/user/model/OrgDeptSimpleObject;

    .line 56
    .local v0, "that":Lcom/alibaba/android/user/model/OrgDeptSimpleObject;
    iget-wide v4, p0, Lcom/alibaba/android/user/model/OrgDeptSimpleObject;->orgId:J

    iget-wide v6, v0, Lcom/alibaba/android/user/model/OrgDeptSimpleObject;->orgId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 57
    :cond_4
    iget-wide v4, p0, Lcom/alibaba/android/user/model/OrgDeptSimpleObject;->deptId:J

    iget-wide v6, v0, Lcom/alibaba/android/user/model/OrgDeptSimpleObject;->deptId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public toIDLModel()Lfpc;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 42
    new-instance v0, Lfpc;

    invoke-direct {v0}, Lfpc;-><init>()V

    .line 43
    .local v0, "model":Lfpc;
    iget-wide v2, p0, Lcom/alibaba/android/user/model/OrgDeptSimpleObject;->orgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lfpc;->a:Ljava/lang/Long;

    .line 44
    iget-wide v2, p0, Lcom/alibaba/android/user/model/OrgDeptSimpleObject;->deptId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lfpc;->b:Ljava/lang/Long;

    .line 45
    iget-object v1, p0, Lcom/alibaba/android/user/model/OrgDeptSimpleObject;->deptName:Ljava/lang/String;

    iput-object v1, v0, Lfpc;->c:Ljava/lang/String;

    .line 46
    return-object v0
.end method
