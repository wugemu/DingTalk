.class public Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppFooterContainer;
.super Landroid/widget/LinearLayout;
.source "ChatAppFooterContainer.java"


# instance fields
.field public a:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

.field public b:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1028
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppFooterContainer;->setOrientation(I)V

    .line 1029
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppFooterContainer;->setGravity(I)V

    .line 1030
    sget v0, Lcig$c;->chat_app_footer_container_bg:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppFooterContainer;->setBackgroundResource(I)V

    .line 1031
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcig$h;->layout_chat_app_footer_container:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1032
    sget v0, Lcig$f;->chat_app_pager:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppFooterContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppFooterContainer;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    .line 1033
    sget v0, Lcig$f;->chat_app_indicator_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppFooterContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppFooterContainer;->b:Landroid/widget/LinearLayout;

    .line 25
    return-void
.end method
