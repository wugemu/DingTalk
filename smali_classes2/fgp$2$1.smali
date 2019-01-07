.class final Lfgp$2$1;
.super Ljava/lang/Object;
.source "OrgApplyAdapter.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgp$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfgp$2;


# direct methods
.method constructor <init>(Lfgp$2;)V
    .locals 0
    .param p1, "this$1"    # Lfgp$2;

    .prologue
    .line 262
    iput-object p1, p0, Lfgp$2$1;->a:Lfgp$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 265
    const-string/jumbo v0, "org_apply"

    iget-object v1, p0, Lfgp$2$1;->a:Lfgp$2;

    iget-object v1, v1, Lfgp$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 266
    const-string/jumbo v0, "list_view_position"

    iget-object v1, p0, Lfgp$2$1;->a:Lfgp$2;

    iget v1, v1, Lfgp$2;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    return-object p1
.end method
