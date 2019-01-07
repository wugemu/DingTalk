.class final Lcom/alibaba/android/user/devset/DevSettingActivity$4;
.super Ljava/lang/Object;
.source "DevSettingActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/devset/DevSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/devset/DevSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/devset/DevSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/devset/DevSettingActivity;

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/alibaba/android/user/devset/DevSettingActivity$4;->a:Lcom/alibaba/android/user/devset/DevSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1105
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "\u4f1a\u8bdd\u521b\u5efa\u5931\u8d25"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1106
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1093
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1093
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 2096
    const-string/jumbo v0, "\u4f1a\u8bdd\u521b\u5efa\u6210\u529f"

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 2097
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/auth/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2098
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/devset/DevSettingActivity$4;->a:Lcom/alibaba/android/user/devset/DevSettingActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Z)V

    .line 2099
    iget-object v0, p0, Lcom/alibaba/android/user/devset/DevSettingActivity$4;->a:Lcom/alibaba/android/user/devset/DevSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/devset/DevSettingActivity;->finish()V

    .line 1093
    :cond_0
    return-void
.end method
