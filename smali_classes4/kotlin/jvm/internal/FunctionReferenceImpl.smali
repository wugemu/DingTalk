.class public Lkotlin/jvm/internal/FunctionReferenceImpl;
.super Lkotlin/jvm/internal/FunctionReference;
.source "FunctionReferenceImpl.java"


# instance fields
.field private final name:Ljava/lang/String;

.field private final owner:Lkjb;

.field private final signature:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILkjb;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "arity"    # I
    .param p2, "owner"    # Lkjb;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/FunctionReference;-><init>(I)V

    .line 28
    iput-object p2, p0, Lkotlin/jvm/internal/FunctionReferenceImpl;->owner:Lkjb;

    .line 29
    iput-object p3, p0, Lkotlin/jvm/internal/FunctionReferenceImpl;->name:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lkotlin/jvm/internal/FunctionReferenceImpl;->signature:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lkotlin/jvm/internal/FunctionReferenceImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lkjb;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lkotlin/jvm/internal/FunctionReferenceImpl;->owner:Lkjb;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lkotlin/jvm/internal/FunctionReferenceImpl;->signature:Ljava/lang/String;

    return-object v0
.end method
