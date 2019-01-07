.class final Lsm$a;
.super Lafm;
.source "SlideFromTopPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutRes"    # I

    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Lafm;-><init>(Landroid/content/Context;I)V

    .line 193
    const/4 v0, -0x1

    iput v0, p0, Lsm$a;->a:I

    .line 197
    return-void
.end method


# virtual methods
.method protected final a(Lrr;Lafn;)V
    .locals 6
    .param p1, "baseAdapterHelper"    # Lrr;
    .param p2, "item"    # Lafn;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 205
    invoke-super {p0, p1, p2}, Lafm;->a(Lrr;Lafn;)V

    .line 206
    invoke-virtual {p1}, Lrr;->a()I

    move-result v1

    .line 207
    .local v1, "position":I
    sget v3, Laxo$f;->select:I

    .line 1100
    invoke-virtual {p1, v3}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 207
    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 208
    .local v0, "iconView":Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    if-eqz v0, :cond_0

    .line 209
    iget v3, p0, Lsm$a;->a:I

    if-ne v3, v1, :cond_2

    .line 210
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 211
    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setActivated(Z)V

    .line 225
    :cond_0
    :goto_0
    sget v3, Laxo$f;->description:I

    .line 2100
    invoke-virtual {p1, v3}, Lrr;->a(I)Landroid/view/View;

    move-result-object v2

    .line 225
    check-cast v2, Landroid/widget/TextView;

    .line 226
    .local v2, "titleView":Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 227
    iget v3, p0, Lsm$a;->a:I

    if-ne v3, v1, :cond_3

    .line 228
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setActivated(Z)V

    .line 233
    :cond_1
    :goto_1
    return-void

    .line 213
    .end local v2    # "titleView":Landroid/widget/TextView;
    :cond_2
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_0

    .line 230
    .restart local v2    # "titleView":Landroid/widget/TextView;
    :cond_3
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setActivated(Z)V

    goto :goto_1
.end method

.method protected final bridge synthetic a(Lrr;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 189
    check-cast p2, Lafn;

    invoke-virtual {p0, p1, p2}, Lsm$a;->a(Lrr;Lafn;)V

    return-void
.end method
