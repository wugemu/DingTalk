.class public Lcom/alibaba/android/projection/widget/ProjectionRecordView;
.super Landroid/widget/LinearLayout;
.source "ProjectionRecordView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/projection/widget/ProjectionRecordView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Legt;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/alibaba/android/projection/widget/ProjectionRecordView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/projection/widget/ProjectionRecordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
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
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/projection/widget/ProjectionRecordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1045
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Legm$d;->layout_focus_projecting_history_records_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1047
    sget v0, Legm$c;->history_close:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->a:Landroid/view/View;

    .line 1048
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->a:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/projection/widget/ProjectionRecordView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/widget/ProjectionRecordView$1;-><init>(Lcom/alibaba/android/projection/widget/ProjectionRecordView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1056
    sget v0, Legm$c;->item_content_0:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->b:Landroid/widget/TextView;

    .line 1057
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/projection/widget/ProjectionRecordView$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/widget/ProjectionRecordView$2;-><init>(Lcom/alibaba/android/projection/widget/ProjectionRecordView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1065
    sget v0, Legm$c;->item_content_1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->c:Landroid/widget/TextView;

    .line 1066
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/projection/widget/ProjectionRecordView$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/widget/ProjectionRecordView$3;-><init>(Lcom/alibaba/android/projection/widget/ProjectionRecordView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1074
    sget v0, Legm$c;->item_content_2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->d:Landroid/widget/TextView;

    .line 1075
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/projection/widget/ProjectionRecordView$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/widget/ProjectionRecordView$4;-><init>(Lcom/alibaba/android/projection/widget/ProjectionRecordView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/projection/widget/ProjectionRecordView;)Lcom/alibaba/android/projection/widget/ProjectionRecordView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/widget/ProjectionRecordView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->f:Lcom/alibaba/android/projection/widget/ProjectionRecordView$a;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/projection/widget/ProjectionRecordView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/widget/ProjectionRecordView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->e:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 136
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    invoke-virtual {p0, v1}, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->setVisibility(I)V

    .line 140
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Legt;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Legt;>;"
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 90
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iput-object p1, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->e:Ljava/util/List;

    .line 94
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 95
    .local v1, "size":I
    const/4 v2, 0x3

    if-lt v1, v2, :cond_5

    .line 96
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->e:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Legt;

    .line 100
    .local v0, "recordObject":Legt;
    if-eqz v0, :cond_2

    .line 101
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->b:Landroid/widget/TextView;

    .line 2023
    iget-object v3, v0, Legt;->a:Ljava/lang/String;

    .line 101
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->e:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "recordObject":Legt;
    check-cast v0, Legt;

    .line 104
    .restart local v0    # "recordObject":Legt;
    if-eqz v0, :cond_3

    .line 105
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->c:Landroid/widget/TextView;

    .line 3023
    iget-object v3, v0, Legt;->a:Ljava/lang/String;

    .line 105
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->e:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "recordObject":Legt;
    check-cast v0, Legt;

    .line 108
    .restart local v0    # "recordObject":Legt;
    if-eqz v0, :cond_4

    .line 109
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->d:Landroid/widget/TextView;

    .line 4023
    iget-object v3, v0, Legt;->a:Ljava/lang/String;

    .line 109
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_4
    :goto_1
    invoke-virtual {p0, v4}, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->setVisibility(I)V

    goto :goto_0

    .line 111
    .end local v0    # "recordObject":Legt;
    :cond_5
    if-lt v1, v6, :cond_7

    .line 112
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->e:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Legt;

    .line 116
    .restart local v0    # "recordObject":Legt;
    if-eqz v0, :cond_6

    .line 117
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->b:Landroid/widget/TextView;

    .line 5023
    iget-object v3, v0, Legt;->a:Ljava/lang/String;

    .line 117
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :cond_6
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->e:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "recordObject":Legt;
    check-cast v0, Legt;

    .line 120
    .restart local v0    # "recordObject":Legt;
    if-eqz v0, :cond_4

    .line 121
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->c:Landroid/widget/TextView;

    .line 6023
    iget-object v3, v0, Legt;->a:Ljava/lang/String;

    .line 121
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 124
    .end local v0    # "recordObject":Legt;
    :cond_7
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->e:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Legt;

    .line 128
    .restart local v0    # "recordObject":Legt;
    if-eqz v0, :cond_4

    .line 129
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->b:Landroid/widget/TextView;

    .line 7023
    iget-object v3, v0, Legt;->a:Ljava/lang/String;

    .line 129
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setRecordListener(Lcom/alibaba/android/projection/widget/ProjectionRecordView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/projection/widget/ProjectionRecordView$a;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->f:Lcom/alibaba/android/projection/widget/ProjectionRecordView$a;

    .line 87
    return-void
.end method
