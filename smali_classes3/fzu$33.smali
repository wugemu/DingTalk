.class final Lfzu$33;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu;->a(Landroid/content/Context;IJLjava/lang/String;JJJZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J

.field final synthetic e:J

.field final synthetic f:Z

.field final synthetic g:J

.field final synthetic h:I


# direct methods
.method constructor <init>(JILjava/lang/String;JJZJI)V
    .locals 1

    .prologue
    .line 3073
    iput-wide p1, p0, Lfzu$33;->a:J

    iput p3, p0, Lfzu$33;->b:I

    iput-object p4, p0, Lfzu$33;->c:Ljava/lang/String;

    iput-wide p5, p0, Lfzu$33;->d:J

    iput-wide p7, p0, Lfzu$33;->e:J

    iput-boolean p9, p0, Lfzu$33;->f:Z

    iput-wide p10, p0, Lfzu$33;->g:J

    iput p12, p0, Lfzu$33;->h:I

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
    .line 3076
    const-string/jumbo v0, "space_org_id"

    iget-wide v2, p0, Lfzu$33;->a:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3077
    const-string/jumbo v0, "space_folder_type_key"

    iget v1, p0, Lfzu$33;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3078
    const-string/jumbo v0, "space_org_name"

    iget-object v1, p0, Lfzu$33;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3079
    const-string/jumbo v0, "public_space_id"

    iget-wide v2, p0, Lfzu$33;->d:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3080
    const-string/jumbo v0, "space_capacity_used"

    iget-wide v2, p0, Lfzu$33;->e:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3081
    const-string/jumbo v0, "is_space_admin"

    iget-boolean v1, p0, Lfzu$33;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3082
    const-string/jumbo v0, "space_folder_modified_time"

    iget-wide v2, p0, Lfzu$33;->g:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3083
    const-string/jumbo v0, "space_from_falg"

    iget v1, p0, Lfzu$33;->h:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3084
    return-object p1
.end method
