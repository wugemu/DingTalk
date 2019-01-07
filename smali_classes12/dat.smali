.class public final Ldat;
.super Ldal;
.source "ChannelSessionTitleViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldal",
        "<",
        "Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Ldal;-><init>(Landroid/view/View;)V

    .line 19
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 33
    sget v0, Lctk$f;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldat;->a:Landroid/widget/TextView;

    .line 34
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 13
    check-cast p1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;

    .line 1023
    if-eqz p1, :cond_0

    .line 1024
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;->channelSessionTitleModel:Lddn;

    .line 1025
    if-eqz v0, :cond_0

    .line 1026
    iget-object v1, p0, Ldat;->a:Landroid/widget/TextView;

    iget-object v0, v0, Lddn;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :cond_0
    return-void
.end method
