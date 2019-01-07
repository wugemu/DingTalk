.class final Lfls$3;
.super Ljava/lang/Object;
.source "ContactUtils.java"

# interfaces
.implements Lgwm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfls;->a(Landroid/content/Context;Lcom/alibaba/android/user/model/OrgInviteObject;JLjava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Boolean;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/alibaba/android/user/model/OrgInviteObject;

.field final synthetic d:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/Boolean;Landroid/app/Activity;Lcom/alibaba/android/user/model/OrgInviteObject;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 863
    iput-object p1, p0, Lfls$3;->a:Ljava/lang/Boolean;

    iput-object p2, p0, Lfls$3;->b:Landroid/app/Activity;

    iput-object p3, p0, Lfls$3;->c:Lcom/alibaba/android/user/model/OrgInviteObject;

    iput-object p4, p0, Lfls$3;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clean()V
    .locals 0

    .prologue
    .line 866
    return-void
.end method

.method public final share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
    .locals 6
    .param p1, "shareInfo"    # Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 870
    const-string/jumbo v0, "contact_invite_share_contact_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lfls$3;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfls$3;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lfls$3;->b:Landroid/app/Activity;

    iget-object v1, p0, Lfls$3;->c:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-wide v4, v1, Lcom/alibaba/android/user/model/OrgInviteObject;->orgId:J

    const-string/jumbo v1, "manage_staff_mode"

    invoke-static {v0, v4, v5, v1}, Lfls;->a(Landroid/app/Activity;JLjava/lang/String;)V

    .line 880
    :goto_0
    return-void

    .line 875
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getLinkUrl()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string/jumbo v3, "&inviteOther=true"

    aput-object v3, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 877
    .local v2, "url":Ljava/lang/String;
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lfls$3;->d:Landroid/content/Context;

    const/4 v3, 0x0

    move v5, v4

    .line 878
    invoke-virtual/range {v0 .. v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method
