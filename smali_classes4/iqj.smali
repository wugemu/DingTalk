.class public final Liqj;
.super Ljava/lang/Object;
.source "WebSocketSession.java"


# instance fields
.field public a:Ligm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Liqj;->a:Ligm;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Liqj;->a:Ligm;

    .line 1474
    iget-object v0, v0, Ligq;->c:Ligj;

    invoke-virtual {v0}, Ligj;->c()Z

    move-result v0

    .line 23
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
