.class public final Llew$v;
.super Llew$ab;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "v"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 384
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Llew$ab;-><init>(II)V

    .line 385
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    const-string/jumbo v0, ":first-of-type"

    return-object v0
.end method
