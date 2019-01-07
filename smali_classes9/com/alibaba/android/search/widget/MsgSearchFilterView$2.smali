.class final Lcom/alibaba/android/search/widget/MsgSearchFilterView$2;
.super Ljava/lang/Object;
.source "MsgSearchFilterView.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/widget/MsgSearchFilterView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/widget/MsgSearchFilterView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/widget/MsgSearchFilterView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView$2;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 229
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 230
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string/jumbo v1, "intent_action_forward_pick_data"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView$2;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    invoke-virtual {v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView$2;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    invoke-static {v2}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->d(Lcom/alibaba/android/search/widget/MsgSearchFilterView;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 234
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView$2;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    invoke-virtual {v0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView$2;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    invoke-static {v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->d(Lcom/alibaba/android/search/widget/MsgSearchFilterView;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 239
    return-void
.end method
