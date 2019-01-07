.class final Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter$a;
.super Ljava/lang/Object;
.source "WalletAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    sget v0, Lcaj$d;->iv_logo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter$a;->a:Landroid/widget/ImageView;

    .line 102
    sget v0, Lcaj$d;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter$a;->b:Landroid/widget/TextView;

    .line 103
    sget v0, Lcaj$d;->tv_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter$a;->c:Landroid/widget/TextView;

    .line 104
    sget v0, Lcaj$d;->tv_comment:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter$a;->d:Landroid/widget/TextView;

    .line 105
    sget v0, Lcaj$d;->adv_red_dot:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter$a;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 106
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;B)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter$a;-><init>(Landroid/view/View;)V

    return-void
.end method
