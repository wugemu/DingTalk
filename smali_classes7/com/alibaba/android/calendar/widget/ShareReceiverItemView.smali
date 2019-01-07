.class public Lcom/alibaba/android/calendar/widget/ShareReceiverItemView;
.super Landroid/widget/FrameLayout;
.source "ShareReceiverItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/calendar/widget/ShareReceiverItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/calendar/widget/ShareReceiverItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1038
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/ShareReceiverItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laow$e;->calendar_item_share_receiver:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1039
    sget v0, Laow$d;->avatarView:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/widget/ShareReceiverItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/ShareReceiverItemView;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1040
    sget v0, Laow$d;->tv_contact_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/widget/ShareReceiverItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/ShareReceiverItemView;->b:Landroid/widget/TextView;

    .line 1041
    sget v0, Laow$d;->tv_contact_privilege:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/widget/ShareReceiverItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/ShareReceiverItemView;->c:Landroid/widget/TextView;

    .line 35
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 68
    return-void
.end method
