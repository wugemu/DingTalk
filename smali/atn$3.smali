.class public final Latn$3;
.super Lcmi;
.source "CalendarDataSourceRemote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Latn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Latn;


# direct methods
.method public constructor <init>(Latn;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Latn;

    .prologue
    .line 268
    iput-object p1, p0, Latn$3;->b:Latn;

    iput-object p2, p0, Latn$3;->a:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 278
    iget-object v0, p0, Latn$3;->a:Lcma;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Latn$3;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_0
    const-string/jumbo v0, "checkCalendar failed"

    invoke-static {v0, p1, p2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 268
    .line 1271
    iget-object v0, p0, Latn$3;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1272
    iget-object v0, p0, Latn$3;->a:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 268
    :cond_0
    return-void
.end method
