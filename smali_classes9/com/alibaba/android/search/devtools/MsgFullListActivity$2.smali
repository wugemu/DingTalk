.class final Lcom/alibaba/android/search/devtools/MsgFullListActivity$2;
.super Ljava/lang/Object;
.source "MsgFullListActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/devtools/MsgFullListActivity;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Lcom/alibaba/android/search/devtools/MsgFullListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/devtools/MsgFullListActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/devtools/MsgFullListActivity;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alibaba/android/search/devtools/MsgFullListActivity$2;->b:Lcom/alibaba/android/search/devtools/MsgFullListActivity;

    iput-object p2, p0, Lcom/alibaba/android/search/devtools/MsgFullListActivity$2;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 124
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 110
    check-cast p1, Ljava/util/List;

    .line 1114
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/alibaba/android/search/devtools/MsgFullListActivity$2;->b:Lcom/alibaba/android/search/devtools/MsgFullListActivity;

    iget-object v1, p0, Lcom/alibaba/android/search/devtools/MsgFullListActivity$2;->b:Lcom/alibaba/android/search/devtools/MsgFullListActivity;

    invoke-static {v1}, Lcom/alibaba/android/search/devtools/MsgFullListActivity;->b(Lcom/alibaba/android/search/devtools/MsgFullListActivity;)I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/android/search/devtools/MsgFullListActivity;->a(Lcom/alibaba/android/search/devtools/MsgFullListActivity;I)I

    .line 1116
    iget-object v0, p0, Lcom/alibaba/android/search/devtools/MsgFullListActivity$2;->b:Lcom/alibaba/android/search/devtools/MsgFullListActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/devtools/MsgFullListActivity;->a(Lcom/alibaba/android/search/devtools/MsgFullListActivity;)V

    .line 1117
    iget-object v1, p0, Lcom/alibaba/android/search/devtools/MsgFullListActivity$2;->b:Lcom/alibaba/android/search/devtools/MsgFullListActivity;

    iget-object v2, p0, Lcom/alibaba/android/search/devtools/MsgFullListActivity$2;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    const/16 v3, 0x64

    invoke-static {v1, v2, v0, v3}, Lcom/alibaba/android/search/devtools/MsgFullListActivity;->a(Lcom/alibaba/android/search/devtools/MsgFullListActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;I)V

    .line 110
    :cond_0
    return-void
.end method
