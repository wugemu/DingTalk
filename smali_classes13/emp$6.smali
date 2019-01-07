.class public final Lemp$6;
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
.field final synthetic a:Lemp;


# direct methods
.method public constructor <init>(Lemp;)V
    .locals 0
    .param p1, "this$0"    # Lemp;

    .prologue
    .line 92
    iput-object p1, p0, Lemp$6;->a:Lemp;

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
    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lemp$6;->a:Lemp;

    .line 1014
    iput-object v1, v0, Lemp;->c:Landroid/content/Context;

    .line 96
    iget-object v0, p0, Lemp$6;->a:Lemp;

    .line 2014
    iput-object v1, v0, Lemp;->d:Lemp$a;

    .line 97
    return-void
.end method
