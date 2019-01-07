.class final Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$2;
.super Ljava/lang/Object;
.source "CommonFilePickerActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$2;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 189
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 180
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$2;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->b(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$2;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->a(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    return-void
.end method
