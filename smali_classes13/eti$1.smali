.class public final Leti$1;
.super Ljava/lang/Object;
.source "DingSearchResultConvergeHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leti;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic b:Leti;


# direct methods
.method public constructor <init>(Leti;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 0
    .param p1, "this$0"    # Leti;

    .prologue
    .line 147
    iput-object p1, p0, Leti$1;->b:Leti;

    iput-object p2, p0, Leti$1;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 150
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v2, "ding_list_search_result_sender_dinglist_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Leti$1;->b:Leti;

    .line 1043
    iget-object v1, v1, Leti;->c:Landroid/widget/TextView;

    .line 151
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "history":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    invoke-static {}, Lesr;->a()Lesr;

    move-result-object v1

    iget-object v2, p0, Leti$1;->b:Leti;

    .line 2043
    iget-object v2, v2, Leti;->g:Landroid/app/Activity;

    .line 153
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lesr;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 156
    :cond_0
    iget-object v1, p0, Leti$1;->b:Leti;

    iget-object v2, p0, Leti$1;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 3162
    if-eqz v2, :cond_1

    .line 3163
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3164
    :cond_1
    :goto_0
    return-void

    .line 3166
    :cond_2
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v3

    iget-object v1, v1, Leti;->g:Landroid/app/Activity;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
