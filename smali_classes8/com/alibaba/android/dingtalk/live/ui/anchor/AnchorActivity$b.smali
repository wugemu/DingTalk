.class final Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;
.super Ljava/lang/Object;
.source "AnchorActivity.java"

# interfaces
.implements Ljjx$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V
    .locals 0

    .prologue
    .line 1063
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 1063
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1066
    const-string/jumbo v0, "onPushStreamError"

    .line 2013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    move-result-object v0

    .line 2067
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2068
    if-eqz v0, :cond_0

    .line 2069
    const-string/jumbo v2, "uuid"

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->liveUuid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2070
    const-string/jumbo v2, "inputStreamUrl"

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->inputStreamUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2072
    :cond_0
    const/16 v0, 0x1773

    const-string/jumbo v2, "Live Stream Failed"

    invoke-static {v0, v2, v1}, Lbyo;->a(ILjava/lang/String;Ljava/util/Map;)V

    .line 1068
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    new-instance v1, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b$1;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1089
    return-void
.end method

.method public final a(Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;)V
    .locals 3
    .param p1, "status"    # Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->C(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->D(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1187
    :cond_0
    :goto_0
    return-void

    .line 1168
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$8;->a:[I

    invoke-virtual {p1}, Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1170
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->C(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lbtp$d;->network_excellent:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1171
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->D(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lbtp$g;->dt_lv_network_good:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1172
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->D(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbtp$b;->network_excellent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1175
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->C(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lbtp$d;->network_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1176
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->D(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lbtp$g;->dt_lv_network_general:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1177
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->D(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbtp$b;->network_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1180
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->C(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lbtp$d;->network_worse:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1181
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->D(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lbtp$g;->dt_lv_network_poor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1182
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->D(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbtp$b;->network_worse:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 1168
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "time"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->A(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->A(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1133
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->B(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1134
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->B(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1136
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1093
    const-string/jumbo v0, "onPushStreamStarted"

    .line 3013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    new-instance v1, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b$2;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1105
    return-void
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1109
    const-string/jumbo v0, "onPushStreamRetry"

    .line 4013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    new-instance v1, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b$3;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1119
    return-void
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->A(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1124
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->A(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1126
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1140
    const-string/jumbo v0, "onPushStreamFpsTooSlow"

    .line 5013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    new-instance v1, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b$4;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1161
    return-void
.end method
