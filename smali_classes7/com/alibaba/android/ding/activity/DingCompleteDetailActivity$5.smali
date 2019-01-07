.class final Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$5;
.super Ljava/lang/Object;
.source "DingCompleteDetailActivity.java"

# interfaces
.implements Lbhx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$5;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .param p1, "curMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 223
    if-nez p1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$5;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    sget-object v1, Lcom/alibaba/android/ding/utils/PageDisplayMode;->MULTI_SELECT:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->a(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;Lcom/alibaba/android/ding/utils/PageDisplayMode;)V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$5;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    sget-object v1, Lcom/alibaba/android/ding/utils/PageDisplayMode;->NO_SELECT:Lcom/alibaba/android/ding/utils/PageDisplayMode;

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->a(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;Lcom/alibaba/android/ding/utils/PageDisplayMode;)V

    goto :goto_0
.end method
