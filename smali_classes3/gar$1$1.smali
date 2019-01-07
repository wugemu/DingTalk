.class final Lgar$1$1;
.super Ljava/lang/Object;
.source "FavoriteNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgar$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgar$1;


# direct methods
.method constructor <init>(Lgar$1;)V
    .locals 0
    .param p1, "this$0"    # Lgar$1;

    .prologue
    .line 113
    iput-object p1, p0, Lgar$1$1;->a:Lgar$1;

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
    .line 117
    const-string/jumbo v0, "fav_id"

    iget-object v1, p0, Lgar$1$1;->a:Lgar$1;

    iget-wide v2, v1, Lgar$1;->b:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 118
    const-string/jumbo v0, "org_id"

    iget-object v1, p0, Lgar$1$1;->a:Lgar$1;

    iget-wide v2, v1, Lgar$1;->c:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 119
    return-object p1
.end method
