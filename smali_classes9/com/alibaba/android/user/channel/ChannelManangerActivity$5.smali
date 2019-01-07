.class final Lcom/alibaba/android/user/channel/ChannelManangerActivity$5;
.super Ljava/lang/Object;
.source "ChannelManangerActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/channel/ChannelManangerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/channel/ChannelManangerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/channel/ChannelManangerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/channel/ChannelManangerActivity;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/alibaba/android/user/channel/ChannelManangerActivity$5;->a:Lcom/alibaba/android/user/channel/ChannelManangerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 222
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelManangerActivity$5;->a:Lcom/alibaba/android/user/channel/ChannelManangerActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->c(Lcom/alibaba/android/user/channel/ChannelManangerActivity;)Landroid/widget/ToggleButton;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelManangerActivity$5;->a:Lcom/alibaba/android/user/channel/ChannelManangerActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->c(Lcom/alibaba/android/user/channel/ChannelManangerActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 224
    return-void

    .line 223
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 218
    return-void
.end method
