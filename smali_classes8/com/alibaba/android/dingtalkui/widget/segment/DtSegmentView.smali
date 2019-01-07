.class public Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;
.super Lcom/alibaba/android/dingtalkui/widget/base/AbstractLinearLayout;
.source "DtSegmentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractLinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->dp28:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->a:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->c:I

    .line 38
    iput-object v2, p0, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->d:Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView$a;

    .line 42
    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->a(Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->dp28:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->a:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->c:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->d:Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView$a;

    .line 47
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->a(Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->dp28:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->a:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->c:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->d:Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView$a;

    .line 52
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->a(Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method private a(ILjava/lang/String;IZ)Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;
    .locals 4
    .param p1, "index"    # I
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "selected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 118
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 122
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 123
    new-instance v1, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;-><init>(Landroid/content/Context;I)V

    .line 124
    .local v1, "segmentItem":Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->setMaxLines(I)V

    .line 126
    invoke-virtual {v1, p4}, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->setSelected(Z)V

    .line 127
    invoke-virtual {v1, p2}, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->setText(Ljava/lang/CharSequence;)V

    .line 128
    new-instance v2, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView$1;-><init>(Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;I)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    return-object v1
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 56
    iget v0, p0, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->a:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->setMinimumHeight(I)V

    .line 1062
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lecj$i;->DtSegmentView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1063
    sget v1, Lecj$i;->DtSegmentView_android_enabled:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 1064
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1065
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->setEnabled(Z)V

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;I)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;
    .param p1, "x1"    # I

    .prologue
    .line 24
    .line 1142
    iget v0, p0, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->c:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;

    .line 1143
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->setSelected(Z)V

    .line 1144
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;

    .line 1145
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->setSelected(Z)V

    .line 1146
    iput p1, p0, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->c:I

    .line 24
    return-void
.end method


# virtual methods
.method public getChecked()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->c:I

    return v0
.end method

.method protected getOrientationInParent()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractLinearLayout;->setEnabled(Z)V

    .line 181
    if-nez p1, :cond_1

    .line 182
    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->setAlpha(F)V

    .line 186
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 187
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 188
    .local v1, "itemView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 186
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 184
    .end local v0    # "i":I
    .end local v1    # "itemView":Landroid/view/View;
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->setAlpha(F)V

    goto :goto_0

    .line 193
    .restart local v0    # "i":I
    :cond_2
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 159
    if-nez p1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->b:Ljava/util/List;

    .line 163
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 164
    .local v0, "size":I
    if-lt v0, v7, :cond_2

    const/4 v1, 0x5

    if-le v0, v1, :cond_3

    .line 165
    :cond_2
    const-string/jumbo v1, "SegmentView"

    const-string/jumbo v2, "setItems: ItemList\'s size must be less than [5] and more than [2]!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1086
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->b:Ljava/util/List;

    .line 1087
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->removeAllViews()V

    .line 1088
    if-eqz v4, :cond_0

    .line 1092
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->isEnabled()Z

    move-result v5

    .line 1094
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v6, v1, v6, v3}, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->a(ILjava/lang/String;IZ)Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;

    move-result-object v1

    .line 1096
    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->setEnabled(Z)V

    .line 1097
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->addView(Landroid/view/View;)V

    move v2, v3

    .line 1099
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_4

    .line 1100
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v2, v1, v3, v6}, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->a(ILjava/lang/String;IZ)Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;

    move-result-object v1

    .line 1101
    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->setEnabled(Z)V

    .line 1102
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->addView(Landroid/view/View;)V

    .line 1099
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1106
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    .line 1107
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1105
    invoke-direct {p0, v2, v1, v7, v6}, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->a(ILjava/lang/String;IZ)Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;

    move-result-object v1

    .line 1109
    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;->setEnabled(Z)V

    .line 1110
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setOnSelectListener(Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView$a;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->d:Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView$a;

    .line 205
    return-void
.end method
