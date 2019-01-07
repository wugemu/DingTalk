.class public Lglr$f;
.super Ljava/lang/Object;
.source "CSpaceAuthManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lglr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field protected c:Ljava/lang/String;

.field protected d:J

.field protected e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 67
    iput-wide p1, p0, Lglr$f;->d:J

    .line 68
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "convId"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lglr$f;->c:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .param p1, "preview"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lglr$f;->e:Z

    .line 76
    return-void
.end method
