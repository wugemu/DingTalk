.class final Ljcr$1;
.super Ljava/lang/Object;
.source "StatisticsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljcr;->a(Ljcq;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljcq;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljcq;)V
    .locals 0

    iput-object p1, p0, Ljcr$1;->a:Landroid/content/Context;

    iput-object p2, p0, Ljcr$1;->b:Ljcq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    iget-object v0, p0, Ljcr$1;->a:Landroid/content/Context;

    sget-object v1, Ljeo;->g:Ljava/lang/String;

    iget-object v2, p0, Ljcr$1;->b:Ljcq;

    invoke-virtual {v2}, Ljcq;->a()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljcs;->a(Landroid/content/Context;Ljava/lang/String;[B)V

    return-void
.end method
