.class public final Lapx;
.super Ljava/lang/Object;
.source "HolidayArrangementDataCenter.java"


# instance fields
.field public a:Lauf;

.field public b:Lato;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Laug;

    invoke-direct {v0}, Laug;-><init>()V

    iput-object v0, p0, Lapx;->a:Lauf;

    .line 28
    new-instance v0, Lato;

    invoke-direct {v0}, Lato;-><init>()V

    iput-object v0, p0, Lapx;->b:Lato;

    .line 29
    return-void
.end method
