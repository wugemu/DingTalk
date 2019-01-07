.class Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$GroupDescEditAndBroadcast;
.super Ljava/lang/Object;
.source "IMInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity$GroupDescEditActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GroupDescEditAndBroadcast"
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private mConversation:Lcom/alibaba/wukong/im/Conversation;


# direct methods
.method public constructor <init>(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 0
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 2363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2364
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$GroupDescEditAndBroadcast;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 2365
    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$GroupDescEditAndBroadcast;->mAction:Ljava/lang/String;

    .line 2366
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2379
    return-void
.end method

.method public onComplete(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2370
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$GroupDescEditAndBroadcast;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, p2}, Ldjl;->b(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    .line 2371
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$GroupDescEditAndBroadcast;->mAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2372
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$GroupDescEditAndBroadcast;->mAction:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 2374
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
