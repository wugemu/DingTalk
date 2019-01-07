.class final Lcom/alibaba/android/rimet/RimetDDContext$6;
.super Ljava/lang/Object;
.source "RimetDDContext.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/Authenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext;->initNavigator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/RimetDDContext;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/RimetDDContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/RimetDDContext;

    .prologue
    .line 1775
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$6;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isLogin()Z
    .locals 1

    .prologue
    .line 1784
    const/4 v0, 0x1

    return v0
.end method

.method public final login(Landroid/content/Context;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1778
    const-string/jumbo v0, "user_lg"

    invoke-static {}, Lcom/alibaba/android/rimet/RimetDDContext;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "initNavigator"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a(Landroid/content/Context;Z)V

    .line 1780
    return-void
.end method
