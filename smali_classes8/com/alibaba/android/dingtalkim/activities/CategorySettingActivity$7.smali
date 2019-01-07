.class final Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$7;
.super Ljava/lang/Object;
.source "CategorySettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->f()V
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
    .line 292
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 296
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->finish()V

    .line 297
    return-void
.end method
