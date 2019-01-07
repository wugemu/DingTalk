.class final Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$8;
.super Ljava/lang/Object;
.source "AnnounceEditActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public final a(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->b(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)Landroid/widget/EditText;

    move-result-object v0

    float-to-int v1, p1

    float-to-int v2, p2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcqc;->a(Landroid/view/View;III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->b(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->b(Landroid/content/Context;Landroid/view/View;)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->b(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method
