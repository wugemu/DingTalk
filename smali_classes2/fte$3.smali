.class public final Lfte$3;
.super Ljava/lang/Object;
.source "NameCardInfosPresenter.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfte;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

.field final synthetic b:Lfte;


# direct methods
.method public constructor <init>(Lfte;Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V
    .locals 0
    .param p1, "this$0"    # Lfte;

    .prologue
    .line 78
    iput-object p1, p0, Lfte$3;->b:Lfte;

    iput-object p2, p0, Lfte$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 81
    const-string/jumbo v2, "org_name"

    iget-object v0, p0, Lfte$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string/jumbo v0, "org_id"

    iget-object v2, p0, Lfte$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 83
    return-object p1

    .line 81
    :cond_0
    iget-object v0, p0, Lfte$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->orgName:Ljava/lang/String;

    goto :goto_0

    .line 82
    :cond_1
    iget-object v1, p0, Lfte$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->orgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1
.end method
