.class public final Lhoo$a;
.super Ljava/lang/Object;
.source "NavViewDropMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhoo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "icon"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lhoo$a;->a:I

    .line 23
    iput-object p2, p0, Lhoo$a;->b:Ljava/lang/String;

    .line 24
    iput p3, p0, Lhoo$a;->c:I

    .line 25
    return-void
.end method
