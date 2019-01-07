.class final Lcom/alibaba/android/user/profile/v2/MyProfileActivity$33;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/MyProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/user/model/SWPersonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$33;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 254
    check-cast p1, Lcom/alibaba/android/user/model/SWPersonObject;

    .line 1257
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$33;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1261
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$33;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;Lcom/alibaba/android/user/model/SWPersonObject;)Lcom/alibaba/android/user/model/SWPersonObject;

    .line 1262
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$33;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->b(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;Lcom/alibaba/android/user/model/SWPersonObject;)V

    .line 254
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 272
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$33;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->b(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;Lcom/alibaba/android/user/model/SWPersonObject;)V

    .line 273
    invoke-static {}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "Error loadWorkRecord : "

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 268
    return-void
.end method
