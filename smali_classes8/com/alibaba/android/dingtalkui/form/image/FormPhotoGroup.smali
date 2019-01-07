.class Lcom/alibaba/android/dingtalkui/form/image/FormPhotoGroup;
.super Lcom/alibaba/android/dingtalkui/widget/base/AbstractRecyclerView;
.source "FormPhotoGroup.java"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractRecyclerView;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/image/FormPhotoGroup;->a:I

    .line 28
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/form/image/FormPhotoGroup;->a()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/image/FormPhotoGroup;->a:I

    .line 33
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/form/image/FormPhotoGroup;->a()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/image/FormPhotoGroup;->a:I

    .line 38
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/form/image/FormPhotoGroup;->a()V

    .line 39
    return-void
.end method

.method private a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 43
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/image/FormPhotoGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 44
    .local v0, "layoutManager":Landroid/support/v7/widget/GridLayoutManager;
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/image/FormPhotoGroup;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 45
    return-void
.end method
