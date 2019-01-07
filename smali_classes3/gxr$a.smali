.class public final Lgxr$a;
.super Ljava/lang/Object;
.source "DefaultJSONParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgxr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Lgya;

.field final b:Ljava/lang/String;

.field public c:Lgyi;

.field public d:Lgya;


# direct methods
.method public constructor <init>(Lgya;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Lgya;
    .param p2, "referenceValue"    # Ljava/lang/String;

    .prologue
    .line 1553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1554
    iput-object p1, p0, Lgxr$a;->a:Lgya;

    .line 1555
    iput-object p2, p0, Lgxr$a;->b:Ljava/lang/String;

    .line 1556
    return-void
.end method
