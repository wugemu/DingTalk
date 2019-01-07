.class final Lcom/alibaba/android/user/channel/ChannelManangerActivity$4;
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
        "Ljava/lang/Boolean;",
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
    .line 185
    iput-object p1, p0, Lcom/alibaba/android/user/channel/ChannelManangerActivity$4;->a:Lcom/alibaba/android/user/channel/ChannelManangerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 185
    check-cast p1, Ljava/lang/Boolean;

    .line 1188
    if-eqz p1, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelManangerActivity$4;->a:Lcom/alibaba/android/user/channel/ChannelManangerActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->c(Lcom/alibaba/android/user/channel/ChannelManangerActivity;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 185
    :cond_0
    return-void

    .line 1189
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 200
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 196
    return-void
.end method
