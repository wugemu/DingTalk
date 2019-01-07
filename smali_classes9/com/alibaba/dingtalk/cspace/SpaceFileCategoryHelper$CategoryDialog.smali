.class public Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "SpaceFileCategoryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategoryDialog"
.end annotation


# instance fields
.field private a:Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$c;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "onFileCategorySelectedCallback"    # Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$c;

    .prologue
    .line 279
    sget v0, Lfzs$i;->cspace_menu_dialog:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 280
    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;->a:Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$c;

    .line 281
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1286
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lfzs$g;->cspace_category_menu:I

    const/4 v2, 0x0

    .line 1287
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1288
    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;->setContentView(Landroid/view/View;)V

    .line 1290
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 1291
    if-eqz v2, :cond_1

    .line 1292
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1293
    if-nez v0, :cond_0

    .line 1294
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1296
    :cond_0
    const/4 v3, -0x1

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1297
    const/4 v3, -0x2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1298
    const/16 v3, 0x50

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1299
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1302
    :cond_1
    sget v0, Lfzs$f;->recycler_view:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 1303
    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1304
    new-instance v2, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lfzs$g;->cspace_category_menu_item:I

    invoke-direct {v2, v3, v4}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a;-><init>(Landroid/content/Context;I)V

    .line 1305
    new-instance v3, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog$1;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog$1;-><init>(Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;)V

    .line 2208
    iput-object v3, v2, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a;->a:Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$c;

    .line 1314
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1316
    sget v0, Lfzs$f;->tv_cancel:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1317
    new-instance v1, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog$2;-><init>(Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;)Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$c;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;->a:Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$c;

    return-object v0
.end method
