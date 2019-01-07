.class public Lcom/alibaba/android/user/model/SWHrmObject;
.super Ljava/lang/Object;
.source "SWHrmObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5085204104df8acbL


# instance fields
.field public mEditEmployeeUrl:Ljava/lang/String;

.field public mEnabled:Z

.field public mOrgId:J

.field public mPreEntryUrl:Ljava/lang/String;

.field public mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lfqh;)Lcom/alibaba/android/user/model/SWHrmObject;
    .locals 4
    .param p0, "model"    # Lfqh;

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "object":Lcom/alibaba/android/user/model/SWHrmObject;
    if-eqz p0, :cond_0

    .line 39
    new-instance v0, Lcom/alibaba/android/user/model/SWHrmObject;

    .end local v0    # "object":Lcom/alibaba/android/user/model/SWHrmObject;
    invoke-direct {v0}, Lcom/alibaba/android/user/model/SWHrmObject;-><init>()V

    .line 40
    .restart local v0    # "object":Lcom/alibaba/android/user/model/SWHrmObject;
    iget-object v1, p0, Lfqh;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 40
    iput-wide v2, v0, Lcom/alibaba/android/user/model/SWHrmObject;->mOrgId:J

    .line 41
    iget-object v1, p0, Lfqh;->b:Ljava/lang/Boolean;

    .line 2022
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 41
    iput-boolean v1, v0, Lcom/alibaba/android/user/model/SWHrmObject;->mEnabled:Z

    .line 42
    iget-object v1, p0, Lfqh;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/SWHrmObject;->mUrl:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lfqh;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/SWHrmObject;->mPreEntryUrl:Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lfqh;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/SWHrmObject;->mEditEmployeeUrl:Ljava/lang/String;

    .line 46
    :cond_0
    return-object v0
.end method
