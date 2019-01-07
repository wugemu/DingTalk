.class final Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SpaceFileCategoryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$c;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:[Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResId"    # I

    .prologue
    .line 173
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 179
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;->DOC:Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;->ZIP:Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;->PIC:Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;->VIDEO:Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;->AUDIO:Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;->APP:Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;->OTHER:Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a;->d:[Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;

    .line 174
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a;->b:Landroid/content/Context;

    .line 175
    iput p2, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a;->c:I

    .line 176
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a;)[Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a;->d:[Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a;)Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$c;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a;->a:Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$c;

    return-object v0
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a;->d:[Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;

    array-length v0, v0

    return v0
.end method

.method public final onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 188
    move-object v0, p1

    check-cast v0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$b;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a;->d:[Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;

    aget-object v1, v1, p2

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;->access$000(Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a;->d:[Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;

    aget-object v2, v2, p2

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;->access$100(Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;)I

    move-result v2

    .line 1230
    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$b;->a:Landroid/widget/ImageView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1231
    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$b;->b:Landroid/widget/TextView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a;->a:Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$c;

    if-nez v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a$1;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a$1;-><init>(Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 183
    new-instance v0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$b;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a;->c:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$b;-><init>(Landroid/view/View;)V

    return-object v0
.end method
