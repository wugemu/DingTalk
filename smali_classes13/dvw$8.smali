.class final Ldvw$8;
.super Ljava/lang/Object;
.source "OneBoxCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldvw;->a(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ldvw;


# direct methods
.method constructor <init>(Ldvw;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Ldvw;

    .prologue
    .line 771
    iput-object p1, p0, Ldvw$8;->b:Ldvw;

    iput-object p2, p0, Ldvw$8;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 775
    iget-object v0, p0, Ldvw$8;->b:Ldvw;

    invoke-static {v0}, Ldvw;->b(Ldvw;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 788
    :goto_0
    return-void

    .line 778
    :cond_0
    iget-object v0, p0, Ldvw$8;->b:Ldvw;

    invoke-static {v0}, Ldvw;->l(Ldvw;)Ldvu;

    move-result-object v0

    invoke-interface {v0, v1}, Ldvu;->setShowOneBox(Z)V

    .line 779
    iget-object v0, p0, Ldvw$8;->b:Ldvw;

    new-instance v3, Ldvs;

    iget-object v4, p0, Ldvw$8;->b:Ldvw;

    invoke-static {v4}, Ldvw;->b(Ldvw;)Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Ldvw$8;->b:Ldvw;

    iget-object v6, p0, Ldvw$8;->a:Ljava/util/Map;

    invoke-direct {v3, v4, v5, v6}, Ldvs;-><init>(Landroid/app/Activity;Ldvw;Ljava/util/Map;)V

    invoke-static {v0, v3}, Ldvw;->a(Ldvw;Ldvs;)Ldvs;

    .line 780
    iget-object v0, p0, Ldvw$8;->b:Ldvw;

    invoke-static {v0}, Ldvw;->j(Ldvw;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v0

    iget-object v3, p0, Ldvw$8;->b:Ldvw;

    invoke-static {v3}, Ldvw;->m(Ldvw;)Ldvs;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 781
    iget-object v0, p0, Ldvw$8;->b:Ldvw;

    invoke-static {v0}, Ldvw;->l(Ldvw;)Ldvu;

    move-result-object v0

    iget-object v3, p0, Ldvw$8;->b:Ldvw;

    invoke-static {v3}, Ldvw;->n(Ldvw;)I

    move-result v3

    iget-object v4, p0, Ldvw$8;->b:Ldvw;

    invoke-static {v4}, Ldvw;->o(Ldvw;)Z

    move-result v4

    invoke-interface {v0, v3, v2, v4}, Ldvu;->a(IZZ)V

    .line 782
    iget-object v0, p0, Ldvw$8;->b:Ldvw;

    invoke-static {v0}, Ldvw;->p(Ldvw;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    .line 1164
    if-nez v0, :cond_1

    move v0, v1

    .line 782
    :goto_1
    if-eqz v0, :cond_5

    .line 783
    iget-object v0, p0, Ldvw$8;->b:Ldvw;

    invoke-static {v0}, Ldvw;->l(Ldvw;)Ldvu;

    move-result-object v0

    iget-object v1, p0, Ldvw$8;->b:Ldvw;

    invoke-static {v1}, Ldvw;->n(Ldvw;)I

    move-result v1

    invoke-interface {v0, v1, v2}, Ldvu;->a(IZ)V

    .line 784
    iget-object v0, p0, Ldvw$8;->b:Ldvw;

    invoke-static {v0}, Ldvw;->l(Ldvw;)Ldvu;

    move-result-object v0

    invoke-interface {v0, v2}, Ldvu;->c(Z)V

    goto :goto_0

    .line 1167
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v0

    .line 1168
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v0, v1

    .line 1169
    goto :goto_1

    .line 1171
    :cond_3
    const-string/jumbo v3, "KEY_FLOAT_WIN_STATE"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2150
    invoke-static {v0, v2}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 1173
    if-nez v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1

    .line 786
    :cond_5
    iget-object v0, p0, Ldvw$8;->b:Ldvw;

    invoke-virtual {v0, v2, v2}, Ldvw;->a(ZZ)V

    goto/16 :goto_0
.end method
