.class public final Latf$38;
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
    .line 233
    iput-object p1, p0, Latf$38;->c:Latf;

    iput-object p2, p0, Latf$38;->a:Ljava/lang/String;

    iput-boolean p3, p0, Latf$38;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 236
    iget-object v0, p0, Latf$38;->c:Latf;

    invoke-static {v0}, Latf;->a(Latf;)Lapw;

    move-result-object v0

    iget-object v1, p0, Latf$38;->a:Ljava/lang/String;

    iget-boolean v2, p0, Latf$38;->b:Z

    .line 1535
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1539
    invoke-static {}, Larl;->a()Larl;

    move-result-object v3

    .line 2230
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2234
    invoke-static {}, Latf;->a()Latf;

    move-result-object v4

    new-instance v5, Larl$15;

    invoke-direct {v5, v3, v1, v2}, Larl$15;-><init>(Larl;Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Latf;->b(Ljava/lang/Runnable;)V

    .line 1541
    :cond_0
    if-eqz v2, :cond_2

    .line 1542
    iget-object v0, v0, Lapw;->d:Larn;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Larn;->a(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void

    .line 1544
    :cond_2
    invoke-static {}, Lavh;->a()V

    goto :goto_0
.end method
