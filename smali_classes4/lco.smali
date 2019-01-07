.class public Llco;
.super Llcn;
.source "BlockQuote.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Llcn;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lldk;)V
    .locals 0
    .param p1, "visitor"    # Lldk;

    .prologue
    .line 7
    invoke-interface {p1, p0}, Lldk;->a(Llco;)V

    .line 8
    return-void
.end method
