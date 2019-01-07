.class final Lcom/alibaba/android/user/settings/activity/PrivateActivity$5;
.super Ljava/lang/Object;
.source "PrivateActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/PrivateActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/PrivateActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/PrivateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/PrivateActivity;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity$5;->a:Lcom/alibaba/android/user/settings/activity/PrivateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 232
    return-object p1
.end method
