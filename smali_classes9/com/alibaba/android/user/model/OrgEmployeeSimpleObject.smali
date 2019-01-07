.class public Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;
.super Ljava/lang/Object;
.source "OrgEmployeeSimpleObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5e576e3de1cfb6cfL


# instance fields
.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public staffId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public uid:J
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

.method public static fromIDLModel(Lfpg;)Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;
    .locals 6
    .param p0, "model"    # Lfpg;

    .prologue
    const-wide/16 v4, 0x0

    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    .line 36
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;-><init>()V

    .line 37
    .local v0, "object":Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;
    iget-object v1, p0, Lfpg;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 37
    iput-wide v2, v0, Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;->orgId:J

    .line 38
    iget-object v1, p0, Lfpg;->b:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 38
    iput-wide v2, v0, Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;->uid:J

    .line 39
    iget-object v1, p0, Lfpg;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;->staffId:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lfpg;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;->name:Ljava/lang/String;

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

    .line 56
    if-ne p0, p1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v1

    .line 57
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

    .line 59
    check-cast v0, Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;

    .line 61
    .local v0, "that":Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;
    iget-wide v4, p0, Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;->uid:J

    iget-wide v6, v0, Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;->uid:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public toIDLModel()Lfpg;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 46
    new-instance v0, Lfpg;

    invoke-direct {v0}, Lfpg;-><init>()V

    .line 47
    .local v0, "model":Lfpg;
    iget-wide v2, p0, Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;->orgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lfpg;->a:Ljava/lang/Long;

    .line 48
    iget-wide v2, p0, Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lfpg;->b:Ljava/lang/Long;

    .line 49
    iget-object v1, p0, Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;->staffId:Ljava/lang/String;

    iput-object v1, v0, Lfpg;->c:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;->name:Ljava/lang/String;

    iput-object v1, v0, Lfpg;->d:Ljava/lang/String;

    .line 51
    return-object v0
.end method
