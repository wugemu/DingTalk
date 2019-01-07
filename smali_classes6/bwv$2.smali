.class final Lbwv$2;
.super Ljava/lang/Object;
.source "FullPlayerView.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbwv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbwv;


# direct methods
.method constructor <init>(Lbwv;)V
    .locals 0
    .param p1, "this$0"    # Lbwv;

    .prologue
    .line 854
    iput-object p1, p0, Lbwv$2;->a:Lbwv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 876
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "getConversation failed, code="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ", reason="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 854
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 854
    move-object v2, p1

    check-cast v2, Lcom/alibaba/wukong/im/Conversation;

    .line 1857
    if-eqz v2, :cond_0

    .line 1860
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v0

    .line 2035
    iget-object v0, v0, Lbwr;->b:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    .line 1861
    if-eqz v0, :cond_1

    .line 1862
    new-array v3, v7, [J

    const/4 v1, 0x0

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->anchor:J

    aput-wide v4, v3, v1

    .line 1865
    :goto_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v0

    .line 1866
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lbtp$g;->dt_lv_live_reward_message:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1867
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v0

    iget-object v1, p0, Lbwv$2;->a:Lbwv;

    invoke-static {v1}, Lbwv;->g(Lbwv;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual/range {v0 .. v8}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;[JDLjava/lang/String;ILcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1869
    :goto_1
    return-void

    .line 1870
    :cond_0
    const-string/jumbo v0, "getConversation return null"

    .line 3013
    const-string/jumbo v1, "live"

    invoke-static {v1, v8, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v3, v8

    goto :goto_0
.end method
