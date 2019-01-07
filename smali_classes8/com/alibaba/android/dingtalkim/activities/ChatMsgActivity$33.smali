.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$33;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 7686
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$33;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$33;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 7690
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$33;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_0

    .line 7691
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$33;->a:Z

    if-eqz v1, :cond_1

    .line 7692
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$33$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$33$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$33;)V

    .line 7709
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$33;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    const-class v1, Lcom/alibaba/wukong/Callback;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$33;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0, v1, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    invoke-interface {v2, v1}, Lcom/alibaba/wukong/im/Conversation;->forceRemoveFromLocal(Lcom/alibaba/wukong/Callback;)V

    .line 7715
    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    :cond_0
    :goto_0
    return-void

    .line 7711
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$33;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->remove()V

    .line 7712
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$33;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->finish()V

    goto :goto_0
.end method
