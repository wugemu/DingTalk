.class final Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog$1;
.super Ljava/lang/Object;
.source "RestoreAvatarDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog$1;->a:Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog$1;->a:Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog;->dismiss()V

    .line 98
    return-void
.end method
