.class final Lfgv$1;
.super Ljava/lang/Object;
.source "SettingOrgBossAdapter.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfgv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

.field final synthetic b:I

.field final synthetic c:Lfgv;


# direct methods
.method constructor <init>(Lfgv;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;I)V
    .locals 0
    .param p1, "this$0"    # Lfgv;

    .prologue
    .line 89
    iput-object p1, p0, Lfgv$1;->c:Lfgv;

    iput-object p2, p0, Lfgv$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iput p3, p0, Lfgv$1;->b:I

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
    .line 92
    const-string/jumbo v0, "user_id"

    iget-object v1, p0, Lfgv$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 93
    const-string/jumbo v0, "key_from_concern_list"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 94
    const-string/jumbo v0, "list_view_position"

    iget v1, p0, Lfgv$1;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    return-object p1
.end method
