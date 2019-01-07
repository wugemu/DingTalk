.class public Lcom/alibaba/android/dingtalkim/session/filter/ShoppingFilter;
.super Lcom/alibaba/android/dingtalkim/session/filter/BaseConversationFilter;
.source "ShoppingFilter.java"


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
    .line 1032
    invoke-static {p1}, Libb;->d(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    .line 14
    return v0
.end method
