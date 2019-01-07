.class final Lcom/alibaba/android/dingtalkim/models/ShareDelegate$13;
.super Ljava/lang/Object;
.source "ShareDelegate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    .prologue
    .line 984
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$13;->a:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 987
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$13;->a:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->m(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$13;->a:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->m(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/eventbus/AdapterCallback;->cancel()V

    .line 989
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$13;->a:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->a(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/doraemon/eventbus/AdapterCallback;)Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$13;->a:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->n(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 992
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$13;->a:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->n(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/eventbus/AdapterCallback;->cancel()V

    .line 993
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$13;->a:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->b(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/doraemon/eventbus/AdapterCallback;)Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    .line 995
    :cond_1
    return-void
.end method
