.class final Lcom/alibaba/android/oa/fragment/CommonOAFragment$1;
.super Ljava/lang/Object;
.source "CommonOAFragment.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/fragment/CommonOAFragment;->a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

.field final synthetic b:Lcom/alibaba/android/oa/fragment/CommonOAFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$1;->b:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    iput-object p2, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$1;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 239
    const-string/jumbo v0, "micro_agent"

    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$1;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iget-wide v2, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 240
    const-string/jumbo v0, "micro_app"

    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$1;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iget-wide v2, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 241
    const-string/jumbo v0, "micro_from_oa"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 242
    return-object p1
.end method
