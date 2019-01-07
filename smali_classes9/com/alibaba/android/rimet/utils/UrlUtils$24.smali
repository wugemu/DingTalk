.class final Lcom/alibaba/android/rimet/utils/UrlUtils$24;
.super Ljava/lang/Object;
.source "UrlUtils.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/utils/UrlUtils;->c(Landroid/app/Activity;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;)V
    .locals 0

    .prologue
    .line 2099
    iput-object p1, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$24;->a:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2102
    const-string/jumbo v0, "org_id"

    iget-object v1, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$24;->a:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-wide v2, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2103
    const-string/jumbo v0, "org_name"

    iget-object v1, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$24;->a:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-object v1, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2104
    return-object p1
.end method
