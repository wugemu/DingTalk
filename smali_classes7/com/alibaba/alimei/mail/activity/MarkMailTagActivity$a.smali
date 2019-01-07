.class final Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$a;
.super Ljava/lang/Object;
.source "MarkMailTagActivity.java"

# interfaces
.implements Lrs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrs",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)V
    .locals 0

    .prologue
    .line 771
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$a;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    .prologue
    .line 771
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$a;-><init>(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 775
    sget v0, Laxo$g;->cmail_mark_mail_tag_list_item:I

    return v0
.end method

.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 780
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic a(Lrr;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v7, 0x8

    .line 771
    check-cast p2, Ljava/lang/String;

    .line 1785
    sget v0, Laxo$f;->delete:I

    .line 2100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v2

    .line 1786
    sget v0, Laxo$f;->icon:I

    .line 3100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1786
    check-cast v0, Landroid/widget/TextView;

    .line 1787
    sget v1, Laxo$f;->description:I

    .line 4100
    invoke-virtual {p1, v1}, Lrr;->a(I)Landroid/view/View;

    move-result-object v1

    .line 1787
    check-cast v1, Landroid/widget/TextView;

    .line 1788
    sget v3, Laxo$f;->select:I

    .line 5100
    invoke-virtual {p1, v3}, Lrr;->a(I)Landroid/view/View;

    move-result-object v3

    .line 1789
    sget v4, Laxo$f;->right_arrow:I

    .line 6100
    invoke-virtual {p1, v4}, Lrr;->a(I)Landroid/view/View;

    move-result-object v4

    .line 7096
    iget-object v5, p1, Lrr;->a:Landroid/content/Context;

    .line 1791
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Laxo$c;->ui_common_theme_bg_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1792
    sget v5, Laxo$i;->icon_add:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1793
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8096
    iget-object v0, p1, Lrr;->a:Landroid/content/Context;

    .line 1794
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Laxo$c;->ui_common_theme_bg_color:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1796
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1797
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1798
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 771
    return-void
.end method
