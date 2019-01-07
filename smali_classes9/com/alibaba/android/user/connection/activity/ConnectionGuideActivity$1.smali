.class final Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$1;
.super Ljava/lang/Object;
.source "ConnectionGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$1;->a:Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$1;->a:Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->setResult(I)V

    .line 71
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$1;->a:Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity;->finish()V

    .line 72
    return-void
.end method
