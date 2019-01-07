.class public Lcom/alibaba/android/user/contact/view/OrgIndexView;
.super Landroid/widget/LinearLayout;
.source "OrgIndexView.java"


# instance fields
.field private final a:J

.field private final b:J

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/user/contact/view/OrgIndexView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/user/contact/view/OrgIndexView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/view/OrgIndexView;->a:J

    .line 27
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/view/OrgIndexView;->b:J

    .line 1047
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/OrgIndexView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->user_layout_org_score:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1049
    sget v1, Lezg$h;->view_marquee:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/OrgIndexView;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/MarqueeView;

    .line 44
    return-void
.end method
