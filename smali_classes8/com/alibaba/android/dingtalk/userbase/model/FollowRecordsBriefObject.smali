.class public Lcom/alibaba/android/dingtalk/userbase/model/FollowRecordsBriefObject;
.super Ljava/lang/Object;
.source "FollowRecordsBriefObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x220e9f758d460f5cL


# instance fields
.field public lastRecordDate:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public totalCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lcdo;)Lcom/alibaba/android/dingtalk/userbase/model/FollowRecordsBriefObject;
    .locals 3
    .param p0, "model"    # Lcdo;

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    .line 47
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/FollowRecordsBriefObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/FollowRecordsBriefObject;-><init>()V

    .line 48
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/FollowRecordsBriefObject;
    iget-object v1, p0, Lcdo;->a:Ljava/lang/Integer;

    .line 1033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 48
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FollowRecordsBriefObject;->totalCount:I

    .line 49
    iget-object v1, p0, Lcdo;->b:Ljava/util/Date;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FollowRecordsBriefObject;->lastRecordDate:Ljava/util/Date;

    goto :goto_0
.end method


# virtual methods
.method public toIDLModel()Lcdo;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 55
    new-instance v0, Lcdo;

    invoke-direct {v0}, Lcdo;-><init>()V

    .line 56
    .local v0, "model":Lcdo;
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FollowRecordsBriefObject;->totalCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcdo;->a:Ljava/lang/Integer;

    .line 57
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FollowRecordsBriefObject;->lastRecordDate:Ljava/util/Date;

    iput-object v1, v0, Lcdo;->b:Ljava/util/Date;

    .line 58
    return-object v0
.end method
