.class final Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$4;
.super Lcom/alibaba/wukong/im/ConversationChangeListener;
.source "ChannelSessionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;

    invoke-direct {p0}, Lcom/alibaba/wukong/im/ConversationChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNotificationChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;Ljava/util/List;)V

    .line 321
    return-void
.end method

.method public final onUnreadCountChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;Ljava/util/List;)V

    .line 316
    return-void
.end method
