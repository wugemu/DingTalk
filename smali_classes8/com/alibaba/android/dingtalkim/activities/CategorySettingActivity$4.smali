.class final Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$4;
.super Ljava/lang/Object;
.source "CategorySettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 149
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->a(Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;Z)Z

    .line 154
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->c(Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;)Lddc$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->c(Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;)Lddc$a;

    move-result-object v0

    invoke-interface {v0}, Lddc$a;->a()V

    .line 157
    :cond_0
    return-void
.end method
