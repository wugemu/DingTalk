.class Lcom/alibaba/wukong/auth/bd$a;
.super Ljava/lang/Object;
.source "SyncParaTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/auth/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
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
.method constructor <init>(Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 1
    .param p1, "mAck"    # Lcom/alibaba/wukong/sync/SyncAck;

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wukong/auth/bd$a;->mDataList:Ljava/util/List;

    .line 147
    iput-object p1, p0, Lcom/alibaba/wukong/auth/bd$a;->mAck:Lcom/alibaba/wukong/sync/SyncAck;

    .line 148
    return-void
.end method

.method static synthetic a(Lcom/alibaba/wukong/auth/bd$a;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/wukong/auth/bd$a;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alibaba/wukong/auth/bd$a;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/wukong/auth/bd$a;)Lcom/alibaba/wukong/sync/SyncAck;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/wukong/auth/bd$a;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alibaba/wukong/auth/bd$a;->mAck:Lcom/alibaba/wukong/sync/SyncAck;

    return-object v0
.end method


# virtual methods
.method addData(Ljava/lang/Object;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alibaba/wukong/auth/bd$a;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    return-void
.end method
