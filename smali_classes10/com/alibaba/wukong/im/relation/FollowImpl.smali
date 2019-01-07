.class public Lcom/alibaba/wukong/im/relation/FollowImpl;
.super Ljava/lang/Object;
.source "FollowImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/Follow;


# static fields
.field private static final serialVersionUID:J = 0x6b64deda760376c6L


# instance fields
.field public mLastModify:J

.field public mOpenId:J

.field public mStatus:Lcom/alibaba/wukong/im/Follow$FollowStatus;

.field public mTag:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromModel(Lcom/alibaba/wukong/idl/relation/models/FollowModel;)Lcom/alibaba/wukong/im/relation/FollowImpl;
    .locals 4
    .param p0, "model"    # Lcom/alibaba/wukong/idl/relation/models/FollowModel;

    .prologue
    .line 21
    if-nez p0, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 28
    :goto_0
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/im/relation/FollowImpl;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/relation/FollowImpl;-><init>()V

    .line 24
    .local v0, "follow":Lcom/alibaba/wukong/im/relation/FollowImpl;
    iget-object v1, p0, Lcom/alibaba/wukong/idl/relation/models/FollowModel;->openId:Ljava/lang/Long;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/relation/FollowImpl;->mOpenId:J

    .line 25
    iget-object v1, p0, Lcom/alibaba/wukong/idl/relation/models/FollowModel;->status:Ljava/lang/Integer;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/alibaba/wukong/im/Follow$FollowStatus;->fromValue(J)Lcom/alibaba/wukong/im/Follow$FollowStatus;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/im/relation/FollowImpl;->mStatus:Lcom/alibaba/wukong/im/Follow$FollowStatus;

    .line 26
    iget-object v1, p0, Lcom/alibaba/wukong/idl/relation/models/FollowModel;->tag:Ljava/lang/Long;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/relation/FollowImpl;->mTag:J

    .line 27
    iget-object v1, p0, Lcom/alibaba/wukong/idl/relation/models/FollowModel;->lastModify:Ljava/lang/Long;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/relation/FollowImpl;->mLastModify:J

    goto :goto_0
.end method


# virtual methods
.method public getLastModify()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/alibaba/wukong/im/relation/FollowImpl;->mLastModify:J

    return-wide v0
.end method

.method public getOpenId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/alibaba/wukong/im/relation/FollowImpl;->mOpenId:J

    return-wide v0
.end method

.method public getStatus()Lcom/alibaba/wukong/im/Follow$FollowStatus;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/wukong/im/relation/FollowImpl;->mStatus:Lcom/alibaba/wukong/im/Follow$FollowStatus;

    return-object v0
.end method

.method public getTag()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/alibaba/wukong/im/relation/FollowImpl;->mTag:J

    return-wide v0
.end method
