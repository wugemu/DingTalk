.class final Lcom/alibaba/android/user/settings/activity/UnregisterAccountActivity$2;
.super Ljava/lang/Object;
.source "UnregisterAccountActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/UnregisterAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/UnregisterAccountActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/UnregisterAccountActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/UnregisterAccountActivity;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/UnregisterAccountActivity$2;->a:Lcom/alibaba/android/user/settings/activity/UnregisterAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 79
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 80
    .local v0, "userProfileExtObj":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v0, :cond_0

    .line 81
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/UnregisterAccountActivity$2;->a:Lcom/alibaba/android/user/settings/activity/UnregisterAccountActivity;

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/user/settings/activity/UnregisterAccountActivity;->a(Lcom/alibaba/android/user/settings/activity/UnregisterAccountActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method
