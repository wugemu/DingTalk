.class public Lcom/alibaba/android/search/widget/FiveStarMarkView;
.super Landroid/widget/LinearLayout;
.source "FiveStarMarkView.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/FiveStarMarkView;->a()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/FiveStarMarkView;->a()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/FiveStarMarkView;->a()V

    .line 55
    return-void
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/FiveStarMarkView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lemt$f;->five_start_mark_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 61
    sget v0, Lemt$e;->iv_start_1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/widget/FiveStarMarkView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->a:Landroid/widget/ImageView;

    .line 62
    sget v0, Lemt$e;->iv_start_2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/widget/FiveStarMarkView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->b:Landroid/widget/ImageView;

    .line 63
    sget v0, Lemt$e;->iv_start_3:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/widget/FiveStarMarkView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->c:Landroid/widget/ImageView;

    .line 64
    sget v0, Lemt$e;->iv_start_4:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/widget/FiveStarMarkView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->d:Landroid/widget/ImageView;

    .line 65
    sget v0, Lemt$e;->iv_start_5:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/widget/FiveStarMarkView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->e:Landroid/widget/ImageView;

    .line 66
    return-void
.end method


# virtual methods
.method public setGrade(I)V
    .locals 2
    .param p1, "grade"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 70
    packed-switch p1, :pswitch_data_0

    .line 114
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->a:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->b:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->c:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->d:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->e:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/FiveStarMarkView;->requestLayout()V

    .line 123
    return-void

    .line 72
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->a:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->b:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->c:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->d:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->e:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->a:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->b:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->c:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->d:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->e:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 86
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->a:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->b:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->c:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->d:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->e:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 93
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->a:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->b:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->c:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->d:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->e:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 100
    :pswitch_4
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->a:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->b:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->c:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->d:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->e:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 107
    :pswitch_5
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->a:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->b:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->c:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->d:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/search/widget/FiveStarMarkView;->e:Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_star_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
