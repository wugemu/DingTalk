.class final Lfiu$4;
.super Ljava/lang/Object;
.source "CommonContactAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfiu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/homepage/MicroAppItem;

.field final synthetic b:Lfiu;


# direct methods
.method constructor <init>(Lfiu;Lcom/alibaba/android/user/contact/homepage/MicroAppItem;)V
    .locals 0
    .param p1, "this$0"    # Lfiu;

    .prologue
    .line 324
    iput-object p1, p0, Lfiu$4;->b:Lfiu;

    iput-object p2, p0, Lfiu$4;->a:Lcom/alibaba/android/user/contact/homepage/MicroAppItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 327
    iget-object v0, p0, Lfiu$4;->a:Lcom/alibaba/android/user/contact/homepage/MicroAppItem;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/MicroAppItem;->getAppId()J

    move-result-wide v0

    const-wide/16 v2, -0x10

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lfiu$4;->b:Lfiu;

    const-string/jumbo v1, "ExternalContactFragmentser"

    iget-object v2, p0, Lfiu$4;->b:Lfiu;

    invoke-static {v2}, Lfiu;->a(Lfiu;)Landroid/app/Activity;

    move-result-object v2

    sget v3, Lezg$l;->dt_user_external_header_title:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfiu$4;->a:Lcom/alibaba/android/user/contact/homepage/MicroAppItem;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/homepage/MicroAppItem;->getOrgId()J

    move-result-wide v4

    invoke-static {v0, v1, v2, v4, v5}, Lfiu;->a(Lfiu;Ljava/lang/String;Ljava/lang/String;J)V

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lfiu$4;->b:Lfiu;

    const-string/jumbo v1, "CrmListFragment"

    iget-object v2, p0, Lfiu$4;->b:Lfiu;

    invoke-static {v2}, Lfiu;->a(Lfiu;)Landroid/app/Activity;

    move-result-object v2

    sget v3, Lezg$l;->txt_custom_name:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfiu$4;->a:Lcom/alibaba/android/user/contact/homepage/MicroAppItem;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/homepage/MicroAppItem;->getOrgId()J

    move-result-wide v4

    invoke-static {v0, v1, v2, v4, v5}, Lfiu;->a(Lfiu;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method
