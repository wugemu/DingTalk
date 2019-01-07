.class final Lcom/alibaba/android/user/login/ActionResultActivity$1;
.super Ljava/lang/Object;
.source "ActionResultActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/ActionResultActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/ActionResultActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/ActionResultActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/ActionResultActivity;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alibaba/android/user/login/ActionResultActivity$1;->a:Lcom/alibaba/android/user/login/ActionResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 95
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 96
    iget-object v0, p0, Lcom/alibaba/android/user/login/ActionResultActivity$1;->a:Lcom/alibaba/android/user/login/ActionResultActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/ActionResultActivity;->a(Lcom/alibaba/android/user/login/ActionResultActivity;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/user/login/ActionResultActivity$1;->a:Lcom/alibaba/android/user/login/ActionResultActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/ActionResultActivity;->a(Lcom/alibaba/android/user/login/ActionResultActivity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 99
    :cond_0
    return-object p1
.end method
