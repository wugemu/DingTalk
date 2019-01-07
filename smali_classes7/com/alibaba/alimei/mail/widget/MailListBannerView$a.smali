.class final Lcom/alibaba/alimei/mail/widget/MailListBannerView$a;
.super Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;
.source "MailListBannerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/widget/MailListBannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter",
        "<",
        "Lafl;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object p2, p0, Lcom/alibaba/alimei/mail/widget/MailListBannerView$a;->a:Landroid/view/View$OnClickListener;

    .line 48
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 53
    if-nez p2, :cond_3

    .line 54
    new-instance v1, Lcom/alibaba/alimei/mail/widget/MailListBannerView$b;

    invoke-direct {v1, v5}, Lcom/alibaba/alimei/mail/widget/MailListBannerView$b;-><init>(B)V

    .line 55
    .local v1, "viewHolder":Lcom/alibaba/alimei/mail/widget/MailListBannerView$b;
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/MailListBannerView$a;->e:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Laxo$g;->alm_cmail_list_banner_view:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 57
    sget v2, Laxo$f;->banner_backgroud:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/alimei/mail/widget/MailListBannerView$b;->a:Landroid/view/View;

    .line 58
    sget v2, Laxo$f;->banner_title:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/alibaba/alimei/mail/widget/MailListBannerView$b;->c:Landroid/widget/TextView;

    .line 59
    sget v2, Laxo$f;->banner_icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v2, v1, Lcom/alibaba/alimei/mail/widget/MailListBannerView$b;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 60
    sget v2, Laxo$f;->banner_close:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v2, v1, Lcom/alibaba/alimei/mail/widget/MailListBannerView$b;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 61
    sget v2, Laxo$f;->banner_cell_divider:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/alimei/mail/widget/MailListBannerView$b;->e:Landroid/view/View;

    .line 63
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    :goto_0
    if-ltz p1, :cond_2

    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/MailListBannerView$a;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 69
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/MailListBannerView$a;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafl;

    .line 71
    .local v0, "model":Lafl;
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/MailListBannerView$a;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_4

    .line 72
    iget-object v2, v1, Lcom/alibaba/alimei/mail/widget/MailListBannerView$b;->e:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 77
    :goto_1
    iget-object v2, v1, Lcom/alibaba/alimei/mail/widget/MailListBannerView$b;->c:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, v1, Lcom/alibaba/alimei/mail/widget/MailListBannerView$b;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/MailListBannerView$a;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v2, v1, Lcom/alibaba/alimei/mail/widget/MailListBannerView$b;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lafl;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v2, v1, Lcom/alibaba/alimei/mail/widget/MailListBannerView$b;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 87
    :cond_0
    iget-object v2, v1, Lcom/alibaba/alimei/mail/widget/MailListBannerView$b;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v2, :cond_1

    .line 88
    iget-object v2, v1, Lcom/alibaba/alimei/mail/widget/MailListBannerView$b;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTag(Ljava/lang/Object;)V

    .line 89
    iget-object v2, v1, Lcom/alibaba/alimei/mail/widget/MailListBannerView$b;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/MailListBannerView$a;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    :cond_1
    iget-object v2, v1, Lcom/alibaba/alimei/mail/widget/MailListBannerView$b;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lafl;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 93
    iget-object v2, v1, Lcom/alibaba/alimei/mail/widget/MailListBannerView$b;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v3, v0, Lafl;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .end local v0    # "model":Lafl;
    :cond_2
    return-object p2

    .line 65
    .end local v1    # "viewHolder":Lcom/alibaba/alimei/mail/widget/MailListBannerView$b;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/mail/widget/MailListBannerView$b;

    .restart local v1    # "viewHolder":Lcom/alibaba/alimei/mail/widget/MailListBannerView$b;
    goto :goto_0

    .line 74
    .restart local v0    # "model":Lafl;
    :cond_4
    iget-object v2, v1, Lcom/alibaba/alimei/mail/widget/MailListBannerView$b;->e:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
