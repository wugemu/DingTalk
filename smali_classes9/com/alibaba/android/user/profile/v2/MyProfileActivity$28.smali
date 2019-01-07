.class final Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 1301
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1304
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->showLoadingDialog()V

    .line 1305
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->gender:Ljava/lang/String;

    .line 1306
    .local v0, "oldGender":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->t(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->gender:Ljava/lang/String;

    .line 1307
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .line 1308
    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    const-string/jumbo v1, "EVENTBUTLER"

    .line 1309
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28$1;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28$1;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28;Ljava/lang/String;)V

    const-class v5, Lcma;

    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-interface {v1, v4, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 1308
    invoke-interface {v2, v3, v1}, Lfac;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcma;)V

    .line 1332
    return-void
.end method
