.class public Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;
.super Lays;
.source "AttachmentSpaceLinkView.java"


# static fields
.field private static final m:I

.field private static final n:I


# instance fields
.field private o:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x42400000    # 48.0f

    .line 34
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->m:I

    .line 35
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->n:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lays;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->r:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lays;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->r:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lays;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->r:Z

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->r:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 77
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 78
    .local v0, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    iget-object v1, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->o:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, v2

    move-object v7, v2

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 79
    return-void
.end method

.method protected final a(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 66
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->getLayoutId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 68
    sget v1, Laxp$f;->layout_content:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->g:Landroid/view/View;

    .line 69
    sget v1, Laxp$f;->ding_attachment_iv_icon:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    iput-object v1, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->o:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    .line 70
    sget v1, Laxp$f;->ding_attachment_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->p:Landroid/widget/TextView;

    .line 71
    sget v1, Laxp$f;->ding_attachment_content:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->q:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;)V
    .locals 6
    .param p1, "object"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    .param p2, "borderType"    # Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;
    .param p3, "showType"    # Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;
    .param p4, "style"    # Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 144
    invoke-super {p0, p1}, Lays;->setAttachmentObject(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)V

    .line 145
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    if-nez v2, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    invoke-static {v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->fromInt(I)Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    move-result-object v1

    .line 149
    .local v1, "type":Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;
    sget-object v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->LINK:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->e:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    if-nez v2, :cond_3

    :cond_2
    sget-object v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->SPACE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    .line 150
    invoke-virtual {v2, v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->o:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 157
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->o:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    sget v4, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->m:I

    sget v5, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->n:I

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    sget-object v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->LINK:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->e:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->extension:Ljava/util/Map;

    if-eqz v2, :cond_4

    .line 161
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->e:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->extension:Ljava/util/Map;

    const-class v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {v2, v3}, Lckw;->a(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 162
    .local v0, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    if-eqz v0, :cond_0

    .line 163
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->o:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    iget-object v3, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-static {v3}, Lcow;->a(Ljava/lang/String;)I

    move-result v3

    invoke-static {p2}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;->getValue(Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->a(II)V

    .line 164
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->p:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->q:Landroid/widget/TextView;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    invoke-static {v4, v5}, Lbjk;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 167
    .end local v0    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_4
    sget-object v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->SPACE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->o:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    iget-object v3, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->detailType:Ljava/lang/String;

    invoke-static {v3}, Lcow;->a(Ljava/lang/String;)I

    move-result v3

    invoke-static {p2}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;->getValue(Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->a(II)V

    .line 169
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->p:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->q:Landroid/widget/TextView;

    iget-wide v4, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->size:J

    invoke-static {v4, v5}, Lbjk;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected final b(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->g:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView$1;-><init>(Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->g:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView$2;-><init>(Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 133
    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 57
    sget v0, Laxp$g;->ding_layout_ding_attachment_space_link_view:I

    return v0
.end method

.method public setParentListView(Landroid/widget/ListView;)V
    .locals 1
    .param p1, "lv"    # Landroid/widget/ListView;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->o:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentSpaceLinkView;->o:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setParentListView(Landroid/widget/ListView;)V

    .line 140
    :cond_0
    return-void
.end method
