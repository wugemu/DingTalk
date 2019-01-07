.class final Lcom/alibaba/android/user/external/list/ManageExternalActivity$21$1;
.super Landroid/content/BroadcastReceiver;
.source "ManageExternalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/external/list/ManageExternalActivity$21;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/list/ManageExternalActivity$21;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity$21;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity$21;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$21$1;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity$21;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$21$1;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity$21;

    iget-object v0, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$21;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->c(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    .line 222
    return-void
.end method
