.class public Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoChangeObject;
.super Ljava/lang/Object;
.source "OrgInfoChangeObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x441e3bbf7fb837d7L


# instance fields
.field public authLevel:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public extension:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public logoMediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public oaTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public time:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdlModel(Lcez;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoChangeObject;
    .locals 6
    .param p0, "orgInfoChangeModel"    # Lcez;

    .prologue
    const-wide/16 v4, 0x0

    .line 49
    if-nez p0, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    .line 53
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoChangeObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoChangeObject;-><init>()V

    .line 54
    .local v0, "orgInfoChangeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoChangeObject;
    iget-object v1, p0, Lcez;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 54
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoChangeObject;->time:J

    .line 55
    iget-object v1, p0, Lcez;->b:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 55
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoChangeObject;->orgId:J

    .line 56
    iget-object v1, p0, Lcez;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoChangeObject;->orgName:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcez;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoChangeObject;->logoMediaId:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcez;->e:Ljava/lang/Integer;

    .line 3033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoChangeObject;->authLevel:Ljava/lang/Integer;

    .line 59
    iget-object v1, p0, Lcez;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoChangeObject;->oaTitle:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcez;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoChangeObject;->extension:Ljava/lang/String;

    goto :goto_0
.end method
