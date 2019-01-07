.class final Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$3;
.super Ljava/lang/Object;
.source "TeleConfDialPadLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;

.field final synthetic b:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    .prologue
    .line 646
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$3;->b:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$3;->a:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 649
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$3;->a:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 650
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$3;->a:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-static {v2}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 651
    .local v1, "realMobile":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$3;->a:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$3;->a:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    .line 652
    .local v0, "nick":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$3;->b:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$3;->a:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v4, v5, v0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;JLjava/lang/String;Ljava/lang/String;)V

    .line 654
    .end local v0    # "nick":Ljava/lang/String;
    .end local v1    # "realMobile":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$3;->b:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->i(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)V

    .line 655
    return-void

    .line 651
    .restart local v1    # "realMobile":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$3;->a:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    goto :goto_0
.end method
