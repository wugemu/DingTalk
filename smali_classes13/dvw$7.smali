.class final Ldvw$7;
.super Ljava/lang/Object;
.source "OneBoxCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldvw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

.field final synthetic c:Ldvw;


# direct methods
.method constructor <init>(Ldvw;ZLcom/alibaba/android/dingtalkim/models/OneBoxObject;)V
    .locals 0
    .param p1, "this$0"    # Ldvw;

    .prologue
    .line 656
    iput-object p1, p0, Ldvw$7;->c:Ldvw;

    iput-boolean p2, p0, Ldvw$7;->a:Z

    iput-object p3, p0, Ldvw$7;->b:Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 659
    iget-boolean v0, p0, Ldvw$7;->a:Z

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Ldvw$7;->c:Ldvw;

    invoke-static {v0}, Ldvw;->d(Ldvw;)Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;->PULL_FROM_DOWN:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    if-ne v0, v1, :cond_0

    .line 662
    iget-object v0, p0, Ldvw$7;->c:Ldvw;

    iget-object v1, p0, Ldvw$7;->c:Ldvw;

    invoke-static {v1}, Ldvw;->b(Ldvw;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lctk$g;->box_footer_loading_view:I

    const/4 v3, 0x0

    .line 663
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 662
    invoke-static {v0, v1}, Ldvw;->a(Ldvw;Landroid/view/View;)Landroid/view/View;

    .line 664
    iget-object v0, p0, Ldvw$7;->c:Ldvw;

    invoke-static {v0}, Ldvw;->j(Ldvw;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v0

    iget-object v1, p0, Ldvw$7;->c:Ldvw;

    invoke-static {v1}, Ldvw;->i(Ldvw;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addFooterView(Landroid/view/View;)V

    .line 668
    :cond_0
    iget-object v0, p0, Ldvw$7;->c:Ldvw;

    iget-object v1, p0, Ldvw$7;->b:Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    invoke-static {v0, v1}, Ldvw;->a(Ldvw;Lcom/alibaba/android/dingtalkim/models/OneBoxObject;)V

    .line 670
    iget-object v0, p0, Ldvw$7;->c:Ldvw;

    iget-object v1, p0, Ldvw$7;->c:Ldvw;

    invoke-static {v1}, Ldvw;->k(Ldvw;)I

    move-result v1

    invoke-static {v0, v1}, Ldvw;->e(Ldvw;I)V

    .line 672
    return-void
.end method
