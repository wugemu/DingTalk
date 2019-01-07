.class final Lcom/alibaba/android/user/contact/activities/EditDeptActivity$9;
.super Ljava/lang/Object;
.source "EditDeptActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    .prologue
    .line 701
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$9;->b:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$9;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 704
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$9;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 705
    return-object p1
.end method
