.class public Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;
.super Lcom/alibaba/android/ding/attachment/BaseAttachmentView;
.source "AttachmentForwardCombineView.java"


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 52
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 53
    .local v0, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    iget-object v1, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, v2

    move-object v7, v2

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 54
    return-void
.end method

.method protected final a(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 62
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->getLayoutId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    sget v1, Laxp$f;->layout_content:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->g:Landroid/view/View;

    .line 64
    sget v1, Laxp$f;->ding_attachment_iv_image:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    iput-object v1, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    .line 65
    sget v1, Laxp$f;->ding_attachment_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->b:Landroid/widget/TextView;

    .line 66
    sget v1, Laxp$f;->ding_attachment_content:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->c:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;)V
    .locals 5
    .param p1, "object"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    .param p2, "borderType"    # Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;
    .param p3, "showType"    # Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;
    .param p4, "style"    # Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 94
    invoke-super {p0, p1}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->setAttachmentObject(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)V

    .line 97
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->j:Ljava/lang/String;

    invoke-static {v2}, Lbkh;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->b:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->c:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->getExtensionTitle()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->getExtensionContent(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "content":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 110
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 116
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    :goto_2
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->hasExtensionMessages()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 123
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->g:Landroid/view/View;

    new-instance v3, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView$1;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView$1;-><init>(Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 112
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->b:Landroid/widget/TextView;

    sget v3, Laxp$i;->dt_default_forward_combine_msg:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 119
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->c:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 137
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->g:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    return-void
.end method

.method protected final b(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 47
    sget v0, Laxp$g;->ding_layout_ding_attachment_forward_combine_view:I

    return v0
.end method

.method public setParentListView(Landroid/widget/ListView;)V
    .locals 1
    .param p1, "lv"    # Landroid/widget/ListView;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setParentListView(Landroid/widget/ListView;)V

    .line 78
    :cond_0
    return-void
.end method
