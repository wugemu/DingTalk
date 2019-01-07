.class final Lcom/alibaba/android/user/login/NoPwdLoginActivity$5;
.super Ljava/lang/Object;
.source "NoPwdLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/NoPwdLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field final synthetic b:Lcom/alibaba/android/user/login/NoPwdLoginActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/NoPwdLoginActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$5;->b:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$5;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 275
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$5;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v2, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$5;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-virtual {v0, v1, v2, v3}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;J)V

    .line 276
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$5;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 277
    invoke-static {}, Lfln;->a()Lfln;

    move-result-object v0

    invoke-virtual {v0}, Lfln;->b()V

    .line 278
    invoke-static {}, Lfwv;->a()Lfwv;

    move-result-object v0

    invoke-virtual {v0}, Lfwv;->b()V

    .line 279
    return-void
.end method
