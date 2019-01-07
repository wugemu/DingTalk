.class public abstract Lery;
.super Ljava/lang/Object;
.source "ApiEventListener2Compat.java"

# interfaces
.implements Lcmb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcmb",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected b:Lesa;


# direct methods
.method public constructor <init>(Leqq;Ljava/lang/String;Leoe;)V
    .locals 1
    .param p1, "baseSearchPresenter"    # Leqq;
    .param p2, "keyWord"    # Ljava/lang/String;
    .param p3, "queryLog"    # Leoe;

    .prologue
    .line 30
    .local p0, "this":Lery;, "Lery<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lesa;

    invoke-direct {v0, p1, p2, p3}, Lesa;-><init>(Leqq;Ljava/lang/String;Leoe;)V

    iput-object v0, p0, Lery;->b:Lesa;

    .line 32
    return-void
.end method
