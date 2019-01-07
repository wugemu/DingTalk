.class final Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$3;
.super Lcmi;
.source "ChannelShareQrcodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lfoh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$3;->a:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$3;->a:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->c(Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 182
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 162
    check-cast p1, Lfoh;

    .line 1165
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$3;->a:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->c(Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1166
    if-nez p1, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$3;->a:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    sget v1, Lezg$l;->group_qrcode_generate_failed:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1168
    :goto_0
    return-void

    .line 1172
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$3;->a:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    iget-object v1, p1, Lfoh;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->a(Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;Ljava/lang/String;)V

    .line 1173
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$3;->a:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    iget-object v1, p1, Lfoh;->g:Ljava/lang/String;

    iget-object v2, p1, Lfoh;->e:Ljava/lang/String;

    iget-object v3, p1, Lfoh;->f:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->a(Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1175
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$3;->a:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->d(Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;)V

    goto :goto_0
.end method
