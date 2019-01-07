.class public Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;
.super Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;
.source "BreadcrumbTrail.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method


# virtual methods
.method public getLayout()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lezg$j;->bread_crumb_trail:I

    return v0
.end method

.method public getSelectedColor()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lezg$e;->ui_common_theme_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getUnSelectedColor()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BreadcrumbTrail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lezg$e;->ui_common_level3_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method
