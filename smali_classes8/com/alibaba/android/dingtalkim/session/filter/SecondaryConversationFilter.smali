.class public Lcom/alibaba/android/dingtalkim/session/filter/SecondaryConversationFilter;
.super Lcom/alibaba/android/dingtalkim/session/filter/BaseConversationFilter;
.source "SecondaryConversationFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/session/filter/BaseConversationFilter;-><init>()V

    return-void
.end method


# virtual methods
.method protected isFilter(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 2
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 15
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->getEntranceId()J

    move-result-wide v0

    invoke-static {v0, v1}, Libb;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 18
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
