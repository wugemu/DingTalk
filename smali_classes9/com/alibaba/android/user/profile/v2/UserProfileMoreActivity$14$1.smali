.class final Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$14$1;
.super Ljava/lang/Object;
.source "UserProfileMoreActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$14;->a(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$14;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$14;[Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$14;

    .prologue
    .line 1111
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$14$1;->c:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$14;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$14$1;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$14$1;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1115
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1117
    .local v0, "addSC":Landroid/content/Intent;
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$14$1;->c:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$14;

    iget-object v4, v4, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$14;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v4

    iget-object v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 1119
    .local v3, "title":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.alibaba.android.rimet.ShortCutChat"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1120
    .local v2, "launcherIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$14$1;->a:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1121
    const-string/jumbo v4, "user_id"

    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$14$1;->c:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$14;

    iget-object v5, v5, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$14;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->s(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)J

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1125
    :goto_0
    const-string/jumbo v4, "send_user_id"

    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$14$1;->a:[Ljava/lang/String;

    aget-object v5, v5, v9

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1126
    const-string/jumbo v4, "intent_key_profile_short_cut"

    invoke-virtual {v2, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1128
    const-string/jumbo v4, "duplicate"

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1130
    const-string/jumbo v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1133
    :try_start_0
    const-string/jumbo v4, "android.intent.extra.shortcut.ICON"

    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$14$1;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1138
    :goto_1
    const-string/jumbo v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1140
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$14$1;->c:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$14;

    iget-object v4, v4, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$14;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-virtual {v4, v0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1142
    sget v4, Lezg$l;->contact_is_friend:I

    invoke-static {v4}, Lcms;->a(I)V

    .line 1143
    return-void

    .line 1123
    :cond_0
    const-string/jumbo v4, "user_id_string"

    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$14$1;->a:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1134
    :catch_0
    move-exception v1

    .line 1135
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
