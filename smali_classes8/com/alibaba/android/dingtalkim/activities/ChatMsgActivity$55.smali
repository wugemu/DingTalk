.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$55;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Ldfe$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 9644
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$55;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 1

    .prologue
    .line 9647
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$55;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aW(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Leci;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9648
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$55;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aW(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Leci;

    move-result-object v0

    invoke-virtual {v0}, Leci;->a()V

    .line 9650
    :cond_0
    return-void
.end method
