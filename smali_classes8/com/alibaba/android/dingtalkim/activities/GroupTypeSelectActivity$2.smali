.class final Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$2;
.super Ljava/lang/Object;
.source "GroupTypeSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->a(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->a(Ljava/util/List;)V

    .line 129
    return-void
.end method
