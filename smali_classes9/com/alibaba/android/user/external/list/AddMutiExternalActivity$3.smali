.class final Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$3;
.super Ljava/lang/Object;
.source "AddMutiExternalActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$3;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 164
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$3;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 165
    return-void
.end method
