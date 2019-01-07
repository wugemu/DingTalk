.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77$2;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;

    .prologue
    .line 1836
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1840
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setCursorVisible(Z)V

    .line 1842
    :cond_0
    return-void
.end method
