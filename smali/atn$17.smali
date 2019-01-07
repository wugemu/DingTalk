.class final Latn$17;
.super Latl;
.source "CalendarDataSourceRemote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Latn;->a(Lasp;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Latl",
        "<",
        "Laqf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Latn;


# direct methods
.method constructor <init>(Latn;Lcmi;)V
    .locals 0
    .param p1, "this$0"    # Latn;
    .param p2, "callback"    # Lcmi;

    .prologue
    .line 501
    iput-object p1, p0, Latn$17;->a:Latn;

    invoke-direct {p0, p2}, Latl;-><init>(Lcmi;)V

    return-void
.end method
