.class final Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$2;
.super Ljava/lang/Object;
.source "ChannelApplyDetailActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$2;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

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
    const/16 v1, 0x8

    .line 177
    .line 1180
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$2;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->e(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1181
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$2;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->f(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1182
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$2;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->g(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1183
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$2;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->g(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lezg$l;->hint_reject:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1184
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$2;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    sget-object v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->REJECTED:Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    iget v1, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->status:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->a(I)V

    .line 177
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 190
    return-void
.end method
