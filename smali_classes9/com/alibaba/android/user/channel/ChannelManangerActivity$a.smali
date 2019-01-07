.class final Lcom/alibaba/android/user/channel/ChannelManangerActivity$a;
.super Landroid/text/style/ClickableSpan;
.source "ChannelManangerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/channel/ChannelManangerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/user/channel/ChannelManangerActivity$b;

.field final synthetic b:Lcom/alibaba/android/user/channel/ChannelManangerActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/channel/ChannelManangerActivity;Lcom/alibaba/android/user/channel/ChannelManangerActivity$b;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/channel/ChannelManangerActivity;
    .param p2, "spanClickListener"    # Lcom/alibaba/android/user/channel/ChannelManangerActivity$b;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/alibaba/android/user/channel/ChannelManangerActivity$a;->b:Lcom/alibaba/android/user/channel/ChannelManangerActivity;

    .line 346
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 347
    iput-object p2, p0, Lcom/alibaba/android/user/channel/ChannelManangerActivity$a;->a:Lcom/alibaba/android/user/channel/ChannelManangerActivity$b;

    .line 348
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelManangerActivity$a;->a:Lcom/alibaba/android/user/channel/ChannelManangerActivity$b;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelManangerActivity$a;->a:Lcom/alibaba/android/user/channel/ChannelManangerActivity$b;

    invoke-interface {v0, p1}, Lcom/alibaba/android/user/channel/ChannelManangerActivity$b;->onClick(Landroid/view/View;)V

    .line 361
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 362
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 352
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 353
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 354
    return-void
.end method
