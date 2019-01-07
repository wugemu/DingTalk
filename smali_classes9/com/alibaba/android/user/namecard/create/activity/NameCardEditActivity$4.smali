.class final Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$4;
.super Ljava/lang/Object;
.source "NameCardEditActivity.java"

# interfaces
.implements Lftb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$4;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 255
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$4;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->b(Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;)Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$4;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->b(Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;)Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 256
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$4;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->b(Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;)Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "sUid":Ljava/lang/String;
    const-string/jumbo v2, "targetUid=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "queryParams":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$4;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;

    const-string/jumbo v3, "/pages/setprovacy/setprovacy"

    invoke-static {v2, v0, v3}, Lcom/alibaba/android/user/contact/utils/UserUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .end local v0    # "queryParams":Ljava/lang/String;
    .end local v1    # "sUid":Ljava/lang/String;
    :goto_0
    return-void

    .line 260
    :cond_0
    const-string/jumbo v2, "model null or uid 0"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lfxo;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
