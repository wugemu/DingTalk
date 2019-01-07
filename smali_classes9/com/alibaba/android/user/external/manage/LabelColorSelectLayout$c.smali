.class final Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;
.super Lfxq;
.source "LabelColorSelectLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfxq",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$a;

.field final synthetic b:Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout;

.field private c:Landroid/content/Context;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;->b:Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout;

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lfxq;-><init>(Landroid/app/Activity;)V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;->d:I

    .line 99
    iput-object p2, p0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;->c:Landroid/content/Context;

    .line 100
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;

    .prologue
    .line 89
    iget v0, p0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;->d:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;
    .param p1, "x1"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;->d:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;)Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;->a:Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$a;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 148
    iput p1, p0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;->d:I

    .line 149
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;->notifyDataSetChanged()V

    .line 150
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;->a:Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$a;

    if-eqz v0, :cond_0

    .line 151
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;->a:Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$a;

    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;->h:Ljava/util/List;

    iget v2, p0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$a;->a(I)V

    .line 153
    :cond_0
    return-void
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 106
    if-nez p2, :cond_0

    .line 107
    new-instance v1, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$b;

    iget-object v2, p0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;->b:Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout;

    invoke-direct {v1, v2}, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$b;-><init>(Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout;)V

    .line 108
    .local v1, "holder":Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$b;
    iget-object v2, p0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;->c:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lezg$j;->item_label_color_selector:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 109
    sget v2, Lezg$h;->iv_color_selctor:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$b;->a:Landroid/widget/ImageView;

    .line 110
    sget v2, Lezg$h;->iv_color:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$b;->b:Landroid/widget/ImageView;

    .line 111
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 116
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;->h:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1033
    invoke-static {v2, v5}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 117
    .local v0, "color":I
    iget-object v2, v1, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$b;->b:Landroid/widget/ImageView;

    invoke-static {v0}, Lfnn;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget v2, p0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;->d:I

    if-ne v2, p1, :cond_1

    .line 119
    iget-object v2, v1, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    :goto_1
    new-instance v2, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c$1;-><init>(Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;II)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-object p2

    .line 113
    .end local v0    # "color":I
    .end local v1    # "holder":Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$b;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$b;

    .restart local v1    # "holder":Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$b;
    goto :goto_0

    .line 121
    .restart local v0    # "color":I
    :cond_1
    iget-object v2, v1, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$b;->a:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
