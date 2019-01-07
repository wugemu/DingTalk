.class final Lcom/alibaba/android/user/label/LabelSelectActivity$5;
.super Ljava/lang/Object;
.source "LabelSelectActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/label/LabelSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/alibaba/android/user/label/LabelSelectActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/label/LabelSelectActivity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/label/LabelSelectActivity;

    .prologue
    .line 495
    iput-object p1, p0, Lcom/alibaba/android/user/label/LabelSelectActivity$5;->b:Lcom/alibaba/android/user/label/LabelSelectActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/label/LabelSelectActivity$5;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 498
    iget-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity$5;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 499
    return-object p1
.end method
