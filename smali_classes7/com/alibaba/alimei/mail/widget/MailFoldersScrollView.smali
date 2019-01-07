.class public Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;
.super Landroid/widget/ScrollView;
.source "MailFoldersScrollView.java"


# instance fields
.field a:Z

.field b:Z

.field private c:Lcom/alibaba/alimei/mail/widget/MultiMailsView;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->i:I

    .line 71
    iput-object v3, p0, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->j:Ljava/lang/String;

    .line 74
    iput v2, p0, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->k:I

    .line 75
    iput v2, p0, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->l:I

    .line 482
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->a:Z

    .line 483
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->b:Z

    .line 600
    iput-object v3, p0, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->m:Landroid/view/LayoutInflater;

    .line 100
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->a(Landroid/content/Context;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->i:I

    .line 71
    iput-object v3, p0, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->j:Ljava/lang/String;

    .line 74
    iput v2, p0, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->k:I

    .line 75
    iput v2, p0, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->l:I

    .line 482
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->a:Z

    .line 483
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->b:Z

    .line 600
    iput-object v3, p0, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->m:Landroid/view/LayoutInflater;

    .line 105
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->a(Landroid/content/Context;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->i:I

    .line 71
    iput-object v3, p0, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->j:Ljava/lang/String;

    .line 74
    iput v2, p0, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->k:I

    .line 75
    iput v2, p0, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->l:I

    .line 482
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->a:Z

    .line 483
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->b:Z

    .line 600
    iput-object v3, p0, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->m:Landroid/view/LayoutInflater;

    .line 110
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->a(Landroid/content/Context;)V

    .line 111
    return-void
.end method

.method private a(I)F
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 648
    const/4 v0, 0x0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 114
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxo$g;->alm_cmail_multi_mail_folders:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 115
    sget v0, Laxo$f;->llMailLayout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/widget/MultiMailsView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->c:Lcom/alibaba/alimei/mail/widget/MultiMailsView;

    .line 116
    sget v0, Laxo$f;->llSystemFolders:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->d:Landroid/widget/LinearLayout;

    .line 117
    sget v0, Laxo$f;->llCustomFolders:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->e:Landroid/widget/LinearLayout;

    .line 118
    sget v0, Laxo$f;->llCustomFoldersDivider:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->g:Landroid/view/View;

    .line 119
    sget v0, Laxo$f;->llPopFoldersDivider:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->h:Landroid/view/View;

    .line 120
    sget v0, Laxo$f;->llPopFolders:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->f:Landroid/widget/LinearLayout;

    .line 121
    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 654
    sget v4, Laxo$d;->alm_cmail_mail_folder_item_divider_height:I

    invoke-direct {p0, v4}, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->a(I)F

    move-result v1

    .line 655
    .local v1, "dividerHeight":F
    sget v4, Laxo$d;->alm_cmail_mail_folder_item_height:I

    invoke-direct {p0, v4}, Lcom/alibaba/alimei/mail/widget/MailFoldersScrollView;->a(I)F

    move-result v2

    .line 657
    .local v2, "itemHeight":F
    const/high16 v4, 0x40c00000    # 6.0f

    mul-float/2addr v4, v2

    const/4 v5, 0x0

    add-float/2addr v4, v5

    add-float v0, v4, v1

    .line 658
    .local v0, "baseHeight":F
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v4

    invoke-virtual {v4}, Lacr;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 659
    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v2

    add-float v3, v4, v0

    .line 664
    .local v3, "maxHeightByPx":F
    :goto_0
    float-to-int v4, v3

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 665
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 666
    return-void

    .line 661
    .end local v3    # "maxHeightByPx":F
    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v4, v2

    add-float v3, v4, v0

    .restart local v3    # "maxHeightByPx":F
    goto :goto_0
.end method
