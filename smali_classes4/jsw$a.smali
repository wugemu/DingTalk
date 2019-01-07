.class public final Ljsw$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljsw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljuc;

.field final synthetic c:Ljsw;


# direct methods
.method public constructor <init>(Ljsw;ILjuc;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Ljsw$a;->c:Ljsw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput p2, p0, Ljsw$a;->a:I

    .line 411
    iput-object p3, p0, Ljsw$a;->b:Ljuc;

    .line 412
    return-void
.end method
