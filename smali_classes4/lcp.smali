.class public Llcp;
.super Lldb;
.source "BulletList.java"


# instance fields
.field public a:C


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
    .line 9
    invoke-interface {p1, p0}, Lldk;->a(Llcp;)V

    .line 10
    return-void
.end method
