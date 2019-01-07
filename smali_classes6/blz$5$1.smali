.class final Lblz$5$1;
.super Ljava/lang/Object;
.source "ApDeviceServiceHelper.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lblz$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lblz$5;


# direct methods
.method constructor <init>(Lblz$5;)V
    .locals 0
    .param p1, "this$0"    # Lblz$5;

    .prologue
    .line 187
    iput-object p1, p0, Lblz$5$1;->a:Lblz$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 187
    check-cast p1, Ljava/lang/String;

    .line 1190
    iget-object v0, p0, Lblz$5$1;->a:Lblz$5;

    iget-object v0, v0, Lblz$5;->b:Lcma;

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, Lblz$5$1;->a:Lblz$5;

    iget-object v0, v0, Lblz$5;->b:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 187
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-object v0, p0, Lblz$5$1;->a:Lblz$5;

    iget-object v0, v0, Lblz$5;->b:Lcma;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lblz$5$1;->a:Lblz$5;

    iget-object v0, v0, Lblz$5;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 198
    return-void
.end method
