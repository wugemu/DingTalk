.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$11;
.super Ljava/lang/Object;
.source "FocusProjectionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 1216
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$11;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1219
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$11;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->f(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$11;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .line 1220
    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->f(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Running:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$11;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-ne v1, v2, :cond_2

    if-ltz p3, :cond_2

    .line 1222
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$11;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->f(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Running:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-ne v1, v2, :cond_1

    .line 1223
    const/4 v0, 0x1

    .line 1227
    .local v0, "isExtra":Z
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$11;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1, v0, p3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;ZI)V

    .line 1231
    .end local v0    # "isExtra":Z
    :goto_1
    return-void

    .line 1225
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isExtra":Z
    goto :goto_0

    .line 1229
    .end local v0    # "isExtra":Z
    :cond_2
    const-string/jumbo v1, "focus"

    invoke-static {}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Invalid status for re-select"

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
