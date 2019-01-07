.class final Lcyz$1;
.super Ljava/lang/Object;
.source "UserLuckyTimeRedPacketPlanViewHolder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcyz;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

.field final synthetic b:Lcyz;


# direct methods
.method constructor <init>(Lcyz;Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;)V
    .locals 0
    .param p1, "this$0"    # Lcyz;

    .prologue
    .line 40
    iput-object p1, p0, Lcyz$1;->b:Lcyz;

    iput-object p2, p0, Lcyz$1;->a:Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1043
    if-nez p1, :cond_1

    .line 1044
    iget-object v0, p0, Lcyz$1;->b:Lcyz;

    const/4 v1, 0x0

    iget-object v2, p0, Lcyz$1;->a:Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    invoke-static {v0, v1, v2}, Lcyz;->a(Lcyz;Ljava/lang/String;Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;)V

    .line 1045
    :cond_0
    :goto_0
    return-void

    .line 1047
    :cond_1
    iget-object v0, p0, Lcyz$1;->b:Lcyz;

    invoke-static {v0}, Lcyz;->a(Lcyz;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1048
    iget-object v2, p0, Lcyz$1;->a:Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    iget-wide v2, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->senderId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcyz$1;->b:Lcyz;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v2, p0, Lcyz$1;->a:Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    invoke-static {v0, v1, v2}, Lcyz;->a(Lcyz;Ljava/lang/String;Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    iget-object v2, p0, Lcyz$1;->b:Lcyz;

    invoke-static {v2}, Lcyz;->a(Lcyz;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 61
    .local v0, "sendId":J
    iget-object v2, p0, Lcyz$1;->a:Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    iget-wide v2, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->senderId:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 62
    iget-object v2, p0, Lcyz$1;->b:Lcyz;

    const/4 v3, 0x0

    iget-object v4, p0, Lcyz$1;->a:Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    invoke-static {v2, v3, v4}, Lcyz;->a(Lcyz;Ljava/lang/String;Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;)V

    .line 64
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 56
    return-void
.end method
