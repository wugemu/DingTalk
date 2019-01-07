.class Lcom/alibaba/lightapp/runtime/plugin/biz/InternalRedPacket$1;
.super Ljava/lang/Object;
.source "InternalRedPacket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/InternalRedPacket;->nav2RedPacket(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalRedPacket;

.field final synthetic val$clusterId:Ljava/lang/String;

.field final synthetic val$senderId:J


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalRedPacket;JLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalRedPacket;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalRedPacket$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalRedPacket;

    iput-wide p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalRedPacket$1;->val$senderId:J

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalRedPacket$1;->val$clusterId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 118
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalRedPacket$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalRedPacket;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalRedPacket;->access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalRedPacket;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalRedPacket$1;->val$senderId:J

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalRedPacket$1;->val$clusterId:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;JLjava/lang/String;)V

    .line 119
    return-void
.end method
