.class final Lcom/alibaba/android/user/profile/v2/MyProfileActivity$40$1;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/MyProfileActivity$40;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$40;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity$40;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity$40;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$40$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$40;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$40$1;->a:Ljava/lang/String;

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
    .line 380
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$40$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$40;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$40;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$40$1;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    return-void
.end method
