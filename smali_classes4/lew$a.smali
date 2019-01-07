.class public final Llew$a;
.super Llew;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Llew;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lleh;Lleh;)Z
    .locals 1
    .param p1, "root"    # Lleh;
    .param p2, "element"    # Lleh;

    .prologue
    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    const-string/jumbo v0, "*"

    return-object v0
.end method
