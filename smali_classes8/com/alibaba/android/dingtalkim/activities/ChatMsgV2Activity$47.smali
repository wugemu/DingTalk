.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$47;
.super Ljava/lang/Object;
.source "ChatMsgV2Activity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 2243
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$47;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2246
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$47;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(J)V

    .line 2247
    return-void
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2251
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$47;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a()J

    move-result-wide v2

    .line 4837
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->k:Lddx$a;

    if-eqz v1, :cond_0

    .line 4838
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->k:Lddx$a;

    invoke-interface {v0, v2, v3}, Lddx$a;->b(J)V

    .line 2252
    :cond_0
    return-void
.end method
