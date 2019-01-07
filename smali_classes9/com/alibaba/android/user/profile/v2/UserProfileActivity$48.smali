.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$48;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .prologue
    .line 3763
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$48;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$48;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3766
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$48;->a:Ljava/util/List;

    invoke-static {v1}, Lfbm;->a(Ljava/util/List;)V

    .line 3767
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.msg.sender.update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3768
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 3769
    return-void
.end method
