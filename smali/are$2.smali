.class public final Lare$2;
.super Ljava/lang/Object;
.source "AliMailFolderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapv;

.field final synthetic b:Lare;


# direct methods
.method public constructor <init>(Lare;Lapv;)V
    .locals 0
    .param p1, "this$0"    # Lare;

    .prologue
    .line 95
    iput-object p1, p0, Lare$2;->b:Lare;

    iput-object p2, p0, Lare$2;->a:Lapv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 98
    iget-object v0, p0, Lare$2;->b:Lare;

    invoke-static {v0}, Lare;->a(Lare;)V

    .line 99
    iget-object v0, p0, Lare$2;->a:Lapv;

    iget-object v1, p0, Lare$2;->b:Lare;

    invoke-static {v1}, Lare;->c(Lare;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lawg;->a(Lapv;Ljava/lang/Object;)V

    .line 100
    return-void
.end method
