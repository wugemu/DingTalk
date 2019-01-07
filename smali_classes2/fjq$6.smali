.class final Lfjq$6;
.super Ljava/lang/Object;
.source "LocalContactViewHolder.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfjq;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lfjq;


# direct methods
.method constructor <init>(Lfjq;J)V
    .locals 0
    .param p1, "this$0"    # Lfjq;

    .prologue
    .line 433
    iput-object p1, p0, Lfjq$6;->b:Lfjq;

    iput-wide p2, p0, Lfjq$6;->a:J

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
    .line 436
    const-string/jumbo v0, "user_id"

    iget-wide v2, p0, Lfjq$6;->a:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 437
    return-object p1
.end method
