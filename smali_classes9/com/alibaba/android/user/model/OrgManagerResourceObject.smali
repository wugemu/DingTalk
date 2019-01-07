.class public Lcom/alibaba/android/user/model/OrgManagerResourceObject;
.super Ljava/lang/Object;
.source "OrgManagerResourceObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x521a6114ff751122L


# instance fields
.field public desc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public domainName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public icon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isGrant:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public resourceId:J
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

.method public static fromIDLModel(Lfpl;)Lcom/alibaba/android/user/model/OrgManagerResourceObject;
    .locals 4
    .param p0, "model"    # Lfpl;

    .prologue
    .line 41
    if-nez p0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    .line 44
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/OrgManagerResourceObject;-><init>()V

    .line 45
    .local v0, "object":Lcom/alibaba/android/user/model/OrgManagerResourceObject;
    iget-object v1, p0, Lfpl;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 45
    iput-wide v2, v0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->resourceId:J

    .line 46
    iget-object v1, p0, Lfpl;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->name:Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lfpl;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->icon:Ljava/lang/String;

    .line 48
    iget-object v1, p0, Lfpl;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->desc:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lfpl;->e:Ljava/lang/Boolean;

    .line 2022
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 49
    iput-boolean v1, v0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->isGrant:Z

    .line 50
    iget-object v1, p0, Lfpl;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->domainName:Ljava/lang/String;

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

    .line 68
    if-ne p0, p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v1

    .line 69
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

    .line 71
    check-cast v0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    .line 73
    .local v0, "that":Lcom/alibaba/android/user/model/OrgManagerResourceObject;
    iget-wide v4, p0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->resourceId:J

    iget-wide v6, v0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->resourceId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 74
    :cond_4
    iget-boolean v3, p0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->isGrant:Z

    iget-boolean v4, v0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->isGrant:Z

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 75
    :cond_5
    iget-object v3, p0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->domainName:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v1, p0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->domainName:Ljava/lang/String;

    iget-object v2, v0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->domainName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_6
    iget-object v3, v0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->domainName:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public toIDLModel()Lfpl;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 56
    new-instance v0, Lfpl;

    invoke-direct {v0}, Lfpl;-><init>()V

    .line 57
    .local v0, "model":Lfpl;
    iget-wide v2, p0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->resourceId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lfpl;->a:Ljava/lang/Long;

    .line 58
    iget-object v1, p0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->name:Ljava/lang/String;

    iput-object v1, v0, Lfpl;->b:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->icon:Ljava/lang/String;

    iput-object v1, v0, Lfpl;->c:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->desc:Ljava/lang/String;

    iput-object v1, v0, Lfpl;->d:Ljava/lang/String;

    .line 61
    iget-boolean v1, p0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->isGrant:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lfpl;->e:Ljava/lang/Boolean;

    .line 62
    iget-object v1, p0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->domainName:Ljava/lang/String;

    iput-object v1, v0, Lfpl;->f:Ljava/lang/String;

    .line 63
    return-object v0
.end method
