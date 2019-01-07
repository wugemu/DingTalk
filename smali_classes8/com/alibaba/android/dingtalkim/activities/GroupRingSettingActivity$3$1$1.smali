.class final Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3$1$1;
.super Ljava/lang/Object;
.source "GroupRingSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3$1;I)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3$1;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3$1$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3$1;

    iput p2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3$1$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 159
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3$1$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3$1$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->d(Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;)Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3$1$1;->a:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 162
    :cond_0
    return-void
.end method
