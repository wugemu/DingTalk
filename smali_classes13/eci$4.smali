.class final Leci$4;
.super Ljava/lang/Object;
.source "QuickMessageReplyView.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leci;


# direct methods
.method constructor <init>(Leci;)V
    .locals 0
    .param p1, "this$0"    # Leci;

    .prologue
    .line 180
    iput-object p1, p0, Leci$4;->a:Leci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 183
    iget-object v1, p0, Leci$4;->a:Leci;

    invoke-static {v1}, Leci;->a(Leci;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-nez v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v1, p0, Leci$4;->a:Leci;

    invoke-static {v1}, Leci;->a(Leci;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 187
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Leci$4;->a:Leci;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v0, v2}, Leci;->a(Leci;Landroid/app/Activity;F)V

    goto :goto_0
.end method
