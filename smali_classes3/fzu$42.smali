.class final Lfzu$42;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:Z

.field final synthetic f:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JJZLjava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 3294
    iput-object p1, p0, Lfzu$42;->a:Ljava/lang/String;

    iput-object p2, p0, Lfzu$42;->b:Ljava/lang/String;

    iput-wide p3, p0, Lfzu$42;->c:J

    iput-wide p5, p0, Lfzu$42;->d:J

    iput-boolean p7, p0, Lfzu$42;->e:Z

    iput-object p8, p0, Lfzu$42;->f:Ljava/util/ArrayList;

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
    .line 3297
    const-string/jumbo v0, "space_id"

    iget-object v1, p0, Lfzu$42;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3298
    const-string/jumbo v0, "space_category_current_folderId"

    iget-object v1, p0, Lfzu$42;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3299
    const-string/jumbo v0, "space_org_id"

    iget-wide v2, p0, Lfzu$42;->c:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3300
    const-string/jumbo v0, "intent_key_acl_type"

    iget-wide v2, p0, Lfzu$42;->d:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3301
    const-string/jumbo v0, "intent_key_acl_member_can_edit"

    iget-boolean v1, p0, Lfzu$42;->e:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3302
    const-string/jumbo v0, "intent_key_acl_add_member_types"

    iget-object v1, p0, Lfzu$42;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 3304
    return-object p1
.end method
