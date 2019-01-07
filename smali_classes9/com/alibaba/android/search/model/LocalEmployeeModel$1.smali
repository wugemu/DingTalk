.class final Lcom/alibaba/android/search/model/LocalEmployeeModel$1;
.super Ljava/lang/Object;
.source "LocalEmployeeModel.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/model/LocalEmployeeModel;->onClick(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/model/LocalEmployeeModel;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/model/LocalEmployeeModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/model/LocalEmployeeModel;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/alibaba/android/search/model/LocalEmployeeModel$1;->a:Lcom/alibaba/android/search/model/LocalEmployeeModel;

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
    .line 194
    const-string/jumbo v0, "user_id"

    iget-object v1, p0, Lcom/alibaba/android/search/model/LocalEmployeeModel$1;->a:Lcom/alibaba/android/search/model/LocalEmployeeModel;

    iget-object v1, v1, Lcom/alibaba/android/search/model/LocalEmployeeModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-wide v2, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 195
    const-string/jumbo v0, "org_id"

    iget-object v1, p0, Lcom/alibaba/android/search/model/LocalEmployeeModel$1;->a:Lcom/alibaba/android/search/model/LocalEmployeeModel;

    iget-object v1, v1, Lcom/alibaba/android/search/model/LocalEmployeeModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-wide v2, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->orgId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 196
    return-object p1
.end method
