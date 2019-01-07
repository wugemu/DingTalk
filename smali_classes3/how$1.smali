.class final Lhow$1;
.super Ljava/lang/Object;
.source "RuntimeNavigatorUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhow;->a(Landroid/content/Context;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Z)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lhow$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lhow$1;->b:Landroid/os/Bundle;

    iput-boolean p3, p0, Lhow$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 88
    iget-object v1, p0, Lhow$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lhow$1;->b:Landroid/os/Bundle;

    iget-boolean v0, p0, Lhow$1;->c:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x10000000

    .line 1027
    :goto_0
    invoke-static {v1, v2, v0}, Lhow;->a(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 89
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
