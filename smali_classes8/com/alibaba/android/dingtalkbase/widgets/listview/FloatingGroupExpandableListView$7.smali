.class final Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$7;
.super Ljava/lang/Object;
.source "FloatingGroupExpandableListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 402
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->h(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 403
    return-void
.end method
