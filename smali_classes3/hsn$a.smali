.class final Lhsn$a;
.super Ljava/lang/Object;
.source "TextAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhsn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field final synthetic e:Lhsn;


# direct methods
.method public constructor <init>(Lhsn;FFFF)V
    .locals 0
    .param p2, "startX"    # F
    .param p3, "startY"    # F
    .param p4, "endX"    # F
    .param p5, "endY"    # F

    .prologue
    .line 94
    iput-object p1, p0, Lhsn$a;->e:Lhsn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p2, p0, Lhsn$a;->a:F

    .line 96
    iput p3, p0, Lhsn$a;->b:F

    .line 97
    iput p4, p0, Lhsn$a;->c:F

    .line 98
    iput p5, p0, Lhsn$a;->d:F

    .line 99
    return-void
.end method
