.class final Lcom/alibaba/android/user/profile/v2/MyProfileActivity$23;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/MyProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$23;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$23;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$23;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    const-class v3, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 216
    return-void
.end method
