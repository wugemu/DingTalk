.class public Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;
.super Landroid/widget/LinearLayout;
.source "SpaceDetailPageView.java"


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/LinearLayout;

.field public final e:Landroid/widget/ProgressBar;

.field public final f:Landroid/widget/TextView;

.field public final g:Landroid/widget/TextView;

.field public h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->h:I

    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lfzs$g;->cspace_file_page:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 64
    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->setOrientation(I)V

    .line 65
    sget v0, Lfzs$f;->file_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->a:Landroid/widget/ImageView;

    .line 66
    sget v0, Lfzs$f;->tv_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->b:Landroid/widget/TextView;

    .line 67
    sget v0, Lfzs$f;->tv_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->c:Landroid/widget/TextView;

    .line 68
    sget v0, Lfzs$f;->ll_common:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->d:Landroid/widget/LinearLayout;

    .line 69
    const v0, 0x102000d

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->e:Landroid/widget/ProgressBar;

    .line 70
    sget v0, Lfzs$f;->tv_preview_desc:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->f:Landroid/widget/TextView;

    .line 71
    sget v0, Lfzs$f;->tv_preview:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->g:Landroid/widget/TextView;

    .line 72
    return-void
.end method

.method public static final a(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "visibility"    # I

    .prologue
    .line 173
    if-nez p0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 177
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 4
    .param p1, "previewStatus"    # I
    .param p2, "previewDesc"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 127
    if-nez p1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->d:Landroid/widget/LinearLayout;

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 129
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->g:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 170
    :goto_0
    return-void

    .line 133
    :cond_0
    sget v0, Lfzs$h;->cspace_detail_preview_tip1:I

    .line 134
    .local v0, "resourceId":I
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->d:Landroid/widget/LinearLayout;

    invoke-static {v1, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 135
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->f:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 137
    packed-switch p1, :pswitch_data_0

    .line 165
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 139
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->e:Landroid/widget/ProgressBar;

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 140
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->g:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 141
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->g:Landroid/widget/TextView;

    sget v2, Lfzs$h;->cspace_preview:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 144
    :pswitch_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->e:Landroid/widget/ProgressBar;

    invoke-static {v1, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 145
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->g:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 146
    sget v0, Lfzs$h;->cspace_preview_processing:I

    .line 147
    goto :goto_1

    .line 149
    :pswitch_2
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->e:Landroid/widget/ProgressBar;

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 150
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->g:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 151
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->g:Landroid/widget/TextView;

    sget v2, Lfzs$h;->cspace_preview_again:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 152
    sget v0, Lfzs$h;->cspace_detail_preview_error:I

    .line 153
    goto :goto_1

    .line 155
    :pswitch_3
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->e:Landroid/widget/ProgressBar;

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 156
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->g:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 157
    sget v0, Lfzs$h;->cspace_preview_too_large:I

    .line 158
    goto :goto_1

    .line 160
    :pswitch_4
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->e:Landroid/widget/ProgressBar;

    invoke-static {v1, v3}, Lgpk;->a(Landroid/view/View;I)V

    goto :goto_1

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->f:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "iconResourceId"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "tips"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 75
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->h:I

    if-eq v0, p1, :cond_0

    .line 76
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->h:I

    .line 77
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->c:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 80
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->b:Landroid/widget/TextView;

    if-nez p2, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->b:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 88
    :goto_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->d:Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->g:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 90
    return-void

    :cond_1
    move-object v0, p2

    .line 82
    goto :goto_0

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->b:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lgpk;->a(Landroid/view/View;I)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->d:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 116
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->e:Landroid/widget/ProgressBar;

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 117
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->f:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 119
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->g:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 120
    return-void
.end method
