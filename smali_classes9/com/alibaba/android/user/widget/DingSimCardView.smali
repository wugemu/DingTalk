.class public Lcom/alibaba/android/user/widget/DingSimCardView;
.super Landroid/widget/ImageView;
.source "DingSimCardView.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0}, Lcom/alibaba/android/user/widget/DingSimCardView;->a()V

    .line 24
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
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lcom/alibaba/android/user/widget/DingSimCardView;->a()V

    .line 29
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
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0}, Lcom/alibaba/android/user/widget/DingSimCardView;->a()V

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/widget/DingSimCardView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/widget/DingSimCardView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alibaba/android/user/widget/DingSimCardView;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 41
    sget v0, Lezg$g;->icon_ding_sim_card:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/widget/DingSimCardView;->setImageResource(I)V

    .line 42
    new-instance v0, Lcom/alibaba/android/user/widget/DingSimCardView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/widget/DingSimCardView$1;-><init>(Lcom/alibaba/android/user/widget/DingSimCardView;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/widget/DingSimCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method


# virtual methods
.method public setClickUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alibaba/android/user/widget/DingSimCardView;->a:Ljava/lang/String;

    .line 38
    return-void
.end method
