.class final Lbpw$4;
.super Ljava/lang/Object;
.source "LoadModel.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbpw;->a(Landroid/app/Activity;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(JLandroid/app/Activity;)V
    .locals 1

    .prologue
    .line 259
    iput-wide p1, p0, Lbpw$4;->a:J

    iput-object p3, p0, Lbpw$4;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 259
    .line 1263
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "circle_on_delete_post"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1264
    const-string/jumbo v1, "circle_on_delete_post"

    iget-wide v2, p0, Lbpw$4;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1265
    iget-object v1, p0, Lbpw$4;->b:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1267
    new-instance v0, Lbpw$4$1;

    invoke-direct {v0, p0}, Lbpw$4$1;-><init>(Lbpw$4;)V

    invoke-static {v0}, Lbpa;->a(Ljava/lang/Runnable;)V

    .line 259
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 289
    if-eqz p1, :cond_1

    move-object v0, p1

    .line 290
    .local v0, "c":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_2

    move-object v2, p2

    .line 291
    .local v2, "r":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "readNotice error, code = "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ",reason = "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v2, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "log":Ljava/lang/String;
    invoke-static {v1}, Lbqh;->a(Ljava/lang/String;)V

    .line 293
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 294
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_0
    return-void

    .line 289
    .end local v0    # "c":Ljava/lang/String;
    .end local v1    # "log":Ljava/lang/String;
    .end local v2    # "r":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 290
    .restart local v0    # "c":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, ""

    goto :goto_1
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 285
    return-void
.end method