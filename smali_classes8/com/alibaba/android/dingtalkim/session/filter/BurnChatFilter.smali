.class public Lcom/alibaba/android/dingtalkim/session/filter/BurnChatFilter;
.super Lcom/alibaba/android/dingtalkim/session/filter/BaseConversationFilter;
.source "BurnChatFilter.java"


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
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 14
    invoke-static {p1}, Lddq;->f(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    return v0
.end method
