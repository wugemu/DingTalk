.class public Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;
.super Lcom/alibaba/android/ding/attachment/BaseAttachmentView;
.source "AttachmentDefaultView.java"


# static fields
.field private static final d:I

.field private static final e:I


# instance fields
.field protected a:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x42400000    # 48.0f

    .line 41
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->d:I

    .line 42
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
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

    .line 67
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 68
    .local v0, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    iget-object v1, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, v2

    move-object v7, v2

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 69
    return-void
.end method

.method protected final a(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 77
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->getLayoutId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 78
    sget v1, Laxp$f;->layout_content:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->g:Landroid/view/View;

    .line 79
    sget v1, Laxp$f;->ding_attachment_iv_image:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    iput-object v1, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    .line 80
    sget v1, Laxp$f;->ding_attachment_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->b:Landroid/widget/TextView;

    .line 81
    sget v1, Laxp$f;->ding_attachment_content:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->c:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;)V
    .locals 9
    .param p1, "object"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    .param p2, "borderType"    # Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;
    .param p3, "showType"    # Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;
    .param p4, "style"    # Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/16 v4, 0x8

    const/4 v8, 0x0

    .line 133
    invoke-super {p0, p1}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->setAttachmentObject(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)V

    .line 134
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    if-nez v2, :cond_0

    .line 190
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    invoke-static {v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->fromInt(I)Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    move-result-object v1

    .line 140
    .local v1, "type":Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;
    sget-object v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->FILE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    sget-object v2, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView$2;->a:[I

    invoke-virtual {p3}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 159
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    iget-object v3, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v3, v3, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->detailType:Ljava/lang/String;

    invoke-static {v3}, Lcow;->a(Ljava/lang/String;)I

    move-result v3

    invoke-static {p2}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;->getValue(Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->a(II)V

    .line 184
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 188
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    sget v4, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->d:I

    sget v5, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->e:I

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 143
    :pswitch_0
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-wide v4, v3, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->size:J

    invoke-static {v4, v5}, Lbjk;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v3, v3, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 149
    :pswitch_1
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Laxp$i;->ding_text_has_uploaded:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->b:Landroid/widget/TextView;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v4, v4, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    aput-object v4, v3, v8

    const/4 v4, 0x1

    const-string/jumbo v5, " - "

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-wide v6, v5, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->size:J

    invoke-static {v6, v7}, Lbjk;->a(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 155
    :pswitch_2
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 160
    :cond_2
    sget-object v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->HONGBAO:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 161
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 162
    iget-object v3, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    const-string/jumbo v4, "title"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v3, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    const-string/jumbo v4, "content"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->mediaId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v3, v3, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authMediaId:Ljava/lang/String;

    invoke-static {v2, v3}, Lbjl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "authMediaId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 169
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->j:Ljava/lang/String;

    invoke-static {v2}, Lbkh;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 170
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    invoke-static {p2}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;->getValue(Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;)I

    move-result v3

    const-string/jumbo v4, "DING"

    iget-object v5, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->j:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->k:Ljava/lang/String;

    .line 171
    invoke-static {v5, v6}, Lbjl;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v6, v6, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authCode:Ljava/lang/String;

    .line 170
    invoke-static {v4, v5, v6, v7}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4, v7}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->a(Ljava/lang/String;ILjava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 173
    :cond_4
    const-string/jumbo v2, "AttachmentDefaultView setAttachmentObject:"

    const-string/jumbo v3, "objectDing is null auth:"

    invoke-static {v2, v3, v0}, Lbjl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    invoke-static {p2}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;->getValue(Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 178
    .end local v0    # "authMediaId":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->b:Landroid/widget/TextView;

    sget v3, Laxp$i;->ding_attach_version_low_title:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 179
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->c:Landroid/widget/TextView;

    sget v3, Laxp$i;->ding_attach_version_low_content:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 180
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    sget v3, Laxp$e;->ding_attach_update:I

    invoke-static {p2}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;->getValue(Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->a(II)V

    goto/16 :goto_2

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 121
    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    return-void
.end method

.method protected final b(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->g:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView$1;-><init>(Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 62
    sget v0, Laxp$g;->ding_layout_ding_attachment_default_view:I

    return v0
.end method

.method public setParentListView(Landroid/widget/ListView;)V
    .locals 1
    .param p1, "lv"    # Landroid/widget/ListView;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentDefaultView;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setParentListView(Landroid/widget/ListView;)V

    .line 117
    :cond_0
    return-void
.end method
