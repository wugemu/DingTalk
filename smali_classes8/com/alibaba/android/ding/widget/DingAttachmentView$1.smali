.class final Lcom/alibaba/android/ding/widget/DingAttachmentView$1;
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
    .line 213
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$1;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

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
    .line 216
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$1;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->a(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$1;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->b(Lcom/alibaba/android/ding/widget/DingAttachmentView;)V

    goto :goto_0

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$1;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$1;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$1;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v1}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->c(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbjv;->b(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
