.class public final Lfjl$6;
.super Ljava/lang/Object;
.source "UserNavigatorImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfjl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:I

.field final synthetic e:Lfjl;


# direct methods
.method public constructor <init>(Lfjl;Ljava/lang/String;JJI)V
    .locals 1
    .param p1, "this$0"    # Lfjl;

    .prologue
    .line 126
    iput-object p1, p0, Lfjl$6;->e:Lfjl;

    iput-object p2, p0, Lfjl$6;->a:Ljava/lang/String;

    iput-wide p3, p0, Lfjl$6;->b:J

    iput-wide p5, p0, Lfjl$6;->c:J

    iput p7, p0, Lfjl$6;->d:I

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
    .line 129
    const-string/jumbo v0, "bread_node_name"

    iget-object v1, p0, Lfjl$6;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string/jumbo v0, "display_enterprise_oid"

    iget-wide v2, p0, Lfjl$6;->b:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 131
    const-string/jumbo v0, "display_department_oid"

    iget-wide v2, p0, Lfjl$6;->c:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 132
    const-string/jumbo v0, "key_org_auth_level"

    iget v1, p0, Lfjl$6;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    return-object p1
.end method
