.class public Lcom/alibaba/android/dingtalkim/session/filter/CampusStudentFilter;
.super Lcom/alibaba/android/dingtalkim/session/filter/BaseConversationFilter;
.source "CampusStudentFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/session/filter/BaseConversationFilter;-><init>()V

    return-void
.end method


# virtual methods
.method protected isFilter(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 9
    .line 1068
    invoke-static {p1}, Libb;->f(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    .line 9
    return v0
.end method