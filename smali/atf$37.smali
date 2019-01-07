.class public final Latf$37;
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
.field final synthetic a:Latf;


# direct methods
.method public constructor <init>(Latf;)V
    .locals 0
    .param p1, "this$0"    # Latf;

    .prologue
    .line 224
    iput-object p1, p0, Latf$37;->a:Latf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 227
    iget-object v0, p0, Latf$37;->a:Latf;

    invoke-static {v0}, Latf;->a(Latf;)Lapw;

    move-result-object v0

    .line 1528
    iget-object v0, v0, Lapw;->d:Larn;

    .line 2121
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "[TooLong2Manager]makeUpCalendar"

    aput-object v2, v1, v3

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 2123
    invoke-static {}, Larl;->a()Larl;

    invoke-static {}, Larl;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Larn;->a(Ljava/lang/String;Z)V

    .line 2124
    invoke-static {}, Larl;->a()Larl;

    invoke-static {}, Larl;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Larn;->a(Ljava/lang/String;Z)V

    .line 2126
    new-instance v1, Larn$6;

    invoke-direct {v1, v0}, Larn$6;-><init>(Larn;)V

    .line 2137
    invoke-static {}, Larl;->a()Larl;

    move-result-object v0

    .line 2142
    invoke-static {}, Latf;->a()Latf;

    move-result-object v2

    new-instance v3, Larl$11;

    invoke-direct {v3, v0, v1}, Larl$11;-><init>(Larl;Lapv;)V

    invoke-virtual {v2, v3}, Latf;->b(Ljava/lang/Runnable;)V

    .line 228
    return-void
.end method
