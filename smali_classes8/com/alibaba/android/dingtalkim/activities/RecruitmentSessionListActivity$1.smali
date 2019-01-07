.class Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity$1;
.super Lcom/alibaba/android/dingtalkim/session/filter/BaseConversationFilter;
.source "RecruitmentSessionListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity$1;->this$0:Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/session/filter/BaseConversationFilter;-><init>()V

    return-void
.end method


# virtual methods
.method protected isFilter(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 3
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 82
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity$1;->this$0:Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1068
    invoke-static {p1}, Libb;->f(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    .line 83
    if-nez v2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity$1;->this$0:Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->b(Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1077
    invoke-static {p1}, Libb;->g(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    .line 85
    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
