.class public final Lemp$7;
.super Ljava/lang/Object;
.source "ScanHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lemp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lemp$a;

.field final synthetic c:Lemp;


# direct methods
.method public constructor <init>(Lemp;Landroid/content/Context;Lemp$a;)V
    .locals 0
    .param p1, "this$0"    # Lemp;

    .prologue
    .line 102
    iput-object p1, p0, Lemp$7;->c:Lemp;

    iput-object p2, p0, Lemp$7;->a:Landroid/content/Context;

    iput-object p3, p0, Lemp$7;->b:Lemp$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 105
    iget-object v0, p0, Lemp$7;->c:Lemp;

    iget-object v1, p0, Lemp$7;->a:Landroid/content/Context;

    .line 1014
    iput-object v1, v0, Lemp;->c:Landroid/content/Context;

    .line 106
    iget-object v0, p0, Lemp$7;->c:Lemp;

    iget-object v1, p0, Lemp$7;->b:Lemp$a;

    .line 2014
    iput-object v1, v0, Lemp;->d:Lemp$a;

    .line 107
    return-void
.end method
