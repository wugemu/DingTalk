.class Lcom/alibaba/wukong/sync/AbstractSyncDownTask$ParsedEntity;
.super Ljava/lang/Object;
.source "AbstractSyncDownTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/sync/AbstractSyncDownTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParsedEntity"
.end annotation


# instance fields
.field private mAck:Lcom/alibaba/wukong/sync/SyncAck;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 1
    .param p1, "mAck"    # Lcom/alibaba/wukong/sync/SyncAck;

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$ParsedEntity;->mDataList:Ljava/util/List;

    .line 261
    iput-object p1, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$ParsedEntity;->mAck:Lcom/alibaba/wukong/sync/SyncAck;

    .line 262
    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/wukong/sync/AbstractSyncDownTask$ParsedEntity;)Lcom/alibaba/wukong/sync/SyncAck;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/wukong/sync/AbstractSyncDownTask$ParsedEntity;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$ParsedEntity;->mAck:Lcom/alibaba/wukong/sync/SyncAck;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/wukong/sync/AbstractSyncDownTask$ParsedEntity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/wukong/sync/AbstractSyncDownTask$ParsedEntity;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$ParsedEntity;->mDataList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addData(Ljava/lang/Object;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$ParsedEntity;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    return-void
.end method
