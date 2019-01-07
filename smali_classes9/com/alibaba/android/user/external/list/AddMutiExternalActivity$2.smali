.class final Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$2;
.super Ljava/lang/Object;
.source "AddMutiExternalActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    .prologue
    .line 749
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$2;->b:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$2;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 752
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$2;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 753
    return-object p1
.end method
