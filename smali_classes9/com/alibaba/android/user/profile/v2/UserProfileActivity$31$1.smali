.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31$1;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31;

    .prologue
    .line 2893
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2896
    packed-switch p2, :pswitch_data_0

    .line 2904
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2905
    return-void

    .line 2898
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31;->c:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31;->a:[D

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgWorkAddress:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;[DLjava/lang/String;)V

    goto :goto_0

    .line 2901
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31;->c:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgWorkAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$31;->c:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    sget v3, Lezg$l;->chat_copy_is_success:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcnz;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Z

    goto :goto_0

    .line 2896
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
