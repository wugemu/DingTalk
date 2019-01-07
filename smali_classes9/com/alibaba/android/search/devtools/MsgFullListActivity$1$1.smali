.class final Lcom/alibaba/android/search/devtools/MsgFullListActivity$1$1;
.super Ljava/lang/Object;
.source "MsgFullListActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/devtools/MsgFullListActivity$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
.field final synthetic a:Lcom/alibaba/android/search/devtools/MsgFullListActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/devtools/MsgFullListActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/search/devtools/MsgFullListActivity$1;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/android/search/devtools/MsgFullListActivity$1$1;->a:Lcom/alibaba/android/search/devtools/MsgFullListActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 65
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 52
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1055
    if-eqz p1, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/alibaba/android/search/devtools/MsgFullListActivity$1$1;->a:Lcom/alibaba/android/search/devtools/MsgFullListActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/search/devtools/MsgFullListActivity$1;->a:Lcom/alibaba/android/search/devtools/MsgFullListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/search/devtools/MsgFullListActivity;->a(Lcom/alibaba/android/search/devtools/MsgFullListActivity;I)I

    .line 1057
    iget-object v0, p0, Lcom/alibaba/android/search/devtools/MsgFullListActivity$1$1;->a:Lcom/alibaba/android/search/devtools/MsgFullListActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/search/devtools/MsgFullListActivity$1;->a:Lcom/alibaba/android/search/devtools/MsgFullListActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/devtools/MsgFullListActivity;->a(Lcom/alibaba/android/search/devtools/MsgFullListActivity;)V

    .line 1058
    iget-object v0, p0, Lcom/alibaba/android/search/devtools/MsgFullListActivity$1$1;->a:Lcom/alibaba/android/search/devtools/MsgFullListActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/search/devtools/MsgFullListActivity$1;->a:Lcom/alibaba/android/search/devtools/MsgFullListActivity;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v0, p1, v1, v2}, Lcom/alibaba/android/search/devtools/MsgFullListActivity;->a(Lcom/alibaba/android/search/devtools/MsgFullListActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;I)V

    .line 52
    :cond_0
    return-void
.end method
