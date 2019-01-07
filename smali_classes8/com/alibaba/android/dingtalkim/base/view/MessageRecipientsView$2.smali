.class final Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$2;
.super Ljava/lang/Object;
.source "MessageRecipientsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 98
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$2;->a:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$2;->a:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->d(Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;)Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$2;->a:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->d(Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;)Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$a;->b()V

    .line 104
    :cond_0
    return-void
.end method
