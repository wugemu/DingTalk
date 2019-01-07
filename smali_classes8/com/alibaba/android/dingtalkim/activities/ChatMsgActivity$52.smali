.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$52;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Ldsb$a;


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
    .line 9599
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$52;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 9602
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$52;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aW(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Leci;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9603
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$52;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aW(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Leci;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leci;->a(Z)V

    .line 9606
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$52;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aX(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcws;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9607
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$52;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aX(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcws;

    move-result-object v0

    invoke-virtual {v0}, Lcws;->a()V

    .line 9609
    :cond_1
    return-void
.end method
