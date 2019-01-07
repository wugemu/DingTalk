.class public Lcom/alibaba/android/search/model/idl/objects/OrgRightsInfoObject;
.super Ljava/lang/Object;
.source "OrgRightsInfoObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public capacity:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public count:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public deptIds:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public endTime:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public oldTime:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public status:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public type:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public uids:Ljava/lang/String;
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

.method public static fromIDLModel(Leos;)Lcom/alibaba/android/search/model/idl/objects/OrgRightsInfoObject;
    .locals 8
    .param p0, "model"    # Leos;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 46
    if-nez p0, :cond_0

    move-object v0, v1

    .line 60
    :goto_0
    return-object v0

    .line 50
    :cond_0
    new-instance v0, Lcom/alibaba/android/search/model/idl/objects/OrgRightsInfoObject;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/idl/objects/OrgRightsInfoObject;-><init>()V

    .line 51
    .local v0, "object":Lcom/alibaba/android/search/model/idl/objects/OrgRightsInfoObject;
    iget-object v2, p0, Leos;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 51
    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/OrgRightsInfoObject;->orgId:J

    .line 52
    iget-object v2, p0, Leos;->b:Ljava/lang/Integer;

    .line 2033
    invoke-static {v2, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 52
    iput v2, v0, Lcom/alibaba/android/search/model/idl/objects/OrgRightsInfoObject;->type:I

    .line 53
    iget-object v2, p0, Leos;->c:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/search/model/idl/objects/OrgRightsInfoObject;->deptIds:Ljava/lang/String;

    .line 54
    iget-object v2, p0, Leos;->d:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/search/model/idl/objects/OrgRightsInfoObject;->uids:Ljava/lang/String;

    .line 55
    iget-object v2, p0, Leos;->e:Ljava/lang/Integer;

    .line 3033
    invoke-static {v2, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 55
    iput v2, v0, Lcom/alibaba/android/search/model/idl/objects/OrgRightsInfoObject;->capacity:I

    .line 4033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 56
    iput v1, v0, Lcom/alibaba/android/search/model/idl/objects/OrgRightsInfoObject;->status:I

    .line 57
    iget-object v1, p0, Leos;->f:Ljava/lang/Long;

    .line 4044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 57
    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/OrgRightsInfoObject;->oldTime:J

    .line 58
    iget-object v1, p0, Leos;->h:Ljava/lang/Long;

    .line 5044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 58
    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/OrgRightsInfoObject;->endTime:J

    .line 59
    iget-object v1, p0, Leos;->g:Ljava/lang/Integer;

    .line 6033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 59
    iput v1, v0, Lcom/alibaba/android/search/model/idl/objects/OrgRightsInfoObject;->count:I

    goto :goto_0
.end method
