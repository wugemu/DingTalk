.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77$1;
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
    .line 1821
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1825
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->p(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 1827
    :cond_0
    return-void
.end method
