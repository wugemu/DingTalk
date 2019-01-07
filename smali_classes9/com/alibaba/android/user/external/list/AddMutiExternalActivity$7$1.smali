.class final Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$7$1;
.super Ljava/lang/Object;
.source "AddMutiExternalActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$7;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$7;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$7;

    .prologue
    .line 543
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$7$1;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 546
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$7$1;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$7;

    iget-object v1, v1, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$7;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(Landroid/content/Context;)V

    .line 547
    return-void
.end method
