.class public Llct;
.super Llcn;
.source "FencedCodeBlock.java"


# instance fields
.field public a:C

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Llcn;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lldk;)V
    .locals 0
    .param p1, "visitor"    # Lldk;

    .prologue
    .line 14
    invoke-interface {p1, p0}, Lldk;->a(Llct;)V

    .line 15
    return-void
.end method
