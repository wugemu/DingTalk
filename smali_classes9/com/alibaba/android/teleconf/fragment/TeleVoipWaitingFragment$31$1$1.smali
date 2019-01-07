.class final Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31$1$1;
.super Ljava/lang/Object;
.source "TeleVoipWaitingFragment.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31$1;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31$1;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31$1$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 557
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 546
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 546
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1549
    if-eqz p1, :cond_0

    .line 1550
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31$1$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31$1;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Z)V

    .line 546
    :cond_0
    return-void
.end method
