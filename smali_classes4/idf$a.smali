.class public final Lidf$a;
.super Ljava/lang/Object;
.source "FollowServiceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/sync/SyncEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lidf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTooLong2(Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 2
    .param p1, "ack"    # Lcom/alibaba/wukong/sync/SyncAck;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 242
    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p1}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 245
    :cond_0
    const-class v1, Lcom/alibaba/wukong/im/FollowService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/FollowService;

    .line 246
    .local v0, "followService":Lcom/alibaba/wukong/im/FollowService;
    new-instance v1, Lidf$a$1;

    invoke-direct {v1, p0}, Lidf$a$1;-><init>(Lidf$a;)V

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/FollowService;->fetchAllFollows(Lcom/alibaba/wukong/Callback;)V

    .line 266
    return-void
.end method
