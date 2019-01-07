.class public final Latn$2;
.super Latl;
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
        "Latl",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Latn;


# direct methods
.method public constructor <init>(Latn;Lcmi;)V
    .locals 0
    .param p1, "this$0"    # Latn;
    .param p2, "callback"    # Lcmi;

    .prologue
    .line 252
    iput-object p1, p0, Latn$2;->a:Latn;

    invoke-direct {p0, p2}, Latl;-><init>(Lcmi;)V

    return-void
.end method
