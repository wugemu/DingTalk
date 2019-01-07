.class final Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity$5;
.super Ljava/lang/Object;
.source "ChatListDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 255
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->d(Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;)Ldgi$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;)Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ldgi$a;->b(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)V

    .line 256
    return-void
.end method
