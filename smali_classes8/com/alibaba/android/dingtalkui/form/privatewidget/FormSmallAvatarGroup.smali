.class public Lcom/alibaba/android/dingtalkui/form/privatewidget/FormSmallAvatarGroup;
.super Lcom/alibaba/android/dingtalkui/widget/base/AbstractRecyclerView;
.source "FormSmallAvatarGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkui/form/privatewidget/FormSmallAvatarGroup$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractRecyclerView;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormSmallAvatarGroup;->a()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormSmallAvatarGroup;->a()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormSmallAvatarGroup;->a()V

    .line 42
    return-void
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 46
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormSmallAvatarGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 47
    .local v0, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormSmallAvatarGroup;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 48
    new-instance v1, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormSmallAvatarGroup$a;

    invoke-direct {v1, p0, v3}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormSmallAvatarGroup$a;-><init>(Lcom/alibaba/android/dingtalkui/form/privatewidget/FormSmallAvatarGroup;B)V

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormSmallAvatarGroup;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 49
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public setAvatarAdapter(Lecv;)V
    .locals 0
    .param p1, "adapter"    # Lecv;

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormSmallAvatarGroup;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 76
    return-void
.end method
