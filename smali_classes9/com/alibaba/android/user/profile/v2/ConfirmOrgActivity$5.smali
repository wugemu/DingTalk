.class final Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$5;
.super Ljava/lang/Object;
.source "ConfirmOrgActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$5;->b:Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$5;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 355
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$5;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "newNick":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 360
    .local v0, "length":I
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$5;->b:Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->b(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    iget-object v2, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    .line 361
    .local v2, "oldNick":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 365
    if-lez v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 366
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$5;->b:Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    sget v4, Lezg$l;->profile_nick_not_null:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_2
    if-lez v0, :cond_3

    invoke-static {}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->b()I

    move-result v3

    if-le v0, v3, :cond_4

    .line 371
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$5;->b:Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    sget v4, Lezg$l;->profile_nick_hint:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->b()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$5;->b:Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->b(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    iput-object v1, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    .line 376
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$5;->b:Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->h(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$5;->b:Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->b(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
