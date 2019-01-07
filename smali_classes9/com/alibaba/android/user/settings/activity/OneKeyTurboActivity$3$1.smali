.class final Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$3$1;
.super Ljava/lang/Object;
.source "OneKeyTurboActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$3;->a(Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Long;

.field final synthetic b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$3;Ljava/lang/Long;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$3;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$3$1;->b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$3;

    iput-object p2, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$3$1;->a:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 180
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$3$1;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$3$1;->b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$3;->a:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$3$1;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->a(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;J)J

    .line 182
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$3$1;->b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$3;->a:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$3$1;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->b(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;J)V

    .line 187
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$3$1;->b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$3;->a:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->a(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;J)J

    .line 185
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$3$1;->b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$3;->a:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->b(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;J)V

    goto :goto_0
.end method
