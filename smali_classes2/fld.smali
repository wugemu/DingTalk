.class public final Lfld;
.super Lfgt;
.source "SelectOrgDetailListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfld$b;,
        Lfld$c;,
        Lfld$a;,
        Lfld$d;
    }
.end annotation


# instance fields
.field public c:Lfld$d;

.field private d:Landroid/content/Context;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lfld$a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, "categoryList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;>;"
    invoke-direct {p0}, Lfgt;-><init>()V

    .line 46
    iput-object p1, p0, Lfld;->d:Landroid/content/Context;

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfld;->a(Ljava/util/List;)V

    .line 48
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 167
    .local p1, "categoryObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;>;"
    iget-object v4, p0, Lfld;->f:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 168
    iget-object v4, p0, Lfld;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 170
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 196
    :cond_1
    return-void

    .line 175
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;

    .line 176
    .local v0, "category":Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;
    if-eqz v0, :cond_3

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;->subList:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;->subList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .line 180
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;->subList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 181
    .local v3, "oneCateforyDetail":Ljava/util/List;, "Ljava/util/List<Lfld$a;>;"
    iget-object v4, p0, Lfld;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    const/4 v2, 0x0

    .line 186
    .local v2, "industryDetailDouble":Lfld$a;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;->subList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 187
    rem-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_4

    .line 188
    new-instance v2, Lfld$a;

    .end local v2    # "industryDetailDouble":Lfld$a;
    invoke-direct {v2}, Lfld$a;-><init>()V

    .line 189
    .restart local v2    # "industryDetailDouble":Lfld$a;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;->subList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    iput-object v4, v2, Lfld$a;->a:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    .line 186
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_4
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;->subList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    iput-object v4, v2, Lfld$a;->b:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lfld;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lfld;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(IILandroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "section"    # I
    .param p2, "position"    # I
    .param p3, "convertView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 106
    if-nez p3, :cond_0

    .line 107
    iget-object v2, p0, Lfld;->d:Landroid/content/Context;

    sget v3, Lezg$j;->item_industry_detail_item:I

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 108
    new-instance v1, Lfld$c;

    invoke-direct {v1}, Lfld$c;-><init>()V

    .line 109
    .local v1, "viewHoler":Lfld$c;
    sget v2, Lezg$h;->tv_left_title:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lfld$c;->b:Landroid/widget/TextView;

    .line 110
    sget v2, Lezg$h;->tv_right_title:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lfld$c;->c:Landroid/widget/TextView;

    .line 111
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 116
    :goto_0
    invoke-virtual {p0, p1, p2}, Lfld;->a(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfld$a;

    .line 117
    .local v0, "data":Lfld$a;
    if-nez v0, :cond_1

    .line 139
    :goto_1
    return-object p3

    .line 113
    .end local v0    # "data":Lfld$a;
    .end local v1    # "viewHoler":Lfld$c;
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfld$c;

    .restart local v1    # "viewHoler":Lfld$c;
    goto :goto_0

    .line 120
    .restart local v0    # "data":Lfld$a;
    :cond_1
    iput-object v0, v1, Lfld$c;->a:Ljava/lang/Object;

    .line 121
    iget-object v2, v0, Lfld$a;->a:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    if-eqz v2, :cond_2

    .line 122
    iget-object v2, v1, Lfld$c;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lfld$a;->a:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v2, v1, Lfld$c;->b:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v2, v1, Lfld$c;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lfld$a;->a:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 130
    :goto_2
    iget-object v2, v0, Lfld$a;->b:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    if-eqz v2, :cond_3

    .line 131
    iget-object v2, v1, Lfld$c;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lfld$a;->b:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v2, v1, Lfld$c;->c:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v2, v1, Lfld$c;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lfld$a;->b:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 126
    :cond_2
    iget-object v2, v1, Lfld$c;->b:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v2, v1, Lfld$c;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v2, v1, Lfld$c;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 135
    :cond_3
    iget-object v2, v1, Lfld$c;->c:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v2, v1, Lfld$c;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v2, v1, Lfld$c;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final a(ILandroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "section"    # I
    .param p2, "convertView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x6

    .line 145
    if-nez p2, :cond_1

    .line 146
    new-instance p2, Landroid/widget/TextView;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v2, p0, Lfld;->d:Landroid/content/Context;

    invoke-direct {p2, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 147
    .restart local p2    # "convertView":Landroid/view/View;
    const/16 v2, 0x18

    invoke-virtual {p2, v2, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 148
    iget-object v2, p0, Lfld;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$e;->uidic_global_color_8_5:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 149
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    new-instance v1, Lfld$b;

    invoke-direct {v1}, Lfld$b;-><init>()V

    .local v1, "viewHolder":Lfld$b;
    move-object v2, p2

    .line 151
    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lfld$b;->a:Landroid/widget/TextView;

    .line 152
    iget-object v2, v1, Lfld$b;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lfld;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->uidic_global_color_6_2:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    iget-object v2, v1, Lfld$b;->a:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 154
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 158
    :goto_0
    iget-object v2, p0, Lfld;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;

    .line 159
    .local v0, "categoryObject":Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;
    if-eqz v0, :cond_0

    .line 160
    iget-object v2, v1, Lfld$b;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :cond_0
    return-object p2

    .line 156
    .end local v0    # "categoryObject":Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;
    .end local v1    # "viewHolder":Lfld$b;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfld$b;

    .restart local v1    # "viewHolder":Lfld$b;
    goto :goto_0
.end method

.method public final a(II)Ljava/lang/Object;
    .locals 1
    .param p1, "section"    # I
    .param p2, "position"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lfld;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lfld;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "categoryList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;>;"
    iput-object p1, p0, Lfld;->e:Ljava/util/List;

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfld;->e:Ljava/util/List;

    .line 60
    :cond_0
    iget-object v0, p0, Lfld;->f:Ljava/util/List;

    if-nez v0, :cond_1

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfld;->f:Ljava/util/List;

    .line 63
    :cond_1
    iget-object v0, p0, Lfld;->e:Ljava/util/List;

    invoke-direct {p0, v0}, Lfld;->b(Ljava/util/List;)V

    .line 64
    return-void
.end method

.method public final c(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 77
    int-to-long v0, p1

    return-wide v0
.end method

.method public final d(I)I
    .locals 3
    .param p1, "section"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v2, p0, Lfld;->f:Ljava/util/List;

    if-nez v2, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v1

    .line 93
    :cond_1
    iget-object v2, p0, Lfld;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt p1, v2, :cond_0

    .line 96
    iget-object v2, p0, Lfld;->f:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 97
    .local v0, "industryObjects":Ljava/util/List;, "Ljava/util/List<Lfld$a;>;"
    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 204
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lfld;->c:Lfld$d;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lfld;->c:Lfld$d;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lfld$d;->onClick(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_0
.end method
