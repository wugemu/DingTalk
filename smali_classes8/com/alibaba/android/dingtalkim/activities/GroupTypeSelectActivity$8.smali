.class final Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8;
.super Ljava/lang/Object;
.source "GroupTypeSelectActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8;->b:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8;->a:Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8;->b:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->showLoadingDialog()V

    .line 229
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v0

    invoke-virtual {v0}, Ldyn;->c()Ldxx;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8;->b:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->d(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8;->a:Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgId:J

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8;)V

    const-class v6, Lcma;

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8;->b:Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    invoke-interface {v0, v3, v6, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v1, v2, v4, v5, v0}, Ldxx;->c(Ljava/lang/String;JLcma;)V

    .line 250
    return-void
.end method
