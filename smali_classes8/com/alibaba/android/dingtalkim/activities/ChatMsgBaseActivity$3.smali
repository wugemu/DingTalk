.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$3;
.super Ljava/lang/Object;
.source "ChatMsgBaseActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
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
        "Lgqw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$3;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$3;->a:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 338
    .line 1341
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$3;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1344
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$3;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->dismissLoadingDialog()V

    .line 1346
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$3;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->ah()V

    .line 1347
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$3;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->y:Lcro;

    if-eqz v0, :cond_0

    .line 1348
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$3;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->y:Lcro;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$3;->a:Lcom/alibaba/wukong/im/Message;

    .line 2169
    iget-object v0, v0, Lcro;->j:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 359
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "sendComment"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "sendComment fail s:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " s1:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$3;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    :goto_0
    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$3;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->dismissLoadingDialog()V

    .line 364
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 355
    return-void
.end method
