.class final Lcom/alibaba/android/ding/attachment/AttachmentCommonLinkView$1;
.super Ljava/lang/Object;
.source "AttachmentCommonLinkView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/attachment/AttachmentCommonLinkView;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/android/ding/attachment/AttachmentCommonLinkView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/attachment/AttachmentCommonLinkView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/attachment/AttachmentCommonLinkView;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alibaba/android/ding/attachment/AttachmentCommonLinkView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentCommonLinkView;

    iput-object p2, p0, Lcom/alibaba/android/ding/attachment/AttachmentCommonLinkView$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentCommonLinkView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentCommonLinkView;

    iget-object v0, v0, Lcom/alibaba/android/ding/attachment/AttachmentCommonLinkView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentCommonLinkView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentCommonLinkView;

    iget-object v0, v0, Lcom/alibaba/android/ding/attachment/AttachmentCommonLinkView;->e:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentCommonLinkView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentCommonLinkView;

    iget-object v0, v0, Lcom/alibaba/android/ding/attachment/AttachmentCommonLinkView;->e:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentCommonLinkView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentCommonLinkView;

    iget v0, v0, Lcom/alibaba/android/ding/attachment/AttachmentCommonLinkView;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentCommonLinkView$1;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentCommonLinkView$1;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/android/ding/attachment/AttachmentCommonLinkView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentCommonLinkView;

    iget-wide v2, v1, Lcom/alibaba/android/ding/attachment/AttachmentCommonLinkView;->i:J

    iget-object v1, p0, Lcom/alibaba/android/ding/attachment/AttachmentCommonLinkView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentCommonLinkView;

    iget-object v1, v1, Lcom/alibaba/android/ding/attachment/AttachmentCommonLinkView;->e:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v1, v1, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lbjv;->a(Landroid/app/Activity;JLjava/lang/String;)V

    goto :goto_0
.end method
