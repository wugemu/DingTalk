.class public Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView;
.super Landroid/widget/RelativeLayout;
.source "RimetNavigatorTabView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/rimet/biz/home/widget/IconTab;

.field private b:Lcom/alibaba/android/rimet/biz/home/widget/IconTab;

.field private c:Lcom/alibaba/android/rimet/biz/home/widget/IconTab;

.field private d:Lcom/alibaba/android/rimet/biz/home/widget/IconTab;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView;->a()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView;->a()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView;->a()V

    .line 54
    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040533

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 58
    const v0, 0x7f1100b7

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/rimet/biz/home/widget/IconTab;

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView;->a:Lcom/alibaba/android/rimet/biz/home/widget/IconTab;

    .line 59
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView;->a:Lcom/alibaba/android/rimet/biz/home/widget/IconTab;

    const v1, 0x7f020afc

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/IconTab;->setIcon(I)V

    .line 60
    const v0, 0x7f1100b8

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/rimet/biz/home/widget/IconTab;

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView;->b:Lcom/alibaba/android/rimet/biz/home/widget/IconTab;

    .line 61
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView;->b:Lcom/alibaba/android/rimet/biz/home/widget/IconTab;

    const v1, 0x7f020afd

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/IconTab;->setIcon(I)V

    .line 62
    const v0, 0x7f1100b6

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/rimet/biz/home/widget/IconTab;

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView;->c:Lcom/alibaba/android/rimet/biz/home/widget/IconTab;

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView;->c:Lcom/alibaba/android/rimet/biz/home/widget/IconTab;

    const v1, 0x7f020afb

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/IconTab;->setIcon(I)V

    .line 64
    const v0, 0x7f1116d9

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/rimet/biz/home/widget/IconTab;

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView;->d:Lcom/alibaba/android/rimet/biz/home/widget/IconTab;

    .line 65
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView;->d:Lcom/alibaba/android/rimet/biz/home/widget/IconTab;

    const v1, 0x7f020afe

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/IconTab;->setIcon(I)V

    .line 66
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;II)V
    .locals 4
    .param p1, "tabId"    # Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;
    .param p2, "notifyNum"    # I
    .param p3, "totalNum"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 89
    .line 1070
    sget-object v0, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$1;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView$TabId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1081
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView;->a:Lcom/alibaba/android/rimet/biz/home/widget/IconTab;

    .line 2048
    :goto_0
    if-gtz p3, :cond_1

    .line 2049
    iget-object v1, v0, Lcom/alibaba/android/rimet/biz/home/widget/IconTab;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2050
    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/widget/IconTab;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2056
    :cond_0
    :goto_1
    return-void

    .line 1072
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView;->c:Lcom/alibaba/android/rimet/biz/home/widget/IconTab;

    goto :goto_0

    .line 1075
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView;->b:Lcom/alibaba/android/rimet/biz/home/widget/IconTab;

    goto :goto_0

    .line 1078
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/RimetNavigatorTabView;->d:Lcom/alibaba/android/rimet/biz/home/widget/IconTab;

    goto :goto_0

    .line 2053
    :cond_1
    if-nez p2, :cond_2

    .line 2054
    iget-object v1, v0, Lcom/alibaba/android/rimet/biz/home/widget/IconTab;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2055
    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/widget/IconTab;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 2058
    :cond_2
    iget-object v1, v0, Lcom/alibaba/android/rimet/biz/home/widget/IconTab;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2060
    const/16 v1, 0x64

    if-ge p2, v1, :cond_3

    .line 2061
    iget-object v1, v0, Lcom/alibaba/android/rimet/biz/home/widget/IconTab;->b:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2065
    :goto_2
    iget-object v1, v0, Lcom/alibaba/android/rimet/biz/home/widget/IconTab;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2066
    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/widget/IconTab;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 2063
    :cond_3
    iget-object v1, v0, Lcom/alibaba/android/rimet/biz/home/widget/IconTab;->b:Landroid/widget/TextView;

    const-string/jumbo v2, "99+"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1070
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
