.class final Lfly$1;
.super Ljava/lang/Object;
.source "OrgHomePageManager.java"

# interfaces
.implements Lblc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfly;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lblc",
        "<",
        "Lcry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfly;


# direct methods
.method constructor <init>(Lfly;)V
    .locals 0
    .param p1, "this$0"    # Lfly;

    .prologue
    .line 41
    iput-object p1, p0, Lfly$1;->a:Lfly;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 41
    check-cast p1, Lcry;

    .line 1044
    if-eqz p1, :cond_0

    .line 2051
    iget-boolean v0, p1, Lcry;->b:Z

    .line 1044
    if-nez v0, :cond_1

    .line 1045
    :cond_0
    :goto_0
    return-void

    .line 2091
    :cond_1
    iget-object v0, p1, Lcry;->g:Ljava/lang/String;

    .line 2109
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1048
    const/4 v2, 0x1

    .line 1047
    invoke-static {v0, v1, v2}, Lfls;->c(JZ)V

    .line 1049
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "action_user_org_homepage_reddot_changed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method
