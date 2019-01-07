.class final Lcom/alibaba/android/ding/widget/DingAttachmentView$2;
.super Ljava/lang/Object;
.source "DingAttachmentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/DingAttachmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/DingAttachmentView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/DingAttachmentView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/DingAttachmentView;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$2;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 231
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$2;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->a(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$2;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->d(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$2;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->e(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$2;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->a(Lcom/alibaba/android/ding/widget/DingAttachmentView;Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    goto :goto_0
.end method
