.class final Lggc$3;
.super Ljava/lang/Object;
.source "SpaceRecentUtils.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lggc;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/RecentOperationModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cspace/model/RecentOperationModel;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lggc$3;->a:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    iput-object p2, p0, Lggc$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 387
    const-string/jumbo v0, "space_recent_model"

    iget-object v1, p0, Lggc$3;->a:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 388
    const-string/jumbo v0, "space_org_id"

    iget-object v1, p0, Lggc$3;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    return-object p1
.end method
