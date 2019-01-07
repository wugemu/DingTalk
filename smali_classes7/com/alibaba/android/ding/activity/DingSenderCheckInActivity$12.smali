.class final Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$12;
.super Ljava/lang/Object;
.source "DingSenderCheckInActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$12;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$12;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->c(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lbkh;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$12;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->c(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$12;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->d(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Lcma;

    move-result-object v1

    .line 1970
    iget-object v4, v0, Lbbp;->b:Lbbp$a;

    new-instance v5, Lbbp$103;

    invoke-direct {v5, v0, v2, v3, v1}, Lbbp$103;-><init>(Lbbp;JLcma;)V

    invoke-virtual {v4, v5}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
