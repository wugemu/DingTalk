.class public Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "SpaceMenuBottomDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$b;,
        Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;,
        Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;
    }
.end annotation


# instance fields
.field a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;

.field b:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$b;

.field public c:Z

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/alibaba/dingtalk/cspace/widget/MaxHeightRecyclerView;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/TextView;

.field private p:I

.field private final q:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 67
    sget v1, Lfzs$i;->cspace_menu_dialog:I

    invoke-direct {p0, p1, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 64
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->q:Landroid/util/SparseArray;

    .line 68
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 69
    const/4 v0, 0x1

    .line 70
    .local v0, "screenOrientation":I
    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 73
    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/alimei/cspace/model/DentryModel;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p3, "screenOrientation"    # I

    .prologue
    .line 77
    sget v0, Lfzs$i;->cspace_menu_dialog:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->q:Landroid/util/SparseArray;

    .line 78
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 79
    invoke-direct {p0, p2, p3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;I)V

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->q:Landroid/util/SparseArray;

    return-object v0
.end method

.method private a(Lcom/alibaba/alimei/cspace/model/DentryModel;I)V
    .locals 8
    .param p1, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "screenOrientation"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 145
    iput p2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->p:I

    .line 147
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lfzs$g;->cspace_menu_bottom_dialog:I

    const/4 v5, 0x0

    .line 148
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 149
    .local v0, "contentView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->setContentView(Landroid/view/View;)V

    .line 151
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 152
    .local v2, "window":Landroid/view/Window;
    if-eqz v2, :cond_1

    .line 153
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 154
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    if-nez v1, :cond_0

    .line 155
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    .end local v1    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 157
    .restart local v1    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    const/4 v3, -0x1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 158
    const/4 v3, -0x2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 159
    const/16 v3, 0x50

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 160
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 163
    .end local v1    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    sget v3, Lfzs$f;->btn_cancel:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->o:Landroid/widget/TextView;

    .line 164
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->o:Landroid/widget/TextView;

    new-instance v4, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$1;

    invoke-direct {v4, p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$1;-><init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    sget v3, Lfzs$f;->v_blank:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->n:Landroid/view/View;

    .line 173
    sget v3, Lfzs$f;->menu_item_list:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/cspace/widget/MaxHeightRecyclerView;

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->m:Lcom/alibaba/dingtalk/cspace/widget/MaxHeightRecyclerView;

    .line 174
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->m:Lcom/alibaba/dingtalk/cspace/widget/MaxHeightRecyclerView;

    new-instance v4, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v7, v6}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/cspace/widget/MaxHeightRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 175
    new-instance v3, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4, v6}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;-><init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;Landroid/content/Context;B)V

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;

    .line 176
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->m:Lcom/alibaba/dingtalk/cspace/widget/MaxHeightRecyclerView;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;

    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/cspace/widget/MaxHeightRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 178
    sget v3, Lfzs$f;->ll_file_info:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->d:Landroid/widget/LinearLayout;

    .line 179
    sget v3, Lfzs$f;->img_icon:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->e:Landroid/widget/ImageView;

    .line 180
    sget v3, Lfzs$f;->img_encrpt_icon:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->f:Landroid/widget/ImageView;

    .line 181
    sget v3, Lfzs$f;->view_video_flag:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->g:Landroid/widget/ImageView;

    .line 182
    sget v3, Lfzs$f;->view_link_flag:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->h:Landroid/widget/ImageView;

    .line 183
    sget v3, Lfzs$f;->file_name:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->i:Landroid/widget/TextView;

    .line 184
    sget v3, Lfzs$f;->file_size:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->j:Landroid/widget/TextView;

    .line 185
    sget v3, Lfzs$f;->file_author:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->k:Landroid/widget/TextView;

    .line 186
    sget v3, Lfzs$f;->file_date:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->l:Landroid/widget/TextView;

    .line 188
    iget v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->p:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 189
    invoke-direct {p0, v7}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->a(Z)V

    .line 192
    :cond_2
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 193
    return-void
.end method

.method private a(Z)V
    .locals 10
    .param p1, "force"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/high16 v9, 0x42400000    # 48.0f

    .line 245
    if-nez p1, :cond_1

    iget v7, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->p:I

    if-ne v7, v8, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iput v8, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->p:I

    .line 250
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcms;->b(Landroid/content/Context;)I

    move-result v5

    .line 251
    .local v5, "screenHeight":I
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcms;->a(Landroid/app/Activity;)I

    move-result v6

    .line 252
    .local v6, "statusBarHeight":I
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x428a0000    # 69.0f

    invoke-static {v7, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    .line 253
    .local v2, "fileInfoHeight":I
    :goto_1
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->m:Lcom/alibaba/dingtalk/cspace/widget/MaxHeightRecyclerView;

    invoke-virtual {v7}, Lcom/alibaba/dingtalk/cspace/widget/MaxHeightRecyclerView;->getMaxHeight()I

    move-result v3

    .line 254
    .local v3, "menuListMaxHeight":I
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->n:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-nez v7, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v7, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    .line 255
    .local v0, "blankHeight":I
    :goto_2
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->o:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-nez v7, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v9}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 256
    .local v1, "cancelButtonHeight":I
    :goto_3
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v9}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    .line 258
    .local v4, "safeHeight":I
    sub-int v7, v5, v6

    add-int v8, v2, v3

    add-int/2addr v8, v0

    add-int/2addr v8, v1

    add-int/2addr v8, v4

    if-gt v7, v8, :cond_0

    .line 262
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->m:Lcom/alibaba/dingtalk/cspace/widget/MaxHeightRecyclerView;

    mul-int/lit8 v8, v5, 0x2

    div-int/lit8 v8, v8, 0x3

    sub-int/2addr v8, v2

    sub-int/2addr v8, v1

    sub-int/2addr v8, v0

    invoke-virtual {v7, v8}, Lcom/alibaba/dingtalk/cspace/widget/MaxHeightRecyclerView;->setMaxHeight(I)V

    .line 263
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->m:Lcom/alibaba/dingtalk/cspace/widget/MaxHeightRecyclerView;

    invoke-virtual {v7}, Lcom/alibaba/dingtalk/cspace/widget/MaxHeightRecyclerView;->invalidate()V

    goto :goto_0

    .line 252
    .end local v0    # "blankHeight":I
    .end local v1    # "cancelButtonHeight":I
    .end local v2    # "fileInfoHeight":I
    .end local v3    # "menuListMaxHeight":I
    .end local v4    # "safeHeight":I
    :cond_2
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v2, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 254
    .restart local v2    # "fileInfoHeight":I
    .restart local v3    # "menuListMaxHeight":I
    :cond_3
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->n:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v0, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 255
    .restart local v0    # "blankHeight":I
    :cond_4
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->o:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v1, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;)Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->b:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$b;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->c:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;->notifyDataSetChanged()V

    .line 130
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 3
    .param p1, "screenOrientation"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 116
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->p:I

    if-eq v0, p1, :cond_0

    .line 117
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->a(Z)V

    .line 123
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->a()V

    .line 124
    return-void

    .line 119
    :cond_1
    if-ne p1, v1, :cond_0

    .line 1235
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->p:I

    if-eq v0, v1, :cond_0

    .line 1238
    iput v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->p:I

    .line 1240
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->m:Lcom/alibaba/dingtalk/cspace/widget/MaxHeightRecyclerView;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x43870000    # 270.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/MaxHeightRecyclerView;->setMaxHeight(I)V

    .line 1241
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->m:Lcom/alibaba/dingtalk/cspace/widget/MaxHeightRecyclerView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/MaxHeightRecyclerView;->invalidate()V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 12
    .param p1, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 196
    if-nez p1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 232
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 202
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/framework/account/AccountApi;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 203
    .local v8, "token":Ljava/lang/String;
    invoke-static {v8}, Lgpr;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 204
    .local v6, "tokenHeader":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->e:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->g:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->h:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lgpv;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Ljava/util/Map;)V

    .line 206
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isESafeNetEncrypt()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->f:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isESafeNetEncrypt()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lfzs$e;->blue_safe_icon:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    :goto_2
    invoke-static {p1}, Lgpv;->e(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v7

    .line 215
    .local v7, "displayName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 216
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    :goto_3
    const-string/jumbo v0, "folder"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isSoft()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    :goto_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->k:Landroid/widget/TextView;

    .line 2267
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2269
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreatorEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2270
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAccountName()Ljava/lang/String;

    move-result-object v2

    .line 2272
    :goto_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2276
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v10, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double/2addr v4, v10

    double-to-int v3, v4

    .line 2277
    new-instance v1, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$2;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$2;-><init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;Landroid/widget/TextView;)V

    .line 2286
    const-class v0, Lfzo$a;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v1, v0, v4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfzo$a;

    .line 2287
    invoke-static {}, Lfzo;->a()Lfzo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lfzo;->a(Landroid/content/Context;Ljava/lang/String;IILfzo$a;)V

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifiedTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lgqh;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 208
    .end local v7    # "displayName":Ljava/lang/String;
    :cond_4
    sget v0, Lfzs$e;->avatar_safe_icon:I

    goto/16 :goto_1

    .line 211
    :cond_5
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 218
    .restart local v7    # "displayName":Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 225
    :cond_7
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v2

    .line 2046
    invoke-static {v2, v3}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 2271
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreatorEmail()Ljava/lang/String;

    move-result-object v2

    goto :goto_5
.end method

.method public final a(Lgqm;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$b;)V
    .locals 2
    .param p1, "menuObject"    # Lgqm;
    .param p2, "listener"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$b;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 98
    if-nez p1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;

    invoke-static {v0, p1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;->a(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;Lgqm;)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->q:Landroid/util/SparseArray;

    iget v1, p1, Lgqm;->a:I

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 138
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->show()V

    .line 139
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->m:Lcom/alibaba/dingtalk/cspace/widget/MaxHeightRecyclerView;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->m:Lcom/alibaba/dingtalk/cspace/widget/MaxHeightRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/MaxHeightRecyclerView;->scrollToPosition(I)V

    .line 142
    :cond_0
    return-void
.end method
