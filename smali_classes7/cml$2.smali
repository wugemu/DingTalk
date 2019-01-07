.class final Lcml$2;
.super Ljava/lang/Object;
.source "SafeModeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcml$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 72
    iget-object v0, p0, Lcml$2;->a:Landroid/content/Context;

    const-string/jumbo v1, "launch_crash_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcml;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 73
    return-void
.end method
