.class public final Lidv$b;
.super Ljava/lang/Object;
.source "UserServiceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/sync/SyncEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lidv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 928
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
    .line 933
    if-eqz p1, :cond_0

    .line 934
    invoke-virtual {p1}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 936
    :cond_0
    const-class v1, Lcom/alibaba/wukong/im/UserService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/UserService;

    .line 937
    .local v0, "userService":Lcom/alibaba/wukong/im/UserService;
    new-instance v1, Lidv$b$1;

    invoke-direct {v1, p0}, Lidv$b$1;-><init>(Lidv$b;)V

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/UserService;->fetchUsersRemark(Lcom/alibaba/wukong/Callback;)V

    .line 952
    return-void
.end method
