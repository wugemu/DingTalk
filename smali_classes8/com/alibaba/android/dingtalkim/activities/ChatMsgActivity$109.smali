.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$109;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Ldgz$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aB()V
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
    .line 3524
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$109;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ldsd;)V
    .locals 1
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "config"    # Ldsd;

    .prologue
    .line 3528
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$109;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->h(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3529
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$109;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->j(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldfc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3530
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$109;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->j(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldfc;

    move-result-object v0

    invoke-interface {v0, p2}, Ldfc;->a(Ldsd;)V

    .line 3531
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$109;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->supportInvalidateOptionsMenu()V

    .line 3532
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$109;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->y()V

    .line 3535
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3539
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$109;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->h(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3540
    const-string/jumbo v0, "im"

    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->K()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "ChatMsgActivity getConfig error!"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    .line 3541
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3540
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3543
    :cond_0
    return-void
.end method
