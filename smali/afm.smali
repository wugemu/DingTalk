.class public Lafm;
.super Lrq;
.source "MenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrq",
        "<",
        "Lafn;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutRes"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lrq;-><init>(Landroid/content/Context;I)V

    .line 39
    return-void
.end method


# virtual methods
.method public a(Lrr;Lafn;)V
    .locals 5
    .param p1, "baseAdapterHelper"    # Lrr;
    .param p2, "item"    # Lafn;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 47
    sget v4, Laxo$f;->icon:I

    .line 1100
    invoke-virtual {p1, v4}, Lrr;->a(I)Landroid/view/View;

    move-result-object v1

    .line 47
    check-cast v1, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 48
    .local v1, "iconView":Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    if-eqz v1, :cond_1

    .line 1148
    iget v0, p2, Lafn;->b:I

    .line 2120
    .local v0, "icon":I
    const/4 v2, 0x0

    .line 51
    .local v2, "iconfont":Ljava/lang/String;
    if-gtz v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 52
    :cond_0
    if-lez v0, :cond_3

    .line 53
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 57
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 62
    .end local v0    # "icon":I
    .end local v2    # "iconfont":Ljava/lang/String;
    :cond_1
    :goto_1
    sget v4, Laxo$f;->description:I

    .line 3100
    invoke-virtual {p1, v4}, Lrr;->a(I)Landroid/view/View;

    move-result-object v3

    .line 62
    check-cast v3, Landroid/widget/TextView;

    .line 63
    .local v3, "titleView":Landroid/widget/TextView;
    if-eqz v3, :cond_2

    .line 3140
    iget-object v4, p2, Lafn;->c:Ljava/lang/String;

    .line 64
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_2
    return-void

    .line 55
    .end local v3    # "titleView":Landroid/widget/TextView;
    .restart local v0    # "icon":I
    .restart local v2    # "iconfont":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 58
    :cond_4
    if-eqz v1, :cond_1

    .line 59
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public bridge synthetic a(Lrr;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p2, Lafn;

    invoke-virtual {p0, p1, p2}, Lafm;->a(Lrr;Lafn;)V

    return-void
.end method
