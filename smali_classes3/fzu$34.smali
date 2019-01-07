.class final Lfzu$34;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic b:I

.field final synthetic c:J


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cspace/model/DentryModel;IJ)V
    .locals 1

    .prologue
    .line 3121
    iput-object p1, p0, Lfzu$34;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput p2, p0, Lfzu$34;->b:I

    iput-wide p3, p0, Lfzu$34;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 3124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3125
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "dentry_model"

    iget-object v2, p0, Lfzu$34;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3126
    const-string/jumbo v1, "space_type"

    iget v2, p0, Lfzu$34;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3127
    const-string/jumbo v1, "space_org_id"

    iget-wide v2, p0, Lfzu$34;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3128
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3129
    return-object p1
.end method
