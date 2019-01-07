.class public Llcv;
.super Llcn;
.source "Heading.java"


# instance fields
.field public a:I


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
    .line 9
    invoke-interface {p1, p0}, Lldk;->a(Llcv;)V

    .line 10
    return-void
.end method
