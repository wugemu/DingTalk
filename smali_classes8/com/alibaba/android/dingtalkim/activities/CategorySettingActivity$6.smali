.class final Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$6;
.super Ljava/lang/Object;
.source "CategorySettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$6;->b:Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$6;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$6;->b:Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$6;->b:Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->H_()V

    .line 210
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$6;->a:Z

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$6;->b:Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->finish()V

    .line 214
    :cond_0
    return-void
.end method
