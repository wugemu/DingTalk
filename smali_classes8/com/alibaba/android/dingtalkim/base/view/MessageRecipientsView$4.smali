.class final Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$4;
.super Ljava/lang/Object;
.source "MessageRecipientsView.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$4;->a:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$4;->a:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$4;->a:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->e(Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "action_message_forward_recipient_updated"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 121
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$4;->a:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$4;->a:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->e(Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 126
    return-void
.end method
