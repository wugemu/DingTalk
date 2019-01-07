.class public final Lcue;
.super Lcvi;
.source "ChannelOAFilterListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcvi",
        "<",
        "Ldqo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ldqo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p2, "channelFilterModels":Ljava/util/List;, "Ljava/util/List<Ldqo;>;"
    invoke-direct {p0, p1, p2}, Lcvi;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 18
    return-void
.end method


# virtual methods
.method public final synthetic a(Lcvi$a;Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 14
    check-cast p2, Ldqo;

    .line 1022
    iget-object v0, p1, Lcvi$a;->a:Landroid/widget/TextView;

    .line 2022
    iget-object v1, p2, Ldqo;->a:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;

    .line 1022
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1023
    iget-object v0, p1, Lcvi$a;->a:Landroid/widget/TextView;

    .line 2030
    iget-boolean v1, p2, Ldqo;->b:Z

    .line 1023
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3014
    iget-boolean v0, p2, Ldqo;->c:Z

    .line 1024
    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p1, Lcvi$a;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    .line 1027
    :cond_0
    iget-object v0, p1, Lcvi$a;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
