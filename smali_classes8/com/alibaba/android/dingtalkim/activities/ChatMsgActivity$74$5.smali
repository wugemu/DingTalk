.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$5;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;

    .prologue
    .line 1685
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$5;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$5;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$5;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    if-eqz v0, :cond_0

    .line 1689
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$5;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$5;->a:Ljava/lang/String;

    .line 2425
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ldiz;->a(Ljava/lang/String;Z)V

    .line 1691
    :cond_0
    return-void
.end method
