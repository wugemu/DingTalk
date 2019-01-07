.class final Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$6;
.super Ljava/lang/Object;
.source "AnnounceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$6;->b:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$6;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 569
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/AnnounceGuidePopUpWindow;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$6;->b:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkim/views/AnnounceGuidePopUpWindow;-><init>(Landroid/content/Context;)V

    .line 570
    .local v0, "announceGuidePopUpWindow":Lcom/alibaba/android/dingtalkim/views/AnnounceGuidePopUpWindow;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/AnnounceGuidePopUpWindow;->setOutsideTouchable(Z)V

    .line 571
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$6;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/AnnounceGuidePopUpWindow;->a(Landroid/view/View;)V

    .line 572
    return-void
.end method
