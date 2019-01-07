.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$15;
.super Ljava/lang/Object;
.source "FocusProjectionActivity.java"

# interfaces
.implements Lcom/alibaba/android/projection/widget/ProjectionRecordView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 1300
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$15;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$15;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->f(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Z)Z

    .line 1304
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$15;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->t(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/widget/ProjectionRecordView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->a()V

    .line 1305
    return-void
.end method

.method public final a(Landroid/view/View;Legt;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "recordObj"    # Legt;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1309
    if-eqz p2, :cond_0

    .line 1310
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$15;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->w(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    move-result-object v0

    .line 2023
    iget-object v1, p2, Legt;->a:Ljava/lang/String;

    .line 1310
    invoke-virtual {v0, v1}, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->setCastCode(Ljava/lang/String;)V

    .line 1312
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$15;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->t(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/widget/ProjectionRecordView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->a()V

    .line 1314
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$15;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->D(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1315
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$15;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->D(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 1317
    :cond_1
    const-string/jumbo v0, "his_code_click"

    const/4 v1, 0x0

    const-string/jumbo v2, "a2q0r.11900331.1.his_code_click"

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 1318
    return-void
.end method
