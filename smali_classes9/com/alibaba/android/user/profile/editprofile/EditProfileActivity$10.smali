.class final Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$10;
.super Ljava/lang/Object;
.source "EditProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    .prologue
    .line 804
    iput-object p1, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$10;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 807
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$10;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->c(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V

    .line 808
    return-void
.end method
