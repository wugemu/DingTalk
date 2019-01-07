.class public Llcs;
.super Lldd;
.source "Emphasis.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lldd;-><init>()V

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Lldd;-><init>()V

    .line 11
    iput-object p1, p0, Llcs;->a:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lldk;)V
    .locals 0
    .param p1, "visitor"    # Lldk;

    .prologue
    .line 30
    invoke-interface {p1, p0}, Lldk;->a(Llcs;)V

    .line 31
    return-void
.end method
