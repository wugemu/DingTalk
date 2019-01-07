.class final Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$4;
.super Ljava/lang/Object;
.source "ShareActionBox.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$4;->a:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 510
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 506
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 501
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$4;->a:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    invoke-static {v0, p1}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->a(Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;I)I

    .line 502
    return-void
.end method
