.class public final Lawb$2;
.super Ljava/lang/Object;
.source "FloatDisplayAsyncObjectUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lawb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Lasc;


# direct methods
.method public constructor <init>(Lasc;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lawb$2;->a:Lasc;

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
    .line 430
    const/4 v0, 0x1

    invoke-static {v0}, Lavw;->f(Z)V

    .line 1026
    invoke-static {}, Lawb;->a()Landroid/content/Context;

    move-result-object v0

    .line 431
    iget-object v1, p0, Lawb$2;->a:Lasc;

    .line 432
    invoke-virtual {v1}, Lasc;->b()J

    move-result-wide v1

    iget-object v3, p0, Lawb$2;->a:Lasc;

    .line 1188
    iget-object v3, v3, Lasc;->n:Ljava/lang/String;

    .line 434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lawj;->b(J)J

    move-result-wide v4

    .line 431
    invoke-static/range {v0 .. v5}, Lavr;->a(Landroid/content/Context;JLjava/lang/String;J)V

    .line 435
    return-void
.end method
