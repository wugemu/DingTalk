.class final Lcom/alibaba/android/dingtalkui/form/privatewidget/FormSmallAvatarGroup$a;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "FormSmallAvatarGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkui/form/privatewidget/FormSmallAvatarGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormSmallAvatarGroup;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalkui/form/privatewidget/FormSmallAvatarGroup;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormSmallAvatarGroup$a;->a:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormSmallAvatarGroup;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalkui/form/privatewidget/FormSmallAvatarGroup;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalkui/form/privatewidget/FormSmallAvatarGroup;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormSmallAvatarGroup$a;-><init>(Lcom/alibaba/android/dingtalkui/form/privatewidget/FormSmallAvatarGroup;)V

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 60
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormSmallAvatarGroup$a;->a:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormSmallAvatarGroup;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormSmallAvatarGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_common_image_avatar_item_small_side_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 63
    :cond_0
    return-void
.end method
