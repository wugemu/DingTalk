.class public final Lbwq$5;
.super Lbtv;
.source "LivePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbwq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbwq;


# direct methods
.method public constructor <init>(Lbwq;)V
    .locals 0
    .param p1, "this$0"    # Lbwq;

    .prologue
    .line 330
    iput-object p1, p0, Lbwq$5;->a:Lbwq;

    invoke-direct {p0}, Lbtv;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/alibaba/wukong/im/Conversation$ConversationStatus;)V
    .locals 3
    .param p1, "status"    # Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 344
    if-nez p1, :cond_0

    .line 356
    :goto_0
    return-void

    .line 347
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "receiveConversationStatus, status="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 348
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 347
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sget-object v0, Lbwq$8;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 353
    :pswitch_0
    iget-object v0, p0, Lbwq$5;->a:Lbwq;

    invoke-static {v0}, Lbwq;->i(Lbwq;)V

    goto :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V
    .locals 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 333
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "receiveEndMessage, action="

    aput-object v4, v2, v3

    aput-object p1, v2, v8

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1013
    const-string/jumbo v3, "live"

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v2, p0, Lbwq$5;->a:Lbwq;

    invoke-static {v2}, Lbwq;->g(Lbwq;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 337
    const-wide v2, 0x409f400000000000L    # 2000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40b3880000000000L    # 5000.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-long v0, v2

    .line 338
    .local v0, "delayMillis":J
    iget-object v2, p0, Lbwq$5;->a:Lbwq;

    invoke-static {v2}, Lbwq;->g(Lbwq;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v8, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 340
    .end local v0    # "delayMillis":J
    :cond_0
    return-void
.end method
