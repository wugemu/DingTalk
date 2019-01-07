.class public Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;
.super Landroid/widget/LinearLayout;
.source "TeleConfRatingBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;,
        Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$a;

.field private c:I

.field private d:Landroid/widget/CheckBox;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/CheckBox;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/CheckBox;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/CheckBox;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/CheckBox;

.field private m:Landroid/widget/TextView;

.field private n:[Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Leuj$j;->layout_conf_rating_bar_view:I

    invoke-virtual {v5, v6, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 63
    sget v5, Leuj$i;->star_0:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->d:Landroid/widget/CheckBox;

    .line 64
    sget v5, Leuj$i;->star_0_txt:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->e:Landroid/widget/TextView;

    .line 65
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->d:Landroid/widget/CheckBox;

    new-instance v6, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$1;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    sget v5, Leuj$i;->star_1:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->f:Landroid/widget/CheckBox;

    .line 77
    sget v5, Leuj$i;->star_1_txt:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->g:Landroid/widget/TextView;

    .line 78
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->f:Landroid/widget/CheckBox;

    new-instance v6, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$2;

    invoke-direct {v6, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$2;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    sget v5, Leuj$i;->star_2:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->h:Landroid/widget/CheckBox;

    .line 90
    sget v5, Leuj$i;->star_2_txt:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->i:Landroid/widget/TextView;

    .line 91
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->h:Landroid/widget/CheckBox;

    new-instance v6, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$3;

    invoke-direct {v6, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$3;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    sget v5, Leuj$i;->star_3:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->j:Landroid/widget/CheckBox;

    .line 103
    sget v5, Leuj$i;->star_3_txt:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->k:Landroid/widget/TextView;

    .line 104
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->j:Landroid/widget/CheckBox;

    new-instance v6, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$4;

    invoke-direct {v6, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$4;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    sget v5, Leuj$i;->star_4:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->l:Landroid/widget/CheckBox;

    .line 116
    sget v5, Leuj$i;->star_4_txt:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->m:Landroid/widget/TextView;

    .line 117
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->l:Landroid/widget/CheckBox;

    new-instance v6, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$5;

    invoke-direct {v6, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$5;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const/4 v5, 0x5

    new-array v5, v5, [Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;

    iput-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->n:[Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;

    .line 131
    new-instance v0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;

    invoke-direct {v0, p0, v7}, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;B)V

    .line 132
    .local v0, "holder0":Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->d:Landroid/widget/CheckBox;

    iput-object v5, v0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;->a:Landroid/widget/CheckBox;

    .line 133
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->e:Landroid/widget/TextView;

    iput-object v5, v0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;->b:Landroid/widget/TextView;

    .line 134
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->n:[Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;

    aput-object v0, v5, v7

    .line 136
    new-instance v1, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;

    invoke-direct {v1, p0, v7}, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;B)V

    .line 137
    .local v1, "holder1":Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->f:Landroid/widget/CheckBox;

    iput-object v5, v1, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;->a:Landroid/widget/CheckBox;

    .line 138
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->g:Landroid/widget/TextView;

    iput-object v5, v1, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;->b:Landroid/widget/TextView;

    .line 139
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->n:[Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;

    aput-object v1, v5, v8

    .line 141
    new-instance v2, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;

    invoke-direct {v2, p0, v7}, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;B)V

    .line 142
    .local v2, "holder2":Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->h:Landroid/widget/CheckBox;

    iput-object v5, v2, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;->a:Landroid/widget/CheckBox;

    .line 143
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->i:Landroid/widget/TextView;

    iput-object v5, v2, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;->b:Landroid/widget/TextView;

    .line 144
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->n:[Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;

    const/4 v6, 0x2

    aput-object v2, v5, v6

    .line 146
    new-instance v3, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;

    invoke-direct {v3, p0, v7}, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;B)V

    .line 147
    .local v3, "holder3":Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->j:Landroid/widget/CheckBox;

    iput-object v5, v3, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;->a:Landroid/widget/CheckBox;

    .line 148
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->k:Landroid/widget/TextView;

    iput-object v5, v3, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;->b:Landroid/widget/TextView;

    .line 149
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->n:[Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;

    const/4 v6, 0x3

    aput-object v3, v5, v6

    .line 151
    new-instance v4, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;

    invoke-direct {v4, p0, v7}, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;B)V

    .line 152
    .local v4, "holder4":Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->l:Landroid/widget/CheckBox;

    iput-object v5, v4, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;->a:Landroid/widget/CheckBox;

    .line 153
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->m:Landroid/widget/TextView;

    iput-object v5, v4, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;->b:Landroid/widget/TextView;

    .line 154
    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->n:[Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;

    const/4 v6, 0x4

    aput-object v4, v5, v6

    .line 156
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;)Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->b:Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$a;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;I)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;
    .param p1, "x1"    # I

    .prologue
    const/4 v5, 0x5

    const/4 v1, 0x0

    .line 34
    .line 1159
    if-ltz p1, :cond_0

    if-lt p1, v5, :cond_1

    .line 1160
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1162
    :goto_0
    if-ge v0, v5, :cond_0

    .line 1163
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->n:[Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;

    aget-object v2, v2, v0

    .line 1164
    if-eqz v2, :cond_3

    .line 1165
    if-gt v0, p1, :cond_4

    .line 1166
    iget-object v3, v2, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;->a:Landroid/widget/CheckBox;

    if-eqz v3, :cond_2

    .line 1167
    iget-object v3, v2, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;->a:Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1169
    :cond_2
    iget-object v3, v2, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;->b:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 1170
    iget-object v2, v2, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Leuj$f;->C2:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1162
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1173
    :cond_4
    iget-object v3, v2, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;->a:Landroid/widget/CheckBox;

    if-eqz v3, :cond_5

    .line 1174
    iget-object v3, v2, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;->a:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1176
    :cond_5
    iget-object v3, v2, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;->b:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 1177
    iget-object v2, v2, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$b;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Leuj$f;->color_6_9:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->c:I

    return p1
.end method


# virtual methods
.method public getRating()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->c:I

    return v0
.end method

.method public setOnRatingBarListener(Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$a;)V
    .locals 0
    .param p1, "l"    # Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$a;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar;->b:Lcom/alibaba/android/teleconf/widget/TeleConfRatingBar$a;

    .line 190
    return-void
.end method
