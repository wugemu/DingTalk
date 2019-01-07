.class final Lcom/alibaba/android/ding/widget/ReceiverSelector$2;
.super Ljava/lang/Object;
.source "ReceiverSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/ReceiverSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/ReceiverSelector;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/ReceiverSelector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/ReceiverSelector;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector$2;->a:Lcom/alibaba/android/ding/widget/ReceiverSelector;

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
    .line 286
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector$2;->a:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 287
    invoke-static {}, Lbjq;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "context not Activity"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector$2;->a:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->a(Lcom/alibaba/android/ding/widget/ReceiverSelector;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[ReceiverSelector] identifier null"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 297
    :cond_1
    :goto_0
    return-void

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector$2;->a:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->b(Lcom/alibaba/android/ding/widget/ReceiverSelector;)V

    goto :goto_0
.end method
