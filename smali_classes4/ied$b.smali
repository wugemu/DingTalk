.class public final Lied$b;
.super Ljava/lang/Object;
.source "IAVService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lied;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "errCode"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput p1, p0, Lied$b;->a:I

    .line 90
    iput-object p2, p0, Lied$b;->b:Ljava/lang/String;

    .line 91
    const-string/jumbo v0, ""

    iput-object v0, p0, Lied$b;->c:Ljava/lang/String;

    .line 92
    return-void
.end method
