.class final Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment$2;
.super Ljava/lang/Object;
.source "BaseGridFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment$2;->a:Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment$2;->a:Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->a(Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;)V

    .line 161
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment$2;->a:Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->d:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 162
    const/4 v0, 0x0

    return v0
.end method
