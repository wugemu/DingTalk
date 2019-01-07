.class final Ldvw$9$1;
.super Ljava/lang/Object;
.source "OneBoxCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldvw$9;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ldvw$9;


# direct methods
.method constructor <init>(Ldvw$9;J)V
    .locals 0
    .param p1, "this$1"    # Ldvw$9;

    .prologue
    .line 830
    iput-object p1, p0, Ldvw$9$1;->b:Ldvw$9;

    iput-wide p2, p0, Ldvw$9$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 833
    iget-object v0, p0, Ldvw$9$1;->b:Ldvw$9;

    iget-object v0, v0, Ldvw$9;->a:Ldvw;

    invoke-static {v0}, Ldvw;->b(Ldvw;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 837
    :goto_0
    return-void

    .line 836
    :cond_0
    iget-object v0, p0, Ldvw$9$1;->b:Ldvw$9;

    iget-object v0, v0, Ldvw$9;->a:Ldvw;

    iget-wide v2, p0, Ldvw$9$1;->a:J

    invoke-static {v0, v2, v3}, Ldvw;->a(Ldvw;J)V

    goto :goto_0
.end method
