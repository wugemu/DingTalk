.class final Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;
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
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    .line 1212
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1215
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1216
    .local v1, "newNick":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1217
    .local v0, "length":I
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1218
    if-lez v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 1219
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    sget v4, Lezg$l;->profile_nick_not_null:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    .line 1264
    :cond_0
    :goto_0
    return-void

    .line 1222
    :cond_1
    if-lez v0, :cond_2

    sget v3, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->a:I

    if-le v0, v3, :cond_3

    .line 1223
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    sget v4, Lezg$l;->profile_nick_hint:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget v7, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->a:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1225
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->showLoadingDialog()V

    .line 1226
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    iget-object v2, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    .line 1227
    .local v2, "oldNick":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    iput-object v1, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    .line 1228
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v4

    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .line 1229
    invoke-static {v3}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v5

    const-string/jumbo v3, "EVENTBUTLER"

    .line 1230
    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v6, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25$1;

    invoke-direct {v6, p0, v2, v1}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25$1;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;Ljava/lang/String;Ljava/lang/String;)V

    const-class v7, Lcma;

    iget-object v8, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-interface {v3, v6, v7, v8}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcma;

    .line 1229
    invoke-interface {v4, v5, v3}, Lfac;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcma;)V

    goto :goto_0
.end method
