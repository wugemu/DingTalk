.class public Lcom/alibaba/wukong/im/relation/BlacklistImpl;
.super Ljava/lang/Object;
.source "BlacklistImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/Blacklist;


# static fields
.field private static final serialVersionUID:J = 0x72322b9969b35607L


# instance fields
.field public mLastModify:J

.field public mOpenId:J

.field public mStatus:Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromModel(Lcom/alibaba/wukong/idl/relation/models/BlacklistModel;)Lcom/alibaba/wukong/im/relation/BlacklistImpl;
    .locals 4
    .param p0, "model"    # Lcom/alibaba/wukong/idl/relation/models/BlacklistModel;

    .prologue
    .line 19
    if-nez p0, :cond_0

    .line 20
    const/4 v0, 0x0

    .line 26
    :goto_0
    return-object v0

    .line 22
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/im/relation/BlacklistImpl;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/relation/BlacklistImpl;-><init>()V

    .line 23
    .local v0, "blacklist":Lcom/alibaba/wukong/im/relation/BlacklistImpl;
    iget-object v1, p0, Lcom/alibaba/wukong/idl/relation/models/BlacklistModel;->openId:Ljava/lang/Long;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/relation/BlacklistImpl;->mOpenId:J

    .line 24
    iget-object v1, p0, Lcom/alibaba/wukong/idl/relation/models/BlacklistModel;->status:Ljava/lang/Integer;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;->fromValue(J)Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/im/relation/BlacklistImpl;->mStatus:Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    .line 25
    iget-object v1, p0, Lcom/alibaba/wukong/idl/relation/models/BlacklistModel;->lastModify:Ljava/lang/Long;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/relation/BlacklistImpl;->mLastModify:J

    goto :goto_0
.end method


# virtual methods
.method public getLastModify()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/alibaba/wukong/im/relation/BlacklistImpl;->mLastModify:J

    return-wide v0
.end method

.method public getOpenId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/alibaba/wukong/im/relation/BlacklistImpl;->mOpenId:J

    return-wide v0
.end method

.method public getStatus()Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/wukong/im/relation/BlacklistImpl;->mStatus:Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    return-object v0
.end method
