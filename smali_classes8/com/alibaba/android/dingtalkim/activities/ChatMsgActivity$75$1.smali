.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$75$1;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$75;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lgre;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$75;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$75;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$75;

    .prologue
    .line 1740
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$75$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$75;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1740
    check-cast p1, Lgre;

    .line 2743
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$75$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$75;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$75;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->dismissLoadingDialog()V

    .line 2744
    if-eqz p1, :cond_0

    .line 3019
    iget v0, p1, Lgre;->a:I

    .line 2744
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2745
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const-string/jumbo v2, "checkAndSendLocalFileToSpace: STATUS_OVER_CAPACITY"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2746
    sget v0, Lctk$i;->and_cspace_capacity_limit:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 2747
    :goto_0
    return-void

    .line 2749
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$75$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$75;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$75;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$75$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$75;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$75;->a:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1758
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$75$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$75;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$75;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->dismissLoadingDialog()V

    .line 1759
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "checkAndSendLocalFileToSpace: errorCode: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", errorMsg: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1754
    return-void
.end method
