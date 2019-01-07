.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$3;
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
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;

    .prologue
    .line 1556
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$3;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$3;->a:Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

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
    .line 1559
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$3;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    if-eqz v0, :cond_0

    .line 1560
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$3;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74$3;->a:Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    invoke-virtual {v0, v1}, Ldiz;->a(Ljava/lang/Object;)V

    .line 1562
    :cond_0
    return-void
.end method
