.class final Lfgz$3;
.super Ljava/lang/Object;
.source "ContactHeaderViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgz;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfgz;


# direct methods
.method constructor <init>(Lfgz;)V
    .locals 0
    .param p1, "this$0"    # Lfgz;

    .prologue
    .line 207
    iput-object p1, p0, Lfgz$3;->a:Lfgz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 210
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const-class v1, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    .line 211
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "contact_mobilecontact_button_click"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 212
    iget-object v0, p0, Lfgz$3;->a:Lfgz;

    const-string/jumbo v1, "local_contact"

    const-string/jumbo v2, "to_local_contact"

    invoke-static {v0, v1, v2}, Lfgz;->a(Lfgz;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lfgz$3;->a:Lfgz;

    invoke-static {v1}, Lfgz;->a(Lfgz;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;->CONTACT_FRAGMENT:Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;)V

    .line 214
    return-void
.end method
