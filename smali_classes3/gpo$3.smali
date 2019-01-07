.class final Lgpo$3;
.super Ljava/lang/Object;
.source "CSpaceTokenRefreshUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgpo;->a(ZLgqq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lgqq;


# direct methods
.method constructor <init>(ZLgqq;)V
    .locals 0

    .prologue
    .line 228
    iput-boolean p1, p0, Lgpo$3;->a:Z

    iput-object p2, p0, Lgpo$3;->b:Lgqq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 231
    iget-boolean v0, p0, Lgpo$3;->a:Z

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lgpo$3;->b:Lgqq;

    invoke-virtual {v0, v3}, Lgqq;->a(Ljava/lang/Void;)V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lgpo$3;->b:Lgqq;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lfzs$h;->dt_cspace_login_token_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lgqq;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
