.class final Lawe$2;
.super Ljava/lang/Object;
.source "PopupDisplayAsyncObjectUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lawe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lasc;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lasc;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lawe$2;->a:Landroid/app/Activity;

    iput-object p2, p0, Lawe$2;->b:Lasc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 431
    const/4 v0, 0x0

    invoke-static {v0}, Lavw;->f(Z)V

    .line 432
    iget-object v0, p0, Lawe$2;->a:Landroid/app/Activity;

    iget-object v1, p0, Lawe$2;->b:Lasc;

    .line 433
    invoke-virtual {v1}, Lasc;->b()J

    move-result-wide v1

    iget-object v3, p0, Lawe$2;->b:Lasc;

    .line 1188
    iget-object v3, v3, Lasc;->n:Ljava/lang/String;

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lawj;->b(J)J

    move-result-wide v4

    .line 432
    invoke-static/range {v0 .. v5}, Lavr;->a(Landroid/content/Context;JLjava/lang/String;J)V

    .line 436
    return-void
.end method
