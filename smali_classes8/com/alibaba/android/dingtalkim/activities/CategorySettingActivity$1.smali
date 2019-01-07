.class final Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$1;
.super Ljava/lang/Object;
.source "CategorySettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->b:J

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->a(Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Ldde;->a(Landroid/app/Activity;J[Ljava/lang/String;)V

    .line 92
    return-void
.end method
