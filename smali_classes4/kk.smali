.class public final Lkk;
.super Ljava/lang/Object;
.source "DispatchEvent.java"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "extraObject"    # Ljava/lang/Object;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lkk;->a:I

    .line 16
    iput-object p2, p0, Lkk;->b:Ljava/lang/Object;

    .line 17
    return-void
.end method
