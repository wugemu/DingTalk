.class public final Lfjl$7;
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
.field final synthetic a:J

.field final synthetic b:Lfjl;


# direct methods
.method public constructor <init>(Lfjl;J)V
    .locals 0
    .param p1, "this$0"    # Lfjl;

    .prologue
    .line 140
    iput-object p1, p0, Lfjl$7;->b:Lfjl;

    iput-wide p2, p0, Lfjl$7;->a:J

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
    .line 143
    const-string/jumbo v0, "display_enterprise_oid"

    iget-wide v2, p0, Lfjl$7;->a:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 144
    return-object p1
.end method
