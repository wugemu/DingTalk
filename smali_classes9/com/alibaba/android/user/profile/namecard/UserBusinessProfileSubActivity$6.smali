.class final Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$6;
.super Ljava/lang/Object;
.source "UserBusinessProfileSubActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->b(J)Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfry;

.field final synthetic b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Lfry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    .prologue
    .line 923
    iput-object p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$6;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$6;->a:Lfry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 926
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$6;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$6;->a:Lfry;

    iget-object v2, v2, Lfry;->g:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    return-void
.end method
