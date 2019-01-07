.class public Lcom/alibaba/wukong/sync/SyncAck;
.super Ljava/lang/Object;
.source "SyncAck.java"


# instance fields
.field private mMergeAck:Lcom/alibaba/wukong/auth/bb;

.field private mReconnectType:I

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0, v0}, Lcom/alibaba/wukong/sync/SyncAck;-><init>(Lcom/alibaba/wukong/auth/bb;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/wukong/auth/bb;)V
    .locals 1
    .param p1, "mergeAck"    # Lcom/alibaba/wukong/auth/bb;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/wukong/sync/SyncAck;-><init>(Lcom/alibaba/wukong/auth/bb;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/wukong/auth/bb;Ljava/lang/String;)V
    .locals 1
    .param p1, "mergeAck"    # Lcom/alibaba/wukong/auth/bb;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/alibaba/wukong/sync/SyncAck;->mMergeAck:Lcom/alibaba/wukong/auth/bb;

    .line 25
    iput-object p2, p0, Lcom/alibaba/wukong/sync/SyncAck;->mTag:Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncAck;->mMergeAck:Lcom/alibaba/wukong/auth/bb;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncAck;->mMergeAck:Lcom/alibaba/wukong/auth/bb;

    invoke-virtual {v0, p0}, Lcom/alibaba/wukong/auth/bb;->b(Lcom/alibaba/wukong/sync/SyncAck;)V

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public failed(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncAck;->mMergeAck:Lcom/alibaba/wukong/auth/bb;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncAck;->mMergeAck:Lcom/alibaba/wukong/auth/bb;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/wukong/auth/bb;->a(Lcom/alibaba/wukong/sync/SyncAck;Ljava/lang/String;)V

    .line 38
    :cond_0
    return-void
.end method

.method public getReconnectType()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/alibaba/wukong/sync/SyncAck;->mReconnectType:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncAck;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public setReconnectType(I)V
    .locals 0
    .param p1, "reconnectType"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/alibaba/wukong/sync/SyncAck;->mReconnectType:I

    .line 58
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/wukong/sync/SyncAck;->mTag:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public success()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncAck;->mMergeAck:Lcom/alibaba/wukong/auth/bb;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncAck;->mMergeAck:Lcom/alibaba/wukong/auth/bb;

    invoke-virtual {v0, p0}, Lcom/alibaba/wukong/auth/bb;->a(Lcom/alibaba/wukong/sync/SyncAck;)V

    .line 33
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncAck;->mTag:Ljava/lang/String;

    return-object v0
.end method
