.class public Llde;
.super Lldb;
.source "OrderedList.java"


# instance fields
.field public a:I

.field public c:C


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lldb;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lldk;)V
    .locals 0
    .param p1, "visitor"    # Lldk;

    .prologue
    .line 10
    invoke-interface {p1, p0}, Lldk;->a(Llde;)V

    .line 11
    return-void
.end method
