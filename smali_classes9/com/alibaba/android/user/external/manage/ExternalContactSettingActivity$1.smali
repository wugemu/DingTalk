.class final Lcom/alibaba/android/user/external/manage/ExternalContactSettingActivity$1;
.super Ljava/lang/Object;
.source "ExternalContactSettingActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/manage/ExternalContactSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/manage/ExternalContactSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/manage/ExternalContactSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/manage/ExternalContactSettingActivity;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/ExternalContactSettingActivity$1;->a:Lcom/alibaba/android/user/external/manage/ExternalContactSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 97
    const-string/jumbo v0, "org_id"

    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/ExternalContactSettingActivity$1;->a:Lcom/alibaba/android/user/external/manage/ExternalContactSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/manage/ExternalContactSettingActivity;->a(Lcom/alibaba/android/user/external/manage/ExternalContactSettingActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 98
    return-object p1
.end method
