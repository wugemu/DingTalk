.class final Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$4;
.super Ljava/lang/Object;
.source "OneKeyTurboActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$4;->b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;

    iput-wide p2, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$4;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$4;->a:J

    sub-long v0, v2, v4

    .line 213
    .local v0, "costTime":J
    const-string/jumbo v2, "setting_general_clean_onkeyclick_success_click"

    const-string/jumbo v3, "size=%1$s,time=%2$s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$4;->b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->b(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1315
    const/4 v5, 0x0

    invoke-static {v5, v2, v3, v4}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$4;->b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$4;->b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->b(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->c(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;J)V

    .line 217
    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$4;->a()V

    .line 222
    return-void
.end method

.method public final synthetic onProgress(Ljava/lang/Object;I)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 207
    .line 2226
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$4;->b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->c(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$4;->b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;

    sget v3, Lezg$l;->dt_one_key_turbo_clear_doing:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string/jumbo v2, "%.2f"

    new-array v3, v9, [Ljava/lang/Object;

    int-to-double v4, p2

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x2

    const-string/jumbo v3, "%"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$4;->a()V

    return-void
.end method
