.class final Lcom/alibaba/android/search/activity/MsgListActivity$2;
.super Ljava/lang/Object;
.source "MsgListActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/activity/MsgListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/activity/MsgListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/activity/MsgListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/activity/MsgListActivity;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/alibaba/android/search/activity/MsgListActivity$2;->a:Lcom/alibaba/android/search/activity/MsgListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity$2;->a:Lcom/alibaba/android/search/activity/MsgListActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/search/activity/MsgListActivity;->finish()V

    .line 190
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 172
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1175
    if-nez p1, :cond_0

    .line 1176
    const-string/jumbo v0, "conversation is null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1177
    :goto_0
    return-void

    .line 1179
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MsgListActivity$2;->a:Lcom/alibaba/android/search/activity/MsgListActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/search/activity/MsgListActivity;->a(Lcom/alibaba/android/search/activity/MsgListActivity;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method
