.class public Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;
.super Landroid/widget/LinearLayout;
.source "SpaceAclDesView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView$a;
    }
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/view/View;

.field f:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView$a;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    sget-object v7, Lfzs$j;->SpaceAclDesView:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 66
    .local v6, "typedArray":Landroid/content/res/TypedArray;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lfzs$g;->space_layout_acl:I

    invoke-virtual {v7, v8, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 69
    :try_start_0
    sget v7, Lfzs$f;->view_item_1:I

    invoke-virtual {p0, v7}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->g:Landroid/view/View;

    .line 70
    sget v7, Lfzs$f;->view_item_2:I

    invoke-virtual {p0, v7}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->a:Landroid/view/View;

    .line 71
    sget v7, Lfzs$f;->view_item_3:I

    invoke-virtual {p0, v7}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->h:Landroid/view/View;

    .line 73
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->g:Landroid/view/View;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->a:Landroid/view/View;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->h:Landroid/view/View;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->g:Landroid/view/View;

    sget v8, Lfzs$f;->tv_item_name:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    .local v0, "tvItem1Name":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->a:Landroid/view/View;

    sget v8, Lfzs$f;->tv_item_name:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 79
    .local v2, "tvItem2Name":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->h:Landroid/view/View;

    sget v8, Lfzs$f;->tv_item_name:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 81
    .local v4, "tvItem3Name":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->g:Landroid/view/View;

    sget v8, Lfzs$f;->tv_sub_title:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 82
    .local v1, "tvItem1SubTitle":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->a:Landroid/view/View;

    sget v8, Lfzs$f;->tv_sub_title:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 83
    .local v3, "tvItem2SubTitle":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->h:Landroid/view/View;

    sget v8, Lfzs$f;->tv_sub_title:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 85
    .local v5, "tvItem3SubTitle":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->g:Landroid/view/View;

    sget v8, Lfzs$f;->if_arrow:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->i:Landroid/view/View;

    .line 86
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->a:Landroid/view/View;

    sget v8, Lfzs$f;->if_arrow:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->j:Landroid/view/View;

    .line 87
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->h:Landroid/view/View;

    sget v8, Lfzs$f;->if_arrow:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->k:Landroid/view/View;

    .line 89
    sget v7, Lfzs$f;->view_item1_divider:I

    invoke-virtual {p0, v7}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->l:Landroid/view/View;

    .line 90
    sget v7, Lfzs$f;->view_item2_divider:I

    invoke-virtual {p0, v7}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->e:Landroid/view/View;

    .line 91
    sget v7, Lfzs$f;->view_item3_divider:I

    invoke-virtual {p0, v7}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->m:Landroid/view/View;

    .line 93
    sget v7, Lfzs$j;->SpaceAclDesView_item_1_name:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    sget v7, Lfzs$j;->SpaceAclDesView_item_2_name:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    sget v7, Lfzs$j;->SpaceAclDesView_item_3_name:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    sget v7, Lfzs$j;->SpaceAclDesView_item_1_sub_title:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    sget v7, Lfzs$j;->SpaceAclDesView_item_2_sub_title:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    sget v7, Lfzs$j;->SpaceAclDesView_item_3_sub_title:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    sget v7, Lfzs$j;->SpaceAclDesView_item_1_clickable:I

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-nez v7, :cond_0

    .line 101
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->i:Landroid/view/View;

    const/4 v8, 0x4

    invoke-static {v7, v8}, Lgpk;->a(Landroid/view/View;I)V

    .line 104
    :cond_0
    sget v7, Lfzs$j;->SpaceAclDesView_item_2_clickable:I

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-nez v7, :cond_1

    .line 105
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->j:Landroid/view/View;

    const/4 v8, 0x4

    invoke-static {v7, v8}, Lgpk;->a(Landroid/view/View;I)V

    .line 108
    :cond_1
    sget v7, Lfzs$j;->SpaceAclDesView_item_3_clickable:I

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-nez v7, :cond_2

    .line 109
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->k:Landroid/view/View;

    const/4 v8, 0x4

    invoke-static {v7, v8}, Lgpk;->a(Landroid/view/View;I)V

    .line 112
    :cond_2
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->g:Landroid/view/View;

    sget v8, Lfzs$f;->tv_item_info:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->b:Landroid/widget/TextView;

    .line 113
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->a:Landroid/view/View;

    sget v8, Lfzs$f;->tv_item_info:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->c:Landroid/widget/TextView;

    .line 114
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->h:Landroid/view/View;

    sget v8, Lfzs$f;->tv_item_info:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->d:Landroid/widget/TextView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    return-void

    .line 117
    .end local v0    # "tvItem1Name":Landroid/widget/TextView;
    .end local v1    # "tvItem1SubTitle":Landroid/widget/TextView;
    .end local v2    # "tvItem2Name":Landroid/widget/TextView;
    .end local v3    # "tvItem2SubTitle":Landroid/widget/TextView;
    .end local v4    # "tvItem3Name":Landroid/widget/TextView;
    .end local v5    # "tvItem3SubTitle":Landroid/widget/TextView;
    :catchall_0
    move-exception v7

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    throw v7
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static a(Landroid/view/View;Landroid/view/View;Z)V
    .locals 3
    .param p0, "item"    # Landroid/view/View;
    .param p1, "divider"    # Landroid/view/View;
    .param p2, "visible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 274
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lgpk;->a(Landroid/view/View;I)V

    .line 275
    if-eqz p2, :cond_1

    :goto_1
    invoke-static {p1, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 276
    return-void

    :cond_0
    move v0, v2

    .line 274
    goto :goto_0

    :cond_1
    move v1, v2

    .line 275
    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method private static b(Landroid/view/View;Landroid/view/View;Z)V
    .locals 1
    .param p0, "item"    # Landroid/view/View;
    .param p1, "itemArrow"    # Landroid/view/View;
    .param p2, "clickable"    # Z

    .prologue
    .line 255
    if-eqz p0, :cond_0

    .line 256
    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    .line 258
    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lgpk;->a(Landroid/view/View;I)V

    .line 259
    return-void

    .line 258
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->d:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .param p1, "clickable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 243
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->i:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->b(Landroid/view/View;Landroid/view/View;Z)V

    .line 244
    return-void
.end method

.method public final b(Z)V
    .locals 2
    .param p1, "clickable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 247
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->j:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->b(Landroid/view/View;Landroid/view/View;Z)V

    .line 248
    return-void
.end method

.method public final c(Z)V
    .locals 2
    .param p1, "clickable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 251
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->k:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->b(Landroid/view/View;Landroid/view/View;Z)V

    .line 252
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 123
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->f:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView$a;

    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lfzs$f;->view_item_1:I

    if-ne v0, v1, :cond_2

    .line 128
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->f:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView$a;

    invoke-interface {v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView$a;->a()V

    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lfzs$f;->view_item_2:I

    if-ne v0, v1, :cond_3

    .line 130
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->f:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView$a;

    invoke-interface {v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView$a;->b()V

    goto :goto_0

    .line 131
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lfzs$f;->view_item_3:I

    if-ne v0, v1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->f:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView$a;

    invoke-interface {v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView$a;->c()V

    goto :goto_0
.end method
