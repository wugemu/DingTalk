.class public final Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;
.super Ljava/lang/Object;
.source "DeptSearchObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public deptId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public deptName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public managerName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public managerNickName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public managerUid:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public memberCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgMasterStaffId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgStaffId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Leoj;)Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;
    .locals 6
    .param p0, "model"    # Leoj;

    .prologue
    const-wide/16 v4, 0x0

    .line 49
    if-nez p0, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    .line 52
    :cond_0
    new-instance v0, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;-><init>()V

    .line 53
    .local v0, "object":Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;
    iget-object v1, p0, Leoj;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 53
    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;->managerUid:J

    .line 54
    iget-object v1, p0, Leoj;->b:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 54
    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;->orgId:J

    .line 55
    iget-object v1, p0, Leoj;->c:Ljava/lang/Long;

    .line 3044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 55
    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;->deptId:J

    .line 56
    iget-object v1, p0, Leoj;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;->orgStaffId:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Leoj;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;->orgMasterStaffId:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Leoj;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;->deptName:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Leoj;->g:Ljava/lang/Integer;

    .line 4033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 59
    iput v1, v0, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;->memberCount:I

    .line 60
    iget-object v1, p0, Leoj;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;->orgName:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Leoj;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;->managerName:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Leoj;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;->managerNickName:Ljava/lang/String;

    goto :goto_0
.end method
