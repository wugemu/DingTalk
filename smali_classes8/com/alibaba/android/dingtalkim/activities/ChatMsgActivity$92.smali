.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 2776
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 2
    .param p1, "message"    # Lcjo$b;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2780
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2817
    :goto_0
    return-void

    .line 2783
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->o(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;Lcjo$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
