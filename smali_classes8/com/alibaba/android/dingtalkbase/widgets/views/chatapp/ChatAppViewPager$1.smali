.class final Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$1;
.super Ljava/lang/Object;
.source "ChatAppViewPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 62
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "v"    # F
    .param p3, "i1"    # I

    .prologue
    .line 52
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 1
    .param p1, "pageIndex"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;->a(I)V

    .line 57
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;I)I

    .line 59
    :cond_0
    return-void
.end method
