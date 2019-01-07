.class final Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$2;
.super Ljava/lang/Object;
.source "GroupRingSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->a(Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;)Lcwb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->a(Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;)Lcwb;

    move-result-object v0

    const-string/jumbo v1, ""

    .line 1030
    iput-object v1, v0, Lcwb;->d:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->a(Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;)Lcwb;

    move-result-object v0

    invoke-virtual {v0}, Lcwb;->notifyDataSetChanged()V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->b(Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 123
    return-void
.end method
