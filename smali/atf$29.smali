.class public final Latf$29;
.super Ljava/lang/Object;
.source "CalendarDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Latf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Latf;


# direct methods
.method public constructor <init>(Latf;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Latf;

    .prologue
    .line 574
    iput-object p1, p0, Latf$29;->c:Latf;

    iput-object p2, p0, Latf$29;->a:Ljava/lang/String;

    iput-boolean p3, p0, Latf$29;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 577
    iget-object v0, p0, Latf$29;->c:Latf;

    invoke-static {v0}, Latf;->a(Latf;)Lapw;

    iget-object v0, p0, Latf$29;->a:Ljava/lang/String;

    iget-boolean v1, p0, Latf$29;->b:Z

    .line 2132
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2136
    invoke-static {}, Lare;->a()Lare;

    move-result-object v2

    .line 3106
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3107
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[AliMailFolderManager]onSelectingFolder folderId="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 3108
    :cond_0
    :goto_0
    return-void

    .line 3111
    :cond_1
    invoke-static {}, Latf;->a()Latf;

    move-result-object v3

    new-instance v4, Lare$3;

    invoke-direct {v4, v2, v0, v1}, Lare$3;-><init>(Lare;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Latf;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
