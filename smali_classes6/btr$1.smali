.class final Lbtr$1;
.super Lbtv;
.source "LiveRecordCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbtr;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbtr;


# direct methods
.method constructor <init>(Lbtr;)V
    .locals 0
    .param p1, "this$0"    # Lbtr;

    .prologue
    .line 33
    iput-object p1, p0, Lbtr$1;->a:Lbtr;

    invoke-direct {p0}, Lbtv;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/alibaba/wukong/im/Conversation$ConversationStatus;)V
    .locals 2
    .param p1, "status"    # Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 42
    sget-object v0, Lbtr$2;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 47
    :pswitch_0
    iget-object v0, p0, Lbtr$1;->a:Lbtr;

    .line 2096
    iget-object v0, v0, Lbtr;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 37
    iget-object v0, p0, Lbtr$1;->a:Lbtr;

    .line 1096
    iget-object v0, v0, Lbtr;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 38
    return-void
.end method

.method protected final a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method
